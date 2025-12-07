void tadfu_disconnected_callback(void *a1)
{
  v2 = _AMRTADModeDeviceCreate(kCFAllocatorDefault, a1, 0);
  if (v2)
  {
    v3 = v2;
    if (xmmword_1000C87F8)
    {
      xmmword_1000C87F8(v2, qword_1000C8818);
    }

    _AMRTADModeDeviceDisconnected(v3);

    CFRelease(v3);
  }

  else
  {

    libDFU_release(a1);
  }
}

uint64_t _thr_AMRestoreRegisterForNotifications(_DWORD *a1)
{
  libDFU_setDispatchQueueForDiscovery(qword_1000C8810);
  result = AMRRestoreInitializeTADNotificationsExternal(tadfu_discovery_callback, tadfu_disconnected_callback);
  *a1 = result;
  if (!result)
  {
    result = _AMRestoreInitializeNotifications(&xmmword_1000C87E8, v3);
    *a1 = result;
    if (!result)
    {
      byte_1000C8838 = 1;
    }
  }

  return result;
}

uint64_t AMRestoreRegisterForDeviceNotifications(uint64_t (*a1)(void, void), uint64_t (*a2)(void, void), uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  context = 0;
  _AMRestoreLoadAndCacheIOUSBLibBundle();
  pthread_mutex_lock(&stru_1000C8320);
  xmmword_1000C87E8 = a1;
  *(&xmmword_1000C87E8 + 1) = a2;
  xmmword_1000C87F8 = a3;
  *(&xmmword_1000C87F8 + 1) = a4;
  qword_1000C8808 = a5;
  qword_1000C8818 = a6;
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.purplerestore.device_notification", v12);
  qword_1000C8810 = v13;
  if ((byte_1000C8838 & 1) == 0)
  {
    dispatch_sync_f(v13, &context, _thr_AMRestoreRegisterForNotifications);
    dispatch_sync_f(qword_1000C8810, 0, function_does_nothing);
  }

  pthread_mutex_unlock(&stru_1000C8320);
  return context;
}

uint64_t AMRestoreUnregisterForDeviceNotifications()
{
  pthread_mutex_lock(&stru_1000C8320);
  if (byte_1000C8838 == 1)
  {
    v0 = _AMRestoreUninitializeNotifications();
    if (!v0)
    {
      dispatch_sync_f(qword_1000C8810, 0, function_does_nothing);
      dispatch_release(qword_1000C8810);
      qword_1000C8818 = 0;
      *&xmmword_1000C87F8 = 0u;
      *&qword_1000C8808 = 0u;
      *&xmmword_1000C87E8 = 0u;
      byte_1000C8838 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  pthread_mutex_unlock(&stru_1000C8320);
  return v0;
}

CFMutableStringRef _AMRestoreCopyTargetForBoardConfig(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a1);
  CFStringLowercase(MutableCopy, 0);
  if (CFStringHasSuffix(MutableCopy, @"ap") == 1)
  {
    v5.location = Length - 2;
    v4 = MutableCopy;
    v5.length = 2;
  }

  else
  {
    if (CFStringHasSuffix(MutableCopy, @"dev") != 1)
    {
      AMRLog(4, @"unable to convert '%@' to target", v6, v7, v8, v9, v10, v11, a1);
      return MutableCopy;
    }

    v5.location = Length - 3;
    v4 = MutableCopy;
    v5.length = 3;
  }

  CFStringDelete(v4, v5);
  return MutableCopy;
}

BOOL _AMRUSBDeviceGetIBFL(void *a1, _DWORD *a2)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  FirmwareInfo = _AMRUSBDeviceGetFirmwareInfo(a1, &v13, 0);
  if (FirmwareInfo)
  {
    AMRLog(3, @"unable to get firmware info from device: %d", v4, v5, v6, v7, v8, v9, FirmwareInfo);
  }

  v10 = BYTE7(v19);
  if (BYTE7(v19))
  {
    *a2 = HIDWORD(v14);
  }

  v11 = v10 != 0;
  _AMRestoreDestroyDeviceInfo(&v13);
  return v11;
}

uint64_t AMRestoreOptionsApplyMacOSChangesIfNeeded(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"MacOSVariantPresent");
  v3 = kCFBooleanTrue;
  if (Value)
  {
    v4 = Value == kCFBooleanTrue;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFDictionaryGetValue(a1, @"MacOSSwapPerformed");
  if (v6)
  {
    if (v6 != kCFBooleanFalse)
    {
      return 0;
    }
  }

  v129 = v5;
  AMRLog(6, @"Performing MacOS restore changes.", v7, v8, v9, v10, v11, v12);
  v13 = CFDictionaryGetValue(a1, @"BundleOverrides");
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  for (i = 0; i != 160; i += 8)
  {
    v16 = *(&off_1000AAEF0 + i);
    v17 = CFDictionaryGetValue(v14, v16);
    v18 = *(&off_1000AAF90 + i);
    v19 = CFDictionaryGetValue(v14, v18);
    v20 = v19;
    if (!v17)
    {
      if (!v19)
      {
        continue;
      }

      CFRetain(v19);
      CFDictionaryRemoveValue(v14, v18);
      AMRLog(6, @"Removed %@ from overides.%@.", v27, v28, v29, v30, v31, v32, v20, v18, v128);
      goto LABEL_15;
    }

    CFRetain(v17);
    if (v20)
    {
      CFRetain(v20);
      CFDictionarySetValue(v14, v18, v17);
      AMRLog(6, @"Added %@ to overides.%@ from overrides.%@.", v21, v22, v23, v24, v25, v26, v17, v18, v16);
LABEL_15:
      CFDictionarySetValue(v14, v16, v20);
      AMRLog(6, @"Added %@ to overides.%@ from overrides.%@.", v33, v34, v35, v36, v37, v38, v20, v16, v18);
      if (v17)
      {
        CFRelease(v17);
      }

      v17 = v20;
      goto LABEL_19;
    }

    CFDictionarySetValue(v14, v18, v17);
    AMRLog(6, @"Added %@ to overides.%@ from overrides.%@.", v39, v40, v41, v42, v43, v44, v17, v18, v16);
    CFDictionaryRemoveValue(v14, v16);
    AMRLog(6, @"Removed %@ from overides.%@.", v45, v46, v47, v48, v49, v50, v17, v16);
LABEL_19:
    CFRelease(v17);
  }

  v51 = CFDictionaryGetValue(v14, @"RecoveryOSBundlePath");
  v3 = kCFBooleanTrue;
  if (v51)
  {
    v52 = v51;
    v53 = CFDictionaryGetValue(a1, @"RestoreBundlePath");
    CFRetain(v52);
    CFRetain(v53);
    CFDictionarySetValue(v14, @"RecoveryOSBundlePath", v53);
    CFDictionarySetValue(a1, @"RestoreBundlePath", v52);
    CFRelease(v52);
    CFRelease(v53);
    AMRLog(6, @"Swaped paths --> to %@ = %@ and %@ = %@.", v54, v55, v56, v57, v58, v59, @"RecoveryOSBundlePath", v53, @"RestoreBundlePath", v52);
  }

LABEL_23:
  v60 = CFDictionaryGetValue(a1, @"RootToInstall");
  v61 = CFDictionaryGetValue(a1, @"OverlayRootsToInstall");
  v62 = CFDictionaryGetValue(a1, @"RecoveryOSOverlayRootsToInstall");
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v64 = Mutable;
  if (v60)
  {
    CFArrayAppendValue(Mutable, v60);
  }

  if (v61 && CFArrayGetCount(v61) >= 1)
  {
    v130.length = CFArrayGetCount(v61);
    v130.location = 0;
    CFArrayAppendArray(v64, v61, v130);
  }

  CFDictionaryRemoveValue(a1, @"RootToInstall");
  CFDictionaryRemoveValue(a1, @"OverlayRootsToInstall");
  CFDictionaryRemoveValue(a1, @"RecoveryOSOverlayRootsToInstall");
  if (v62 && CFArrayGetCount(v62) >= 1)
  {
    v71 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    ValueAtIndex = CFArrayGetValueAtIndex(v62, 0);
    CFDictionaryAddValue(a1, @"RootToInstall", ValueAtIndex);
    v73 = CFArrayGetValueAtIndex(v62, 0);
    AMRLog(6, @"Added to %@ = %@.", v74, v75, v76, v77, v78, v79, @"RootToInstall", v73);
    v131.length = CFArrayGetCount(v62) - 1;
    v131.location = 1;
    CFArrayAppendArray(v71, v62, v131);
    if (CFArrayGetCount(v71) < 1)
    {
      AMRLog(6, @"No %@ to insert.", v80, v81, v82, v83, v84, v85, @"OverlayRootsToInstall", v125);
    }

    else
    {
      CFDictionarySetValue(a1, @"OverlayRootsToInstall", v71);
      v126 = CFArrayGetCount(v71) - 1;
      AMRLog(6, @"Updated %@ with %ld overlay roots.", v86, v87, v88, v89, v90, v91, @"OverlayRootsToInstall", v126);
    }

    v98 = v129;
    CFRelease(v71);
  }

  else
  {
    AMRLog(6, @"No %@ added.", v65, v66, v67, v68, v69, v70, @"RootToInstall");
    AMRLog(6, @"No %@ added.", v92, v93, v94, v95, v96, v97, @"OverlayRootsToInstall");
    v98 = v129;
  }

  if (CFArrayGetCount(v64) < 1)
  {
    AMRLog(6, @"No %@ added.", v99, v100, v101, v102, v103, v104, @"RecoveryOSOverlayRootsToInstall", v124);
  }

  else
  {
    CFDictionarySetValue(a1, @"RecoveryOSOverlayRootsToInstall", v64);
    Count = CFArrayGetCount(v64);
    AMRLog(6, @"Updated %@ with %ld overlay roots.", v105, v106, v107, v108, v109, v110, @"RecoveryOSOverlayRootsToInstall", Count);
  }

  CFRelease(v64);
  if (CFDictionaryGetValue(a1, @"RecoveryOSOnly") == v98)
  {
    CFDictionarySetValue(a1, @"InstallRecoveryOS", kCFBooleanFalse);
    AMRLog(6, @"Setting %@ to false.", v111, v112, v113, v114, v115, v116, @"InstallRecoveryOS");
  }

  CFDictionarySetValue(a1, @"RecoveryOSUnpack", v3);
  CFDictionarySetValue(a1, @"MacOSSwapPerformed", v3);
  AMRLog(6, @"Setting %@ to true.", v117, v118, v119, v120, v121, v122, @"MacOSSwapPerformed");
  return 0;
}

uint64_t AMGenericDeviceGetChipID(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == AMDFUModeDeviceGetTypeID())
  {

    return AMDFUModeDeviceGetChipID(a1);
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 == AMTADModeDeviceGetTypeID())
    {

      return AMTADModeDeviceGetChipID(a1);
    }

    else
    {
      v5 = CFGetTypeID(a1);
      if (v5 == AMRecoveryModeDeviceGetTypeID())
      {

        return AMRecoveryModeDeviceGetChipID(a1);
      }

      else
      {
        v6 = CFGetTypeID(a1);
        if (v6 == AMBootedModeDeviceGetTypeID())
        {

          return AMBootedModeDeviceGetChipID();
        }

        else
        {
          v7 = CFGetTypeID(a1);
          if (v7 == AMPortDFUModeDeviceGetTypeID())
          {

            return AMPortDFUModeDeviceGetChipID(a1, v8, v9, v10, v11, v12, v13, v14);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t AMGenericDeviceGetBoardID(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == AMDFUModeDeviceGetTypeID())
  {

    return AMDFUModeDeviceGetBoardID(a1);
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 == AMTADModeDeviceGetTypeID())
    {

      return AMTADModeDeviceGetBoardID(a1);
    }

    else
    {
      v5 = CFGetTypeID(a1);
      if (v5 == AMRecoveryModeDeviceGetTypeID())
      {

        return AMRecoveryModeDeviceGetBoardID(a1);
      }

      else
      {
        v6 = CFGetTypeID(a1);
        if (v6 == AMBootedModeDeviceGetTypeID())
        {

          return AMBootedModeDeviceGetBoardID();
        }

        else
        {
          v7 = CFGetTypeID(a1);
          if (v7 == AMPortDFUModeDeviceGetTypeID())
          {

            return AMPortDFUModeDeviceGetBoardID(a1, v8, v9, v10, v11, v12, v13, v14);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t AMGenericDeviceIsBootstrapOnly(const void *a1, const __CFDictionary *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == AMDFUModeDeviceGetTypeID())
  {

    return AMDFUModeDeviceIsBootstrapOnly(a1, a2);
  }

  else
  {
    v6 = CFGetTypeID(a1);
    if (v6 == AMTADModeDeviceGetTypeID())
    {

      return AMTADModeDeviceIsBootstrapOnly(a1, a2);
    }

    else
    {
      v7 = CFGetTypeID(a1);
      if (v7 == AMRecoveryModeDeviceGetTypeID())
      {

        return AMRecoveryModeDeviceIsBootstrapOnly(a1, a2);
      }

      else
      {
        v8 = CFGetTypeID(a1);
        if (v8 == AMBootedModeDeviceGetTypeID())
        {

          return AMBootedModeDeviceIsBootstrapOnly(a1, a2);
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t AMGenericDeviceGetProductionMode(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == AMDFUModeDeviceGetTypeID())
  {

    return AMDFUModeDeviceGetProductionMode(a1);
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 == AMTADModeDeviceGetTypeID())
    {

      return AMTADModeDeviceGetProductionMode(a1);
    }

    else
    {
      v5 = CFGetTypeID(a1);
      if (v5 == AMRecoveryModeDeviceGetTypeID())
      {

        return AMRecoveryModeDeviceGetProductionMode(a1);
      }

      else
      {
        v6 = CFGetTypeID(a1);
        if (v6 == AMBootedModeDeviceGetTypeID())
        {

          return AMBootedModeDeviceGetProductionMode();
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t sub_10001E75C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    dispatch_release(v3);
    *(*(a1 + 32) + 40) = 0;
    v2 = *(a1 + 32);
  }

  result = *(v2 + 36);
  if (result)
  {
    result = IOObjectRelease(result);
    *(*(a1 + 32) + 36) = 0;
  }

  return result;
}

void sub_10001F0C4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  _notificationQueue = dispatch_queue_create("com.apple.MobileDevice.USBCloseNotification.queue", v1);
  v2 = IONotificationPortCreate(kIOMainPortDefault);
  _closeNotificationPort = v2;
  v3 = _notificationQueue;

  IONotificationPortSetDispatchQueue(v2, v3);
}

uint64_t _AMRUSBDeviceOpen(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001F1EC;
  v3[3] = &unk_1000AB0E0;
  v3[4] = &v4;
  [a1 openDeviceWithReply:v3];
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F1EC(uint64_t result, int a2, void *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if (a2)
  {
    v4 = [a3 code];
    v5 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v6, v7, v8, v9, v10, v11, "_AMRUSBDeviceOpen_block_invoke", v4, v5);
  }
}

uint64_t _AMRUSBDeviceSendDeviceRequestTO(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = a9;
  v18 = [[NSData alloc] initWithBytesNoCopy:a9 length:a8 freeWhenDone:0];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001F40C;
  v22[3] = &unk_1000AB108;
  v22[4] = &v25;
  v22[5] = v24;
  v23 = v10;
  LOWORD(v21) = v10;
  [a1 sendDeviceRequestTO:a2 direction:a3 requestType:a4 recipient:a5 request:a6 value:a7 length:v21 data:v18 noDataTO:a10 completionTO:v22 withReply:?];

  v19 = *(v26 + 6);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);
  return v19;
}

void sub_10001F3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_10001F40C(uint64_t a1, int a2, void *a3, void *a4)
{
  if (a4)
  {
    v8 = [a4 code];
    v9 = [a4 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v10, v11, v12, v13, v14, v15, "_AMRUSBDeviceSendDeviceRequestTO_block_invoke", v8, v9);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v16 = *(*(*(a1 + 40) + 8) + 24);
  v17 = *(a1 + 48);

  return [a3 getBytes:v16 length:v17];
}

uint64_t _AMRUSBDeviceGetInterface(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10001F5A0;
  v10 = sub_10001F5B0;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F5BC;
  v5[3] = &unk_1000AB130;
  v5[4] = a1;
  v5[5] = &v6;
  [a1 interfaceWithClass:a2 subclass:a3 withReply:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_10001F588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F5BC(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v3 = a2;
    if ([*(a1 + 32) conformsToProtocol:&OBJC_PROTOCOL___NSXPCProxyCreating])
    {
      v3 = [v3 synchronousRemoteObjectProxyWithErrorHandler:AMRUSBInterfaceErrorHandler];
    }

    *(*(*(a1 + 40) + 8) + 40) = v3;
    v5 = *(*(*(a1 + 40) + 8) + 40);

    v6 = v5;
  }

  else
  {
    v8 = [a3 code];
    v9 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v10, v11, v12, v13, v14, v15, "_AMRUSBDeviceGetInterface_block_invoke", v8, v9);
  }
}

uint64_t _AMRUSBDeviceGetProductID(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001F750;
  v3[3] = &unk_1000AB158;
  v3[4] = &v4;
  [a1 getProductIDWithReply:v3];
  v1 = *(v5 + 12);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F750(uint64_t result, int a2, void *a3)
{
  if (!a2)
  {
    v6 = [a3 code];
    v7 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v8, v9, v10, v11, v12, v13, "_AMRUSBDeviceGetProductID_block_invoke", v6, v7);
  }

  *(*(*(result + 32) + 8) + 24) = a2;
}

uint64_t _AMRUSBDeviceGetDeviceReleaseNumber(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001F888;
  v3[3] = &unk_1000AB158;
  v3[4] = &v4;
  [a1 getDeviceReleaseNumberWithReply:v3];
  v1 = *(v5 + 12);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F888(uint64_t result, int a2, void *a3)
{
  if (!a2)
  {
    v6 = [a3 code];
    v7 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v8, v9, v10, v11, v12, v13, "_AMRUSBDeviceGetDeviceReleaseNumber_block_invoke", v6, v7);
  }

  *(*(*(result + 32) + 8) + 24) = a2;
}

uint64_t _AMRUSBDeviceCopySerialNumber(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001F9C0;
  v3[3] = &unk_1000AB180;
  v3[4] = &v4;
  [a1 copySerialNumberWithReply:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F9C0(uint64_t result, CFStringRef theString, void *a3)
{
  if (a3)
  {
    v6 = [a3 code];
    v7 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v8, v9, v10, v11, v12, v13, "_AMRUSBDeviceCopySerialNumber_block_invoke", v6, v7);
  }

  if (theString)
  {
    *(*(*(result + 32) + 8) + 24) = CFStringCreateCopy(kCFAllocatorDefault, theString);
  }
}

uint64_t _AMRUSBDeviceCopyProductString(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001FB10;
  v3[3] = &unk_1000AB180;
  v3[4] = &v4;
  [a1 copyProductStringWithReply:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001FAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FB10(uint64_t result, CFStringRef theString, void *a3)
{
  if (a3)
  {
    v6 = [a3 code];
    v7 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v8, v9, v10, v11, v12, v13, "_AMRUSBDeviceCopyProductString_block_invoke", v6, v7);
  }

  if (theString)
  {
    *(*(*(result + 32) + 8) + 24) = CFStringCreateCopy(kCFAllocatorDefault, theString);
  }
}

uint64_t _AMRUSBDeviceReEnumerate(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001FC60;
  v3[3] = &unk_1000AB0E0;
  v3[4] = &v4;
  [a1 reEnumerateWithReply:v3];
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001FC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FC60(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    v6 = [a3 code];
    v7 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBDevice error (%ld): %@", v8, v9, v10, v11, v12, v13, "_AMRUSBDeviceReEnumerate_block_invoke", v6, v7);
  }

  *(*(*(result + 32) + 8) + 24) = a2;
}

void _AMRUSBDeviceClose(void *a1)
{
  [a1 closeDevice];
  [a1 freeDevice];
}

uint64_t _AMRUSBInterfaceOpen(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001FDD8;
  v3[3] = &unk_1000AB0E0;
  v3[4] = &v4;
  [a1 openInterfaceWithReply:v3];
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10001FDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FDD8(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    v6 = [a3 code];
    v7 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBInterface error (%ld): %@", v8, v9, v10, v11, v12, v13, "_AMRUSBInterfaceOpen_block_invoke", v6, v7);
  }

  *(*(*(result + 32) + 8) + 24) = a2;
}

uint64_t _AMRUSBInterfaceGetFileTransferPipe(void *a1, _BYTE *a2, _WORD *a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -536870212;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FF8C;
  v7[3] = &unk_1000AB1A8;
  v7[4] = &v16;
  v7[5] = &v12;
  v7[6] = &v8;
  [a1 getFileTransferPipeWithReply:v7];
  *a2 = *(v13 + 24);
  *a3 = *(v9 + 12);
  v5 = *(v17 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v5;
}

void sub_10001FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10001FF8C(void *result, int a2, char a3, __int16 a4, void *a5)
{
  if (a2)
  {
    v10 = [a5 code];
    v11 = [a5 userInfo];
    AMRLog(3, @"%s: AMRUSBInterface error (%ld): %@", v12, v13, v14, v15, v16, v17, "_AMRUSBInterfaceGetFileTransferPipe_block_invoke", v10, v11);
  }

  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
}

uint64_t _AMRUSBInterfaceGetPipes(void *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = -1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000201F4;
  v12[3] = &unk_1000AB1D0;
  v12[4] = &v29;
  v12[5] = &v25;
  v12[6] = &v21;
  v12[7] = &v17;
  v12[8] = &v13;
  [a1 getPipesWithReply:v12];
  *a2 = *(v30 + 24);
  *a3 = *(v26 + 24);
  *a4 = *(v22 + 24);
  *a5 = *(v18 + 24);
  *a6 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return 3758097084;
}

void sub_1000201AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000201F4(void *result, int a2, char a3, char a4, char a5, char a6, char a7, void *a8)
{
  if (a2)
  {
    v15 = [a8 code];
    v16 = [a8 userInfo];
    AMRLog(3, @"%s: AMRUSBInterface error (%ld): %@", v17, v18, v19, v20, v21, v22, "_AMRUSBInterfaceGetPipes_block_invoke", v15, v16);
  }

  *(*(result[4] + 8) + 24) = a3;
  *(*(result[5] + 8) + 24) = a4;
  *(*(result[6] + 8) + 24) = a5;
  *(*(result[7] + 8) + 24) = a6;
  *(*(result[8] + 8) + 24) = a7;
}

uint64_t _AMRUSBInterfaceGetDFUInformation(void *a1, _WORD *a2, _BYTE *a3, _BYTE *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -536870212;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100020438;
  v9[3] = &unk_1000AB1F8;
  v9[4] = &v22;
  v9[5] = &v18;
  v9[6] = &v14;
  v9[7] = &v10;
  [a1 getDFUInformationWithReply:v9];
  *a2 = *(v19 + 12);
  *a3 = *(v15 + 24);
  *a4 = *(v11 + 24);
  v7 = *(v23 + 6);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v7;
}

void sub_1000203FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100020438(void *result, int a2, __int16 a3, char a4, char a5, void *a6)
{
  if (a2)
  {
    v12 = [a6 code];
    v13 = [a6 userInfo];
    AMRLog(3, @"%s: AMRUSBInterface error (%ld): %@", v14, v15, v16, v17, v18, v19, "_AMRUSBInterfaceGetDFUInformation_block_invoke", v12, v13);
  }

  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  *(*(result[6] + 8) + 24) = a4;
  *(*(result[7] + 8) + 24) = a5;
}

uint64_t _AMRUSBInterfaceWritePipe(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [[NSData alloc] initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020600;
  v10[3] = &unk_1000AB0E0;
  v10[4] = &v11;
  [a1 writePipe:a2 data:v7 length:a4 withReply:v10];

  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_1000205E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020600(uint64_t result, int a2, void *a3)
{
  if (a2)
  {
    v6 = [a3 code];
    v7 = [a3 userInfo];
    AMRLog(3, @"%s: AMRUSBInterface error (%ld): %@", v8, v9, v10, v11, v12, v13, "_AMRUSBInterfaceWritePipe_block_invoke", v6, v7);
  }

  *(*(*(result + 32) + 8) + 24) = a2;
}

uint64_t _AMRUSBInterfaceReadPipe(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -536870212;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = *a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020784;
  v8[3] = &unk_1000AB220;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = &v13;
  [a1 readPipe:a2 length:v5 withReply:v8];
  *a4 = *(v10 + 6);
  v6 = *(v14 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void sub_100020760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

id sub_100020784(void *a1, int a2, void *a3, unsigned int a4, void *a5)
{
  if (a2)
  {
    v10 = [a5 code];
    v11 = [a5 userInfo];
    AMRLog(3, @"%s: AMRUSBInterface error (%ld): %@", v12, v13, v14, v15, v16, v17, "_AMRUSBInterfaceReadPipe_block_invoke", v10, v11);
  }

  *(*(a1[4] + 8) + 24) = a2;
  result = [a3 getBytes:a1[6] length:{a4, a5}];
  *(*(a1[5] + 8) + 24) = a4;
  return result;
}

void _AMRUSBInterfaceClose(void *a1)
{
  [a1 closeInterface];
}

uint64_t _AMRestoreUninitializeNotifications()
{
  if (_notificationPort)
  {
    IONotificationPortDestroy(_notificationPort);
    _notificationPort = 0;
    dispatch_sync(_notificationQueue, &stru_1000AB240);
  }

  if (_registryIDToDevice)
  {

    _registryIDToDevice = 0;
  }

  if (qword_1000C8858)
  {
    if (_AMRestoreGetNumberOFDeviceIDsToMatch() >= 1)
    {
      v0 = 0;
      do
      {
        IOObjectRelease(*(qword_1000C8858 + 4 * v0++));
      }

      while (v0 < _AMRestoreGetNumberOFDeviceIDsToMatch());
    }

    free(qword_1000C8858);
    qword_1000C8858 = 0;
  }

  if (qword_1000C8860)
  {
    if (_AMRestoreGetNumberOFDeviceIDsToMatch() >= 1)
    {
      v1 = 0;
      do
      {
        IOObjectRelease(*(qword_1000C8860 + 4 * v1++));
      }

      while (v1 < _AMRestoreGetNumberOFDeviceIDsToMatch());
    }

    free(qword_1000C8860);
    qword_1000C8860 = 0;
  }

  return 0;
}

uint64_t _AMRestoreInitializeNotifications(uint64_t a1, uint64_t a2)
{
  _loadAndCacheIOUSBLibBundle(a1, a2);
  NumberOFDeviceIDsToMatch = _AMRestoreGetNumberOFDeviceIDsToMatch();
  v3 = NumberOFDeviceIDsToMatch;
  v4 = &unk_1000C8000;
  if (!qword_1000C8858)
  {
    qword_1000C8858 = malloc_type_calloc(NumberOFDeviceIDsToMatch, 4uLL, 0x100004052888210uLL);
  }

  if (!qword_1000C8860)
  {
    qword_1000C8860 = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
  }

  v5 = &_notificationPort;
  if (!_notificationPort)
  {
    _notificationPort = IONotificationPortCreate(kIOMasterPortDefault);
    IONotificationPortSetDispatchQueue(_notificationPort, *(a1 + 40));
  }

  if (!_registryIDToDevice)
  {
    _registryIDToDevice = objc_alloc_init(NSMutableDictionary);
  }

  if (_shouldMatchIOUSBHostFamily())
  {
    v6 = "IOUSBHostDevice";
  }

  else
  {
    v6 = "IOUSBDevice";
  }

  v7 = IOServiceMatching(v6);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  if (v3 >= 1)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      DeviceIDToMatch = _AMRestoreGetDeviceIDToMatch(v10);
      v12 = v5;
      v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, DeviceIDToMatch);
      v14 = v4;
      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, DeviceIDToMatch + 2);
      CFDictionarySetValue(v8, @"idVendor", v13);
      CFDictionarySetValue(v8, @"idProduct", v15);
      v16 = v13;
      v5 = v12;
      CFRelease(v16);
      v17 = v15;
      v4 = v14;
      CFRelease(v17);
      CFRetain(v8);
      v18 = IOServiceAddMatchingNotification(*v12, "IOServiceFirstMatch", v8, sub_100020C30, DeviceIDToMatch, (v14[267] + v9));
      if (v18)
      {
        AMRLog(3, @"unable to set up device connected notification: 0x%x", v19, v20, v21, v22, v23, v24, v18);
        goto LABEL_23;
      }

      CFRetain(v8);
      v25 = IOServiceAddMatchingNotification(*v12, "IOServiceTerminate", v8, sub_100020C74, DeviceIDToMatch, (qword_1000C8860 + v9));
      if (v25)
      {
        break;
      }

      sub_100020CB8(DeviceIDToMatch, *(v14[267] + v9), a1);
      sub_100020F18(DeviceIDToMatch, *(qword_1000C8860 + v9), a1);
      ++v10;
      v9 += 4;
      if (4 * v3 == v9)
      {
        goto LABEL_18;
      }
    }

    AMRLog(3, @"unable to set up device disconnected notification: 0x%x", v26, v27, v28, v29, v30, v31, v25);
LABEL_23:
    CFRelease(v8);
    return 0xFFFFFFFFLL;
  }

LABEL_18:
  CFRelease(v8);
  if (!_loadAndCacheIOUSBLibBundle(v32, v33))
  {
    AMRLog(3, @"Failed to load any IOUSBLib.bundle. Bravely continuing.", v34, v35, v36, v37, v38, v39);
  }

  return 0;
}

uint64_t sub_100020C30(uint64_t a1, io_iterator_t a2)
{
  v4 = sub_10001AC58();

  return sub_100020CB8(a1, a2, v4);
}

uint64_t sub_100020C74(uint64_t a1, io_iterator_t a2)
{
  v4 = sub_10001AC58();

  return sub_100020F18(a1, a2, v4);
}

uint64_t sub_100020CB8(uint64_t a1, io_iterator_t iterator, uint64_t a3)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v7 = result;
    do
    {
      IOObjectRetain(v7);
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v7, &entryID);
      AMRLog(7, @"device connected (isDFU = %d), registryID %#llx", v8, v9, v10, v11, v12, v13, *(a1 + 4), entryID);
      waitTime = 5;
      v14 = IOServiceWaitQuiet(v7, &waitTime);
      if (v14)
      {
        AMRLog(3, @"device did not go quiet after waiting: 0x%x", v15, v16, v17, v18, v19, v20, v14);
      }

      else
      {
        if (dword_1000C8850)
        {
          valuePtr = 0;
          CFProperty = IORegistryEntryCreateCFProperty(v7, @"locationID", 0, 0);
          if (CFProperty)
          {
            v22 = CFProperty;
            CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr);
            CFRelease(v22);
            v23 = valuePtr;
          }

          else
          {
            v23 = 0;
          }

          if (dword_1000C8850 != v23)
          {
            goto LABEL_12;
          }
        }

        v24 = [NSNumber numberWithUnsignedLongLong:entryID];
        if ([_registryIDToDevice objectForKeyedSubscript:v24])
        {
          AMRLog(5, @"a device with a duplicate registry id was connected!", v26, v27, v28, v29, v30, v31, v46);
        }

        else
        {
          v32 = sub_10002102C(v7, v25, v26, v27, v28, v29, v30, v31);
          if (v32)
          {
            v33 = *(a1 + 8);
            if (*(a1 + 4))
            {
              if (v33 == 2)
              {
                v34 = _AMPortDFUModeDeviceCreate(kCFAllocatorDefault, v32, v33);
              }

              else
              {
                v34 = _AMDFUModeDeviceCreate(kCFAllocatorDefault, v32, v33);
              }

              v44 = v34;
              v45 = a3;
              if (v34)
              {
LABEL_26:
                (*v45)(v44, *(a3 + 48));
                [_registryIDToDevice setObject:v44 forKeyedSubscript:v24];
                CFRelease(v44);
                goto LABEL_12;
              }
            }

            else
            {
              v44 = _AMRecoveryModeDeviceCreate(kCFAllocatorDefault, v32);
              v45 = (a3 + 8);
              if (v44)
              {
                goto LABEL_26;
              }
            }

            v41 = *(a3 + 32);
            if (!v41)
            {
              AMRLog(3, @"an erorr occurred handling a connected device: 0x%x", v35, v36, v37, v38, v39, v40, 18);
              goto LABEL_12;
            }

            v42 = *(a3 + 48);
            v43 = 18;
            goto LABEL_23;
          }

          v41 = *(a3 + 32);
          if (v41)
          {
            v42 = *(a3 + 48);
            v43 = 2007;
LABEL_23:
            v41(v43, v42);
          }
        }
      }

LABEL_12:
      IOObjectRelease(v7);
      IOObjectRelease(v7);
      result = IOIteratorNext(iterator);
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100020F18(uint64_t a1, io_iterator_t iterator, uint64_t a3)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v7 = result;
    do
    {
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v7, &entryID);
      AMRLog(7, @"device disconnected (isDFU = %d), registryID %#llx", v8, v9, v10, v11, v12, v13, *(a1 + 4), entryID);
      v14 = [NSNumber numberWithUnsignedLongLong:entryID];
      if ([_registryIDToDevice objectForKeyedSubscript:v14])
      {
        if (*(a1 + 4))
        {
          v21 = 16;
        }

        else
        {
          v21 = 24;
        }

        (*(a3 + v21))();
        [_registryIDToDevice setObject:0 forKeyedSubscript:v14];
      }

      else
      {
        AMRLog(5, @"an unknown device was disconnected!", v15, v16, v17, v18, v19, v20);
      }

      IOObjectRelease(v7);
      result = IOIteratorNext(iterator);
      v7 = result;
    }

    while (result);
  }

  return result;
}

AMRLocalUSBDevice *sub_10002102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    result = [[AMRLocalUSBDevice alloc] initWithService:a1];
    if (result)
    {
      return result;
    }

    AMRLog(3, @"Failed to create USB device with service %d", v10, v11, v12, v13, v14, v15, a1);
  }

  else
  {
    AMRLog(3, @"Tried to create a USB device with a null USB service.", a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t _AMDFUModeDeviceCreate(uint64_t a1, uint64_t a2, int a3)
{
  pthread_once(&stru_1000C84E8, sub_100021118);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 168) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 160) = a2;
    *(result + 172) = a3;
    *(result + 176) = 0;
    *(result + 184) = 0;
    *(result + 180) = 0;
  }

  return result;
}

uint64_t sub_100021118()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C8868 = result;
  return result;
}

void _AMDFUModeDeviceProgress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%@: operation %d progress %d", a3, a4, a5, a6, a7, a8, a1, a2, a3);
  v11 = *(a1 + 16);
  if (v11)
  {
    v11(a1, a2, a3, *(a1 + 24));
  }

  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
}

uint64_t _loadFirmwareInfoDFU(uint64_t a1)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  FirmwareInfo = _AMRUSBDeviceGetFirmwareInfo(*(a1 + 160), a1 + 40, 1);
  v1 = FirmwareInfo;
  if (FirmwareInfo)
  {
    AMRLog(3, @"unable to get firmware info from device: %d", v4, v5, v6, v7, v8, v9, FirmwareInfo);
  }

  else
  {
    *(a1 + 168) = 1;
  }

  return v1;
}

uint64_t AMDFUModeDeviceIsBootstrapOnly(uint64_t a1, const __CFDictionary *a2)
{
  if (_loadFirmwareInfoDFU(a1))
  {
    AMRLog(3, @"unable to get firmware info from device", v4, v5, v6, v7, v8, v9);
    return 0;
  }

  else
  {

    return AMRestoreDeviceIsBootstrapOnly(a2, (a1 + 40), v4, v5, v6, v7, v8, v9);
  }
}

uint64_t AMDFUModeDeviceGetECID(uint64_t a1)
{
  if (_loadFirmwareInfoDFU(a1))
  {
    AMRLog(3, @"unable to get firmware info from device", v2, v3, v4, v5, v6, v7);
  }

  return *(a1 + 120);
}

uint64_t AMDFUModeDeviceGetChipID(uint64_t a1)
{
  if (_loadFirmwareInfoDFU(a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t AMDFUModeDeviceGetProductionMode(uint64_t a1)
{
  if (_loadFirmwareInfoDFU(a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 136);
  }
}

uint64_t AMDFUModeDeviceGetBoardID(uint64_t a1)
{
  if (!_loadFirmwareInfoDFU(a1))
  {
    return *(a1 + 44);
  }

  AMRLog(3, @"unable to get firmware info from device", v2, v3, v4, v5, v6, v7);
  return 0xFFFFFFFFLL;
}

CFDataRef _createDFUDataFromFile(const __CFString *a1, const __CFData *a2)
{
  bzero(buffer, 0x400uLL);
  CFStringGetFileSystemRepresentation(a1, buffer, 1024);
  v4 = open(buffer, 0, 0);
  if (v4 == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    AMRLogWithFilePath(3, a1, @"unable to open DFU file: %s", v11, v12, v13, v14, v15, v10);
    return 0;
  }

  v5 = v4;
  memset(&v29, 0, sizeof(v29));
  if (fstat(v4, &v29) == -1)
  {
    v17 = 0;
  }

  else
  {
    if (a2)
    {
      Length = CFDataGetLength(a2);
      v7 = Length;
      if ((Length & 0x3F) != 0)
      {
        v8 = 64 - (Length & 0x3F);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v18 = v7 + v8;
    v19 = v29.st_size + v7 + v8;
    v17 = malloc_type_malloc(v19 + 16, 0x5CCA380EuLL);
    if (v17)
    {
      if (a2)
      {
        BytePtr = CFDataGetBytePtr(a2);
        memcpy(v17, BytePtr, v7);
        memset(&v17[v7], 255, v8);
      }

      v21 = read(v5, &v17[v7 + v8], v29.st_size);
      if (v21 == v29.st_size)
      {
        v22 = &v17[v7 + v8 + v21];
        *v22 = 0x10005ACFFFFFFFFLL;
        *(v22 + 2) = 272909909;
        v23 = v29.st_size + v18;
        if (v29.st_size + v18)
        {
          v24 = -1;
          v25 = v17;
          do
          {
            v26 = *v25++;
            v24 = dword_100086170[(v26 ^ v24)] ^ (v24 >> 8);
            --v23;
          }

          while (v23);
        }

        else
        {
          v24 = -1;
        }

        for (i = 0; i != 12; ++i)
        {
          v24 = dword_100086170[(v22[i] ^ v24)] ^ (v24 >> 8);
        }

        *(v22 + 3) = v24;
        v16 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v17, v19 + 16, kCFAllocatorMalloc);
        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_19:
  close(v5);
  if (v17 && !v16)
  {
    free(v17);
  }

  return v16;
}

uint64_t AMRestorePerformDFURestore(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v180 = 0;
  AMRestoreCaptureSubsystemLogsIfNeeded();
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  if (!MutableCopy)
  {
    AMRLog(3, @"unable to create mutable copy of options", v9, v10, v11, v12, v13, v14);
LABEL_196:
    AMRLog(6, @"%@: DFU succeeded", v26, v27, v28, v29, v30, v31, a1);
    return 0;
  }

  v15 = MutableCopy;
  if (!*(a1 + 184))
  {
    _AMDFUModeDeviceProgress(a1, 45, 0xFFFFFFFFLL, v10, v11, v12, v13, v14);
    value[0] = 0;
    v42 = AMDFUModeDeviceCopyAuthInstallPreflightOptions(a1, v15, value);
    if (v42)
    {
      v25 = v42;
LABEL_193:
      CFRelease(v15);
      goto LABEL_194;
    }

    CFRelease(v15);
    v15 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, value[0]);
    CFRelease(value[0]);
  }

  v23 = CFDictionaryGetValue(v15, @"PersonalizedRestoreBundlePath");
  if (v23)
  {
    if (AMRestoreOptionsAreLegacy(v15, v16, v17, v18, v19, v20, v21, v22))
    {
      v24 = AMRAuthInstallAlignOptionsToPersonalizedBundle(v15, v23, 1);
      if (v24)
      {
        v25 = v24;
        AMRLog(3, @"failed to align options with personalized bundle", v17, v18, v19, v20, v21, v22);
        goto LABEL_187;
      }
    }
  }

  if (AMRestoreOptionsAreLegacy(v15, v16, v17, v18, v19, v20, v21, v22))
  {
    if (v15)
    {
      v39 = CFDictionaryGetValue(v15, @"RestoreBundlePath");
      if (v39)
      {
        value[0] = 0;
        PathsForBundle = AMRestoreCreatePathsForBundle(v39, 0, 0, 0, 0, 0, 0, value);
        v33 = value[0];
        if (!PathsForBundle && value[0] != 0)
        {
          CFDictionaryAddValue(v15, @"FirmwareDirectory", value[0]);
          CFRelease(value[0]);
        }
      }
    }

    else
    {
      AMRLog(3, @"Cannot resolve bundle path options without options", v33, v34, v35, v36, v37, v38);
    }
  }

  v181 = 0;
  v182 = 0;
  if (AMRestoreOptionsAreLegacy(v15, v32, v33, v34, v35, v36, v37, v38))
  {
    v49 = CFDictionaryGetValue(v15, @"DFUFile");
    if (v49)
    {
      v56 = v49;
      v57 = CFDictionaryGetValue(v15, @"OnlyPersonalizeDFUFile");
      if (v57 && CFEqual(v57, kCFBooleanTrue))
      {
        bzero(value, 0x400uLL);
        v188 = 0;
        cf = 0;
        v186 = 0;
        v187 = 0;
        v185 = 0;
        v184 = 0;
        v183 = 0;
        v58 = AMAuthInstallCreate(kCFAllocatorDefault);
        if (!v58)
        {
          v60 = 0;
          PathComponent = 0;
LABEL_129:
          if (v188)
          {
            CFRelease(v188);
          }

          if (v187)
          {
            CFRelease(v187);
          }

          if (v186)
          {
            CFRelease(v186);
          }

          if (v185)
          {
            CFRelease(v185);
          }

          if (v183)
          {
            CFRelease(v183);
          }

          if (!PathComponent)
          {
            goto LABEL_164;
          }

          v126 = PathComponent;
          goto LABEL_163;
        }

        v59 = v58;
        if (AMRAuthInstallConfigureUsingOptions(v58, v15, 0, 0))
        {
          v60 = 0;
          Mutable = 0;
LABEL_124:
          PathComponent = 0;
          v125 = v59;
LABEL_125:
          CFRelease(v125);
          if (cf)
          {
            CFRelease(cf);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_129;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          goto LABEL_123;
        }

        AMDFUModeDeviceGetECID(a1);
        AMAuthInstallSupportDictionarySetInteger64();
        _loadFirmwareInfoDFU(a1);
        AMAuthInstallSupportDictionarySetInteger32();
        AMDFUModeDeviceGetBoardID(a1);
        AMAuthInstallSupportDictionarySetInteger32();
        _loadFirmwareInfoDFU(a1);
        AMAuthInstallSupportDictionarySetInteger32();
        if (_loadFirmwareInfoDFU(a1))
        {
          v93 = 0;
        }

        else
        {
          v93 = *(a1 + 136);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApProductionMode", v93);
        if (_loadFirmwareInfoDFU(a1))
        {
          v94 = 0;
        }

        else
        {
          v94 = *(a1 + 137);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApSecurityMode", v94);
        if (_loadFirmwareInfoDFU(a1))
        {
          v95 = 0;
        }

        else
        {
          v95 = *(a1 + 140);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApEffectiveSecurityMode", v95);
        if (_loadFirmwareInfoDFU(a1))
        {
          v96 = 0;
        }

        else
        {
          v96 = *(a1 + 139);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApEffectiveProductionMode", v96);
        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApInRomDFU", 1);
        v97 = *(a1 + 144);
        if (v97)
        {
          CFDictionarySetValue(Mutable, @"ApSikaFuse", v97);
        }

        v98 = *(a1 + 56);
        if (v98)
        {
          CFDictionarySetValue(Mutable, @"CertificateEpoch", v98);
        }

        v99 = *(a1 + 152);
        if (v99)
        {
          CFDictionarySetValue(Mutable, @"SerialString", v99);
        }

        if (*(a1 + 138))
        {
          AMAuthInstallSupportDictionarySetBoolean(Mutable, @"UIDMode", 1);
        }

        v100 = CFDictionaryGetValue(v15, @"RequiresUIDMode");
        if (v100 && CFBooleanGetValue(v100) == 1)
        {
          CFDictionarySetValue(Mutable, @"RequiresUIDMode", kCFBooleanTrue);
        }

        v101 = CFDictionaryGetValue(v15, @"UIDMode");
        if (v101)
        {
          v102 = v101;
          TypeID = CFBooleanGetTypeID();
          if (TypeID == CFGetTypeID(v102))
          {
            CFDictionarySetValue(Mutable, @"UIDMode", v102);
          }
        }

        IBFL = _AMRUSBDeviceGetIBFL(*(a1 + 160), &v184);
        v105 = *&IBFL & ((v184 & 4) >> 2);
        if (v105 == 1)
        {
          v106 = CFDictionaryGetValue(v15, @"AuthInstallAllowMixAndMatch");
          if (v106 && CFBooleanGetValue(v106) == 1)
          {
            CFDictionaryAddValue(Mutable, @"ApAllowMixAndMatch", kCFBooleanTrue);
          }

          CFDictionarySetValue(Mutable, @"ApSupportsImg4", kCFBooleanTrue);
          if ((v184 & 0x20) != 0)
          {
            CFDictionarySetValue(Mutable, @"ApImg4DigestType", @"sha2-384");
          }

          v107 = CFDictionaryGetValue(v15, @"SkipNoncesForAPSEP");
          if (!v107 || (v108 = v107, v109 = CFBooleanGetTypeID(), v109 != CFGetTypeID(v108)) || CFBooleanGetValue(v108) != 1)
          {
            if (!_AMRUSBDeviceCopyNonce(*(a1 + 160), &v188))
            {
              v110 = CFGetAllocator(v59);
              if (!AMAuthInstallSupportCopyDataFromHexString(v110, v188, &v187))
              {
                if (v187)
                {
                  CFDictionarySetValue(Mutable, @"ApNonce", v187);
                }
              }
            }

            if (!_AMRUSBDeviceCopySEPNonce(*(a1 + 160), &v186))
            {
              v111 = CFGetAllocator(v59);
              if (!AMAuthInstallSupportCopyDataFromHexString(v111, v186, &v185))
              {
                if (v185)
                {
                  CFDictionarySetValue(Mutable, @"SepNonce", v185);
                }
              }
            }
          }
        }

        v112 = CFDictionaryGetValue(v15, @"AuthInstallDemotionPolicyOverride");
        if (v112)
        {
          CFDictionarySetValue(Mutable, @"DemotionPolicy", v112);
        }

        if (AMAuthInstallApSetParameters(v59, Mutable) || (AMRAuthInstallInitOptionalFirmware(v59, v15), AMRAuthInstallSetFDRTrustObjectHash(v59, v15, v113, v114, v115, v116, v117, v118)))
        {
LABEL_123:
          v60 = 0;
          goto LABEL_124;
        }

        if (AMRAuthInstallEnablePersonalization(v59, v15))
        {
          AMRLog(3, @"%s: AMRAuthInstallEnablePersonalization failed", v119, v120, v121, v122, v123, v124, "_copyPersonalizedFileForDFUDevice");
          goto LABEL_123;
        }

        v163 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v56, kCFURLPOSIXPathStyle, 0);
        if (!v163)
        {
          goto LABEL_123;
        }

        v125 = v163;
        PathComponent = CFURLCopyLastPathComponent(v163);
        if (!PathComponent)
        {
          v60 = 0;
          v168 = v59;
          goto LABEL_227;
        }

        ECID = AMDFUModeDeviceGetECID(a1);
        v178 = PathComponent;
        PathComponent = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%llx.personalized", PathComponent, ECID);
        v177 = PathComponent;
        if (!PathComponent)
        {
          goto LABEL_225;
        }

        URLForTempDirectoryRoot = AMAuthInstallSupportGetURLForTempDirectoryRoot();
        if (AMAuthInstallSupportCopyURLWithAppendedComponent(kCFAllocatorDefault, URLForTempDirectoryRoot, PathComponent, 0, &cf) || (v166 = CFDictionaryGetValue(v15, @"RequestRestoreRulesDeviceMap"), AMAuthInstallApCreateImagePropertiesWithDeviceMap(v59, v125, v166, &v183, v167)))
        {
          v60 = 0;
          PathComponent = 0;
          goto LABEL_226;
        }

        PathComponent = CFDictionaryCreateMutableCopy(0, 0, v183);
        if (!PathComponent)
        {
          goto LABEL_225;
        }

        v169 = CFDictionaryGetValue(v15, @"RequestOverrides");
        if (v169)
        {
          v170 = v169;
          v175 = CFGetTypeID(v169);
          if (v175 == CFDictionaryGetTypeID())
          {
            CFDictionaryApplyFunction(v170, _AMRestoreDFUPropertyOverrideApplier, PathComponent);
          }
        }

        v171 = CFDictionaryGetValue(v15, @"ImageTrusted");
        if (v171)
        {
          v172 = v171;
          v176 = CFGetTypeID(v171);
          if (v176 == CFBooleanGetTypeID())
          {
            CFDictionarySetValue(PathComponent, @"Trusted", v172);
          }
        }

        v173 = CFDictionaryGetValue(v15, @"ApRequestEntries");
        if (v173)
        {
          CFDictionaryApplyFunction(v173, _AMRestoreAPOverrideApplier, v59);
        }

        if (v105)
        {
          if (AMAuthInstallApImg4PersonalizeFile(v59, v125, cf, PathComponent))
          {
            goto LABEL_225;
          }
        }

        else if (AMAuthInstallApImg3PersonalizeFile(v59, v125, cf, PathComponent))
        {
          goto LABEL_225;
        }

        if (CFURLGetFileSystemRepresentation(cf, 1u, value, 1024))
        {
          v60 = CFStringCreateWithCString(kCFAllocatorDefault, value, 0x8000100u);
          goto LABEL_226;
        }

LABEL_225:
        v60 = 0;
LABEL_226:
        CFRelease(v59);
        CFRelease(v178);
        v168 = v177;
        if (!v177)
        {
          goto LABEL_125;
        }

LABEL_227:
        CFRelease(v168);
        goto LABEL_125;
      }

      v63 = kCFAllocatorDefault;
      v64 = v56;
      goto LABEL_31;
    }

    v66 = *(a1 + 172);
    if (v66 == 1)
    {
      v69 = CFDictionaryGetValue(v15, @"FirmwareDirectory");
      if (!v69)
      {
        goto LABEL_54;
      }

      v70 = v69;
      v71 = CFDictionaryGetValue(v15, @"DFUFileType");
      v72 = v71 ? v71 : @"RELEASE";
      ProductID = _AMRUSBDeviceGetProductID(*(a1 + 160));
      v74 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"x%hX", ProductID);
      if (!v74)
      {
        goto LABEL_54;
      }

      v75 = v74;
      v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/WTF.%@.%@.dfu", v70, v74, v72);
      if (!v60 || (bzero(value, 0x400uLL), CFStringGetFileSystemRepresentation(v60, value, 1024), access(value, 0) != -1))
      {
LABEL_162:
        v126 = v75;
LABEL_163:
        CFRelease(v126);
        goto LABEL_164;
      }

      CFRelease(v60);
      v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/FIRMWARE.%@.%@.dfu", v70, v75, v72);
    }

    else
    {
      if (v66)
      {
        v174 = *(a1 + 172);
        v77 = @"don't know how to find DFU file for device type %d";
LABEL_53:
        AMRLog(3, v77, v50, v51, v52, v53, v54, v55, v174);
        goto LABEL_54;
      }

      v67 = CFDictionaryGetValue(v15, @"DFUFile");
      if (v67)
      {
        v64 = v67;
        v63 = kCFAllocatorDefault;
LABEL_31:
        Copy = CFStringCreateCopy(v63, v64);
LABEL_32:
        v60 = Copy;
LABEL_164:
        v68 = 0;
        v182 = v60;
        goto LABEL_165;
      }

      v81 = CFDictionaryGetValue(v15, @"FirmwareDirectory");
      if (!v81)
      {
LABEL_54:
        v60 = 0;
        goto LABEL_164;
      }

      v82 = v81;
      if (_AMRUSBDeviceGetProductID(*(a1 + 160)) == 4642 && _AMRUSBDeviceGetDeviceReleaseNumber(*(a1 + 160)) == 1)
      {
        Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/WTF.s5l8900xall.RELEASE.dfu", v82);
        goto LABEL_32;
      }

      if (_loadFirmwareInfoDFU(a1))
      {
        v77 = @"unable to get firmware info from device";
        goto LABEL_53;
      }

      if (*(a1 + 136) == 1)
      {
        AMRLog(4, @"%@: production fused device", v50, v51, v52, v53, v54, v55, a1);
      }

      v129 = CFDictionaryGetValue(v15, @"BoardConfig");
      if (v129)
      {
        v75 = v129;
        CFRetain(v129);
      }

      else
      {
        v198 = 0;
        memset(v197, 0, sizeof(v197));
        v195 = 0u;
        v196 = 0u;
        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        *value = 0u;
        if (_AMRestoreGetDeviceMapEntryForHardware(v15, (a1 + 40), value, v130, v131, v132, v133, v134) != 1)
        {
          goto LABEL_54;
        }

        v75 = CFStringCreateWithCString(kCFAllocatorDefault, &v197[8], 0x8000100u);
        if (!v75)
        {
          goto LABEL_54;
        }
      }

      v135 = CFDictionaryGetValue(v15, @"DFUFileType");
      if (v135)
      {
        v136 = v135;
      }

      else
      {
        v136 = @"DEVELOPMENT";
      }

      if (*(a1 + 64) || (*(a1 + 68) & 1) != 0)
      {
        v137 = @"iBEC";
      }

      else
      {
        v137 = @"iBSS";
      }

      value[0] = 0;
      if (!AMRAuthInstallCreatePathFromBundle(*(a1 + 184), v15))
      {
        v60 = value[0];
        goto LABEL_162;
      }

      v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/%@.%@.%@.dfu", v82, v137, v75, v136);
    }

    v60 = v76;
    goto LABEL_162;
  }

  if (!v15)
  {
    v62 = @"Can't get DFU file for NULL options";
    goto LABEL_42;
  }

  if (_loadFirmwareInfoDFU(a1))
  {
    v62 = @"Failed to get firmware info from device for DFU file selection";
LABEL_42:
    AMRLog(3, v62, v43, v44, v45, v46, v47, v48, v174);
LABEL_43:
    v68 = 0;
    goto LABEL_165;
  }

  if (*(a1 + 136))
  {
    AMRLog(4, @"%@: production fused device", v43, v44, v45, v46, v47, v48, a1);
  }

  if (AMRAuthInstallCopyPathToFirmware(v15, &v181))
  {
    v62 = @"Failed to get firmware directory to locate WTF file.";
    goto LABEL_42;
  }

  v79 = *(a1 + 172);
  if (v79 != 1)
  {
    if (v79)
    {
      goto LABEL_43;
    }

    if (_AMRUSBDeviceGetProductID(*(a1 + 160)) != 4642 || _AMRUSBDeviceGetDeviceReleaseNumber(*(a1 + 160)) != 1)
    {
      if (*(a1 + 64) || (*(a1 + 68) & 1) != 0)
      {
        v127 = kAMAuthInstallBuildIdentityApiBECKey;
      }

      else
      {
        v127 = kAMAuthInstallBuildIdentityApiBSSKey;
      }

      v128 = *v127;
      if (AMRAuthInstallCopyFileSystemPathForKey(*(a1 + 184), v15, *v127, &v182))
      {
        AMRLog(3, @"Failed to locate DFU file for type %@", v43, v44, v45, v46, v47, v48, v128);
      }

      goto LABEL_43;
    }

    v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/WTF.s5l8900xall.RELEASE.dfu", v181);
    v68 = 0;
LABEL_73:
    v182 = v80;
    goto LABEL_165;
  }

  v83 = _AMRUSBDeviceGetProductID(*(a1 + 160));
  v84 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"x%hX", v83);
  v68 = v84;
  if (!v84)
  {
    AMRLog(3, @"Failed to create product ID strign for traditional iPod", v85, v86, v87, v88, v89, v90);
    goto LABEL_165;
  }

  v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/WTF.%@.RELEASE.dfu", v181, v84);
  v182 = v91;
  if (v91)
  {
    v92 = v91;
    bzero(value, 0x400uLL);
    CFStringGetFileSystemRepresentation(v92, value, 1024);
    if (access(value, 0) == -1)
    {
      CFRelease(v92);
      v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/FIRMWARE.%@.RELEASE.dfu", v181, v68);
      goto LABEL_73;
    }
  }

LABEL_165:
  if (v181)
  {
    CFRelease(v181);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  v138 = v182;
  if (!v182)
  {
    AMRLog(3, @"_copyPathToDFUFile failed", v43, v44, v45, v46, v47, v48);
    v25 = 1;
    goto LABEL_187;
  }

  v179 = 0;
  if (_AMRUSBDeviceGetIBFL(*(a1 + 160), &v179) && (v179 & 2) != 0)
  {
    AMRAuthInstallCopyTicketData(*(a1 + 184), v15, &v180);
  }

  AMRLog(8, @"using DFU file: %@", v139, v140, v141, v142, v143, v144, v138);
  if (*(a1 + 169))
  {
    goto LABEL_174;
  }

  v153 = _AMRUSBDeviceOpen(*(a1 + 160));
  if (!v153)
  {
    *(a1 + 169) = 1;
LABEL_174:
    DFUDataFromFile = _createDFUDataFromFile(v138, v180);
    if (DFUDataFromFile)
    {
      v146 = DFUDataFromFile;
      v25 = AMRPerformDFUDataDownload(*(a1 + 160), DFUDataFromFile, sub_100022EF4, a1);
      CFRelease(v146);
      if (*(a1 + 180))
      {
        AMRLog(3, @"The user requested cancel restore", v147, v148, v149, v150, v151, v152);
        v25 = 99;
      }
    }

    else
    {
      v25 = 11;
    }

    goto LABEL_181;
  }

  v25 = v153;
  AMRLog(3, @"unable to open DFU device: %d", v154, v155, v156, v157, v158, v159, v153);
LABEL_181:
  v160 = CFDictionaryGetValue(v15, @"OnlyPersonalizeDFUFile");
  if (v160)
  {
    if (CFEqual(v160, kCFBooleanTrue) == 1 && CFDictionaryGetValue(v15, @"PreserveBundle") == kCFBooleanFalse)
    {
      bzero(value, 0x400uLL);
      if (CFStringGetCString(v138, value, 1024, 0x8000100u) == 1)
      {
        unlink(value);
      }
    }
  }

  CFRelease(v138);
LABEL_187:
  if (v23)
  {
    v161 = v25 == 0;
  }

  else
  {
    v161 = 1;
  }

  if (!v161)
  {
    AMRAuthInstallDeletePersonalizedBundle(v23, v15);
  }

  if (v15)
  {
    goto LABEL_193;
  }

LABEL_194:
  if (!v25)
  {
    goto LABEL_196;
  }

  AMRLog(3, @"%@: DFU failed (result = %d)", v26, v27, v28, v29, v30, v31, a1, v25);
  return v25;
}

uint64_t AMDFUModeDeviceCopyAuthInstallPreflightOptions(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  AMRestoreCaptureSubsystemLogsIfNeeded();
  if (a1 && a2 && a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    if (MutableCopy)
    {
      v19 = MutableCopy;
      if (*(a1 + 184))
      {
        AMRLog(7, @"authinstall has already been configured for this device", v13, v14, v15, v16, v17, v18);
        goto LABEL_7;
      }

      FirmwareInfoDFU = _loadFirmwareInfoDFU(a1);
      if (FirmwareInfoDFU)
      {
        AMRLog(3, @"unable to get firmware info from device: %d", v30, v31, v32, v33, v34, v35, FirmwareInfoDFU);
      }

      v36 = _AMRUSBDeviceAddNonceWithInfo(*(a1 + 160), a1 + 40, v30, v31, v32, v33, v34, v35);
      if (v36)
      {
        AMRLog(3, @"unable to get nonce info from device: %d", v37, v38, v39, v40, v41, v42, v36);
      }

      v43 = CFGetAllocator(a1);
      v44 = AMAuthInstallCreate(v43);
      if (v44)
      {
        v51 = v44;
        v52 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v52, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v60 = Mutable;
          AMAuthInstallSupportDictionarySetInteger64();
          AMAuthInstallSupportDictionarySetInteger32();
          AMAuthInstallSupportDictionarySetInteger32();
          AMAuthInstallSupportDictionarySetInteger32();
          v61 = *(a1 + 144);
          if (v61)
          {
            CFDictionarySetValue(v60, @"ApSikaFuse", v61);
          }

          v62 = *(a1 + 56);
          if (v62)
          {
            CFDictionarySetValue(v60, @"CertificateEpoch", v62);
          }

          v63 = *(a1 + 152);
          if (v63)
          {
            CFDictionarySetValue(v60, @"SerialString", v63);
          }

          if (*(a1 + 138))
          {
            AMAuthInstallSupportDictionarySetBoolean(v60, @"UIDMode", 1);
          }

          AMAuthInstallSupportDictionarySetBoolean(v60, @"ApProductionMode", *(a1 + 136));
          if (_loadFirmwareInfoDFU(a1))
          {
            v64 = 0;
          }

          else
          {
            v64 = *(a1 + 137);
          }

          AMAuthInstallSupportDictionarySetBoolean(v60, @"ApSecurityMode", v64);
          if (_loadFirmwareInfoDFU(a1))
          {
            v65 = 0;
          }

          else
          {
            v65 = *(a1 + 140);
          }

          AMAuthInstallSupportDictionarySetBoolean(v60, @"ApEffectiveSecurityMode", v65);
          if (_loadFirmwareInfoDFU(a1))
          {
            v66 = 0;
          }

          else
          {
            v66 = *(a1 + 139);
          }

          AMAuthInstallSupportDictionarySetBoolean(v60, @"ApEffectiveProductionMode", v66);
          v67 = 1;
          AMAuthInstallSupportDictionarySetBoolean(v60, @"ApInRomDFU", 1);
          Value = CFDictionaryGetValue(v19, @"SkipNoncesForAPSEP");
          if (Value)
          {
            v69 = Value;
            TypeID = CFBooleanGetTypeID();
            if (TypeID == CFGetTypeID(v69))
            {
              v67 = CFBooleanGetValue(v69) != 1;
            }
          }

          v71 = CFDictionaryGetValue(v19, @"AuthInstallRequestTicketWithoutNonce");
          if (v71 && (v72 = v71, v73 = CFBooleanGetTypeID(), v73 == CFGetTypeID(v72)))
          {
            if (CFBooleanGetValue(v72) == 1 || !v67)
            {
LABEL_49:
              if (v67)
              {
                v75 = *(a1 + 104);
                if (v75)
                {
                  CFDictionarySetValue(v60, @"SepNonce", v75);
                }
              }

LABEL_52:
              v139 = 0;
              if (_AMRUSBDeviceGetIBFL(*(a1 + 160), &v139) && (v139 & 4) != 0)
              {
                CFDictionarySetValue(v60, @"ApSupportsImg4", kCFBooleanTrue);
                if ((v139 & 0x20) != 0)
                {
                  CFDictionarySetValue(v60, @"ApImg4DigestType", @"sha2-384");
                }
              }

              v76 = CFDictionaryGetValue(v19, @"UserLocale");
              v77 = AMAuthInstallSetLocale(v51, v76);
              if (v77)
              {
                v28 = AMAuthInstallToRestoreError(v77);
LABEL_97:
                CFRelease(v60);
LABEL_98:
                if (!v28)
                {
LABEL_7:
                  v20 = CFDictionaryGetValue(v19, @"OnlyPersonalizeDFUFile");
                  if (v20 && CFEqual(v20, kCFBooleanTrue) || (v21 = sub_10002A384(*(a1 + 184), v19, (*(a1 + 68) >> 6) & 1), !v21))
                  {
                    v28 = 0;
                    *a3 = CFRetain(v19);
                  }

                  else
                  {
                    v28 = v21;
                    AMRLog(3, @"%s: failed to personalize bundle", v22, v23, v24, v25, v26, v27, "AMDFUModeDeviceCopyAuthInstallPreflightOptions");
                  }

                  goto LABEL_100;
                }

LABEL_99:
                AMRLog(3, @"%s: failed to configure authinstall", v45, v46, v47, v48, v49, v50, "AMDFUModeDeviceCopyAuthInstallPreflightOptions");
LABEL_100:
                CFRelease(v19);
                return v28;
              }

              v78 = CFDictionaryGetValue(v19, @"AuthInstallAllowMixAndMatch");
              if (v78)
              {
                v79 = v78;
                v80 = CFBooleanGetTypeID();
                if (v80 == CFGetTypeID(v79) && CFBooleanGetValue(v79) == 1)
                {
                  CFDictionaryAddValue(v60, @"ApAllowMixAndMatch", kCFBooleanTrue);
                }
              }

              v81 = CFDictionaryGetValue(v19, @"AuthInstallDemotionPolicyOverride");
              if (v81)
              {
                CFDictionarySetValue(v60, @"DemotionPolicy", v81);
              }

              v82 = CFDictionaryGetValue(v19, @"RequiresUIDMode");
              if (v82)
              {
                v83 = v82;
                v84 = CFBooleanGetTypeID();
                if (v84 == CFGetTypeID(v83) && CFBooleanGetValue(v83) == 1)
                {
                  CFDictionarySetValue(v60, @"RequiresUIDMode", kCFBooleanTrue);
                }
              }

              v85 = CFDictionaryGetValue(v19, @"UIDMode");
              if (v85)
              {
                v86 = v85;
                v87 = CFBooleanGetTypeID();
                if (v87 == CFGetTypeID(v86))
                {
                  CFDictionarySetValue(v60, @"UIDMode", v86);
                }
              }

              v88 = CFDictionaryGetValue(v19, @"ApTagOverrides");
              if (v88)
              {
                CFDictionarySetValue(v60, @"APTagOverrides", v88);
              }

              v89 = AMAuthInstallApSetParameters(v51, v60);
              if (v89)
              {
                v90 = v89;
                LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(v51, v89);
                AMRLog(3, @"Failed to set ap parameters: %@", v92, v93, v94, v95, v96, v97, LocalizedStatusString);
                v28 = AMAuthInstallToRestoreError(v90);
                CFRelease(v51);
                goto LABEL_97;
              }

              AMRAuthInstallInitOptionalFirmware(v51, v19);
              v98 = CFDictionaryGetValue(v19, @"BuildIdentityOverride");
              if (v98)
              {
                v99 = CFStringGetTypeID();
                if (v99 == CFGetTypeID(v98))
                {
                  v100 = CFGetAllocator(v51);
                  URLFromString = AMAuthInstallSupportCreateURLFromString(v100, v98);
                  if (!URLFromString)
                  {
                    CFRelease(v51);
                    v28 = 18;
                    goto LABEL_97;
                  }

                  v98 = URLFromString;
                  v102 = AMAuthInstallBundleOverrideBuildManifest(v51, URLFromString);
                  if (v102)
                  {
                    v103 = v102;
                    v104 = AMAuthInstallGetLocalizedStatusString(v51, v102);
                    AMRLog(3, @"Failed to build manifest override: %@", v105, v106, v107, v108, v109, v110, v104);
                    v28 = AMAuthInstallToRestoreError(v103);
                    CFRelease(v51);
                    CFRelease(v60);
                    v111 = 0;
LABEL_95:
                    CFRelease(v98);
LABEL_96:
                    v60 = v111;
                    if (!v111)
                    {
                      goto LABEL_98;
                    }

                    goto LABEL_97;
                  }
                }

                else
                {
                  v98 = 0;
                }
              }

              v112 = CFDictionaryGetValue(v19, @"RecoveryOSBuildIdentityOverride");
              if (v112 && (v119 = v112, v120 = CFStringGetTypeID(), v120 == CFGetTypeID(v119)))
              {
                v121 = CFGetAllocator(v51);
                v111 = AMAuthInstallSupportCreateURLFromString(v121, v119);
                if (!v111)
                {
                  CFRelease(v51);
                  v28 = 18;
                  goto LABEL_94;
                }

                v122 = AMAuthInstallBundleOverrideRecoveryOSBuildManifest(v51, v111);
                if (v122)
                {
                  v123 = v122;
                  v124 = AMAuthInstallGetLocalizedStatusString(v51, v122);
                  AMRLog(3, @"Failed to override recoveryOS build manifest: %@", v125, v126, v127, v128, v129, v130, v124);
                  v28 = AMAuthInstallToRestoreError(v123);
                  CFRelease(v51);
                  goto LABEL_94;
                }
              }

              else
              {
                v111 = 0;
              }

              v131 = AMRAuthInstallSetFDRTrustObjectHash(v51, v19, v113, v114, v115, v116, v117, v118);
              if (v131)
              {
                v28 = v131;
              }

              else
              {
                v28 = AMRAuthInstallEnablePersonalization(v51, v19);
                if (v28)
                {
                  AMRLog(3, @"%s: AMRAuthInstallEnablePersonalization failed", v132, v133, v134, v135, v136, v137, "_AMDFUModeDeviceConfigureAuthInstall");
                }

                else
                {
                  *(a1 + 184) = v51;
                }
              }

LABEL_94:
              CFRelease(v60);
              if (!v98)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }
          }

          else if (!v67)
          {
            goto LABEL_52;
          }

          v74 = *(a1 + 96);
          if (v74)
          {
            CFDictionarySetValue(v60, @"ApNonce", v74);
          }

          goto LABEL_49;
        }

        AMRLog(3, @"Failed to create ap parameters dict", v54, v55, v56, v57, v58, v59);
        CFRelease(v51);
      }

      v28 = 18;
      goto LABEL_99;
    }

    AMRLog(3, @"%s: failed to copy options", v13, v14, v15, v16, v17, v18, "AMDFUModeDeviceCopyAuthInstallPreflightOptions");
    return 18;
  }

  else
  {
    AMRLog(3, @"%s: bad argument - undefined arguments passed to function, caller passed NULL", v6, v7, v8, v9, v10, v11, "AMDFUModeDeviceCopyAuthInstallPreflightOptions");
    return 1;
  }
}

uint64_t AMRestorePerformGenericDFURestore(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  if (CFGetTypeID(a1) == qword_1000C8868)
  {
    WrappedDFUDevice = a1;
LABEL_3:

    return AMRestorePerformDFURestore(WrappedDFUDevice, a2, a3, a4);
  }

  v10 = CFGetTypeID(a1);
  if (v10 != AMTADModeDeviceGetTypeID())
  {
    v15 = CFGetTypeID(a1);
    if (v15 != AMPortDFUModeDeviceGetTypeID())
    {
      return 1;
    }

    WrappedDFUDevice = AMPortDFUModeDeviceGetWrappedDFUDevice(a1);
    goto LABEL_3;
  }

  return AMRestorePerformTADRestore(a1, a2, a3, a4, v11, v12, v13, v14);
}

void sub_100023008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%s: %p", a3, a4, a5, a6, a7, a8, "_AMDFUModeDeviceFinalize", a1);
  v9 = *(a1 + 160);
  if (v9)
  {
    _AMRUSBDeviceClose(v9);
    *(a1 + 160) = 0;
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 184) = 0;
  }

  if (*(a1 + 168) == 1)
  {

    _AMRestoreDestroyDeviceInfo((a1 + 40));
  }
}

uint64_t _AMRestoreErrorForIOReturn(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 <= -536870187)
  {
    if (a1 > -536870196)
    {
      if (a1 == -536870195)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v5[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "USB device not open", v5, 2u);
        }

        return 2001;
      }

      if (a1 == -536870194)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v5[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "USB not readable", v5, 2u);
        }

        return 2014;
      }
    }

    else
    {
      if (a1 == -536870208)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v5[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "USB device not found", v5, 2u);
        }

        return 2015;
      }

      if (a1 == -536870203)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v5[0]) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Exclusive access to USB device", v5, 2u);
        }

        return 2012;
      }
    }

LABEL_32:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109376;
      v5[1] = v3;
      v6 = 1024;
      v7 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unhandled error 0x%x returned as %d", v5, 0xEu);
    }

    return a2;
  }

  if (a1 > -536854450)
  {
    switch(a1)
    {
      case 0xE000404F:
        return 2008;
      case 0xE000405D:
        return 2011;
      case 0:
        return a1;
    }

    goto LABEL_32;
  }

  if (a1 != -536870186)
  {
    if (a1 == -536870163)
    {
      return 2006;
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "USB Timeout", v5, 2u);
  }

  return 2013;
}

NSError *createAndLogUSBErrorv(int a1, uint64_t a2, uint64_t a3)
{
  v4 = [[NSString alloc] initWithFormat:a2 arguments:a3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = @"Error message";
  v7 = v4;
  return [NSError errorWithDomain:@"AMRestoreErrorDomain" code:a1 userInfo:[NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1]];
}

BOOL _loadAndCacheIOUSBLibBundle(uint64_t a1, uint64_t a2)
{
  if (qword_1000C8870 != -1)
  {
    sub_1000765D8();
  }

  return qword_1000C8878 != 0;
}

void sub_10002359C(id a1)
{
  v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Extensions/IOUSBHostFamily.kext/Contents/PlugIns/IOUSBLib.bundle", kCFURLPOSIXPathStyle, 1u);
  v2 = CFBundleCreate(0, v1);
  v3 = v2;
  if (v2)
  {
    error = 0;
    v4 = CFBundleLoadExecutableAndReturnError(v2, &error);
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v5)
      {
        *buf = 138412290;
        v9 = @"/System/Library/Extensions/IOUSBHostFamily.kext/Contents/PlugIns/IOUSBLib.bundle";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "loaded bundle at %@", buf, 0xCu);
      }
    }

    else
    {
      if (v5)
      {
        *buf = 138412546;
        v9 = @"/System/Library/Extensions/IOUSBHostFamily.kext/Contents/PlugIns/IOUSBLib.bundle";
        v10 = 2112;
        v11 = error;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to load bundle at %@: %@", buf, 0x16u);
      }

      CFRelease(error);
    }

    PlugIn = CFBundleGetPlugIn(v3);
    if (PlugIn)
    {
      CFPlugInSetLoadOnDemand(PlugIn, 0);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = @"/System/Library/Extensions/IOUSBHostFamily.kext/Contents/PlugIns/IOUSBLib.bundle";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "disabled plugin unloading for %@", buf, 0xCu);
      }
    }
  }

  CFRelease(v1);
  qword_1000C8878 = v3;
}

uint64_t _getDeviceInterfaceForService(uint64_t a1)
{
  v2 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xFEu, 0x2Fu, 0xD5u, 0x2Fu, 0x3Bu, 0x5Au, 0x47u, 0x3Bu, 0x97u, 0x7Bu, 0xADu, 0x99u, 0, 0x1Eu, 0xB3u, 0xEDu);

  return sub_100023824(a1, "device", v2, v3);
}

uint64_t sub_100023824(uint64_t a1, uint64_t a2, const __CFUUID *a3, const __CFUUID *a4)
{
  v7 = a1;
  if (qword_1000C8870 == -1)
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    sub_1000765D8();
    if (!v7)
    {
      return 0;
    }
  }

  theScore = 0;
  theInterface = 0;
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v9 = IOCreatePlugInInterfaceForService(v7, a3, v8, &theInterface, &theScore);
  if (v9)
  {
    v10 = v9;
    memcpy(__dst, "<unknown>", 0x200uLL);
    entryID = 0;
    IORegistryEntryGetPath(v7, "IOService", __dst);
    IORegistryEntryGetRegistryEntryID(v7, &entryID);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = a2;
      v23 = 1024;
      v24 = v10;
      v25 = 2048;
      v26 = entryID;
      v27 = 2080;
      v28 = __dst;
      v29 = 1024;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "error getting plugin interface for %s: 0x%x, registryID %#llx (%s), service %u", buf, 0x2Cu);
    }

    if (v10 != -536870210 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 67109120;
    *&buf[4] = -536870210;
    v11 = "error code 0x%x (kIOReturnNoResources) may indicate that the host is running MacOS < 13.0, where root permission is required to communicate with Port DFU devices.";
    v12 = buf;
    v13 = 8;
    goto LABEL_15;
  }

  v14 = theInterface;
  if (!theInterface)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      __dst[0] = 136315138;
      *&__dst[1] = a2;
      v11 = "plugin interface for %s is NULL";
      v12 = __dst;
      v13 = 12;
      goto LABEL_15;
    }

    return 0;
  }

  *buf = 0;
  QueryInterface = (*theInterface)->QueryInterface;
  v16 = CFUUIDGetUUIDBytes(a4);
  v17 = (QueryInterface)(v14, *&v16.byte0, *&v16.byte8, buf);
  IODestroyPlugInInterface(theInterface);
  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      __dst[0] = 136315394;
      *&__dst[1] = a2;
      LOWORD(__dst[3]) = 1024;
      *(&__dst[3] + 2) = v17;
      v11 = "error querying %s interface: 0x%x";
      v12 = __dst;
      v13 = 18;
LABEL_15:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, v12, v13);
      return 0;
    }

    return 0;
  }

  return *buf;
}

uint64_t _getInterfaceInterfaceForService(uint64_t a1)
{
  v2 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0xADu, 0x51u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x64u, 0xBAu, 0xBDu, 0xD2u, 0xFu, 0x6Bu, 0x4Bu, 0x4Fu, 0x8Eu, 0x3Eu, 0xDCu, 0x36u, 4u, 0x69u, 0x87u, 0xADu);

  return sub_100023824(a1, "interface", v2, v3);
}

uint64_t _AMRecoveryModeDeviceCreate(uint64_t a1, void *a2)
{
  pthread_once(&stru_1000C84F8, sub_100024400);
  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 32) = 0;
    *(Instance + 64) = 0;
    *(Instance + 72) = 0;
    *(Instance + 77) = 0;
    *(Instance + 40) = a2;
    *(Instance + 48) = 0;
    *(Instance + 57) = -1;
    *(Instance + 61) = -1;
    *(Instance + 56) = _AMRUSBDeviceGetProductID(a2) == 4737;
    *(v4 + 208) = 0;
    *(v4 + 216) = 0;
    *(v4 + 224) = 0;
    *(v4 + 232) = 0;
  }

  return v4;
}

uint64_t sub_100024400()
{
  result = _CFRuntimeRegisterClass();
  qword_1000C8880 = result;
  return result;
}

uint64_t AMRecoveryModeDeviceIsBootstrapOnly(uint64_t a1, const __CFDictionary *a2)
{
  if (*(a1 + 84) || !sub_1000244A8(a1))
  {
    v4 = _AMRestoreCopyDeviceInfo(a1 + 88);
    if (v4)
    {
      v11 = v4;
      IsBootstrapOnly = AMRestoreDeviceIsBootstrapOnly(a2, v4, v5, v6, v7, v8, v9, v10);
      free(v11);
      return IsBootstrapOnly;
    }

    AMRLog(3, @"unable to get firmware info from device", v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

uint64_t sub_1000244A8(uint64_t a1)
{
  if (*(a1 + 84))
  {
    return 0;
  }

  if (*(a1 + 48) || (v10 = sub_1000248E8(a1), !v10))
  {
    FirmwareInfo = _AMRUSBDeviceGetFirmwareInfo(*(a1 + 40), a1 + 88, 0);
    v1 = FirmwareInfo;
    if (FirmwareInfo)
    {
      AMRLog(3, @"unable to get firmware info from device: %d", v4, v5, v6, v7, v8, v9, FirmwareInfo);
    }

    else
    {
      *(a1 + 84) = 1;
    }
  }

  else
  {
    v1 = v10;
    AMRLog(3, @"unable to open device interface: %d", v11, v12, v13, v14, v15, v16, v10);
  }

  return v1;
}

uint64_t AMRecoveryModeDeviceGetChipID(uint64_t a1)
{
  v2 = sub_1000244A8(a1);
  if (!v2)
  {
    return *(a1 + 88);
  }

  AMRLog(3, @"unable to get firmware info from device: %d", v3, v4, v5, v6, v7, v8, v2);
  return 0;
}

uint64_t AMRecoveryModeDeviceGetBoardID(uint64_t a1)
{
  v2 = sub_1000244A8(a1);
  if (!v2)
  {
    return *(a1 + 92);
  }

  AMRLog(3, @"unable to get firmware info from device: %d", v3, v4, v5, v6, v7, v8, v2);
  return 0xFFFFFFFFLL;
}

uint64_t AMRecoveryModeDeviceGetProductionMode(uint64_t a1)
{
  v2 = sub_1000244A8(a1);
  if (!v2)
  {
    return *(a1 + 184);
  }

  AMRLog(3, @"unable to get firmware info from device: %d", v3, v4, v5, v6, v7, v8, v2);
  return 0;
}

uint64_t sub_100024654(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  if (!v8)
  {
    result = sub_1000248E8(a1);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 48);
  }

  v9 = 60;
  if (a2)
  {
    v9 = 61;
  }

  v10 = *(a1 + v9);

  return _AMRUSBInterfaceWritePipe(v8, v10, a3, a4);
}

uint64_t AMRecoveryModeDeviceSetAutoBoot(uint64_t a1, int a2)
{
  sub_1000244A8(a1);
  v4 = 60.0;
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v4 = 300.0;
  }

  if (a2 == 1)
  {
    v5 = @"setenv auto-boot true";
  }

  else
  {
    v5 = @"setenv auto-boot false";
  }

  v6 = sub_100027604(a1, v5, 0, v4);
  if (v6)
  {
    return v6;
  }

  sub_1000244A8(a1);
  v7 = 60.0;
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v7 = 300.0;
  }

  v6 = sub_100027604(a1, @"saveenv", 0, v7);
  if (v6 != 21)
  {
    return v6;
  }

  theString = 0;
  sub_100024A34(a1, @"?", &theString);
  v8 = theString;
  if (theString)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *buffer = 0u;
    v21 = 0u;
    CFStringGetCString(theString, buffer, 128, 0x8000100u);
    v9 = strtol(buffer, 0, 16);
    if (v9 == -1)
    {
      v16 = 102;
      v17 = @"NVRAM is full and could not perform save";
    }

    else
    {
      if (v9 != -2)
      {
        v16 = 21;
        goto LABEL_20;
      }

      v16 = 103;
      v17 = @"Error writing to NVRAM";
    }

    AMRLog(3, v17, v10, v11, v12, v13, v14, v15);
LABEL_20:
    CFRelease(v8);
    return v16;
  }

  return 21;
}

uint64_t sub_100024878(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  sub_1000244A8(a1);
  v6 = 60.0;
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v6 = 300.0;
  }

  return sub_100027604(a1, a2, a3, v6);
}

uint64_t sub_1000248E8(uint64_t a1)
{
  v2 = _AMRUSBDeviceOpen(*(a1 + 40));
  if (v2)
  {
    goto LABEL_2;
  }

  Interface = _AMRUSBDeviceGetInterface(*(a1 + 40), 0xFFFFLL, 0xFFFFLL);
  *(a1 + 48) = Interface;
  if (Interface)
  {
    v2 = _AMRUSBInterfaceOpen(Interface);
    if (v2)
    {
LABEL_2:
      Pipes = v2;
      goto LABEL_3;
    }

    v7 = *(a1 + 48);
    if (*(a1 + 56))
    {
      FileTransferPipe = _AMRUSBInterfaceGetFileTransferPipe(v7, (a1 + 60), (a1 + 62));
      if (!FileTransferPipe)
      {
        return 0;
      }

      AMRLog(4, @"_AMRUSBInterfaceGetFileTransferPipe returned %d", v9, v10, v11, v12, v13, v14, FileTransferPipe);
      Pipes = 0;
      *(a1 + 60) = -1;
      return Pipes;
    }

    Pipes = _AMRUSBInterfaceGetPipes(v7, (a1 + 57), (a1 + 58), (a1 + 59), (a1 + 61), (a1 + 60));
    if (!Pipes)
    {
      return Pipes;
    }
  }

  else
  {
    Pipes = 2002;
  }

LABEL_3:
  v4 = *(a1 + 48);
  if (v4)
  {
    _AMRUSBInterfaceClose(v4);
    *(a1 + 48) = 0;
  }

  return Pipes;
}

uint64_t sub_1000249C8(uint64_t a1, const __CFString *a2)
{
  v4 = sub_100025EF0(a1);
  AMRLog(7, @"Max file size is: %d", v5, v6, v7, v8, v9, v10, v4);

  return sub_100027A20(a1, a2, v4, v11, v12, v13, v14, v15);
}

uint64_t sub_100024A34(uint64_t a1, uint64_t a2, CFStringRef *a3)
{
  *a3 = 0;
  if (*(a1 + 56) != 1)
  {
    return 4;
  }

  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"getenv %@", a2);
  sub_1000244A8(a1);
  v6 = 60.0;
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v6 = 300.0;
  }

  v7 = sub_10002780C(a1, v5, 0, v6);
  if (!v7)
  {
    bzero(cStr, 0x400uLL);
    v7 = sub_100027E58(a1, cStr);
    if (!v7)
    {
      *a3 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    }
  }

  CFRelease(v5);
  return v7;
}

uint64_t AMRecoveryModeDeviceConfigureAuthInstall(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theString = 0;
  if (*(a1 + 216))
  {
    AMRLog(7, @"authinstall has already been configured for this device", a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (*(a1 + 84) || (v8 = sub_1000244A8(a1), !v8))
  {
    v11 = _AMRUSBDeviceAddNonceWithInfo(*(a1 + 40), a1 + 88, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      v8 = v11;
      AMRLog(3, @"unable to get nonce info from device: %d", v12, v13, v14, v15, v16, v17, v11);
      return v8;
    }

    v18 = CFGetAllocator(a1);
    v19 = AMAuthInstallCreate(v18);
    if (v19)
    {
      v20 = v19;
      v21 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v21, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v29 = Mutable;
        AMAuthInstallSupportDictionarySetInteger64();
        AMAuthInstallSupportDictionarySetInteger32();
        AMAuthInstallSupportDictionarySetInteger32();
        AMAuthInstallSupportDictionarySetInteger32();
        v30 = *(a1 + 192);
        if (v30)
        {
          CFDictionarySetValue(v29, @"ApSikaFuse", v30);
        }

        v31 = *(a1 + 104);
        if (v31)
        {
          CFDictionarySetValue(v29, @"CertificateEpoch", v31);
        }

        v32 = *(a1 + 200);
        if (v32)
        {
          CFDictionarySetValue(v29, @"SerialString", v32);
        }

        AMAuthInstallSupportDictionarySetBoolean(v29, @"ApProductionMode", *(a1 + 184));
        AMAuthInstallSupportDictionarySetBoolean(v29, @"ApSecurityMode", *(a1 + 185));
        Value = CFDictionaryGetValue(a2, @"AuthInstallRequestTicketWithoutNonce");
        v36 = Value && (v34 = Value, TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v34)) && CFBooleanGetValue(v34) == 1;
        v37 = CFDictionaryGetValue(a2, @"SkipNoncesForAPSEP");
        v40 = !v37 || (v38 = v37, v39 = CFBooleanGetTypeID(), v39 != CFGetTypeID(v38)) || CFBooleanGetValue(v38) != 1;
        if (!v36 && v40)
        {
          v41 = *(a1 + 144);
          if (v41)
          {
            CFDictionarySetValue(v29, @"ApNonce", v41);
          }
        }

        if (v40)
        {
          v42 = *(a1 + 152);
          if (v42)
          {
            CFDictionarySetValue(v29, @"SepNonce", v42);
          }
        }

        v43 = kCFBooleanFalse;
        if (*(a1 + 191))
        {
          v44 = *(a1 + 116);
          if ((v44 & 4) != 0)
          {
            CFDictionarySetValue(v29, @"ApSupportsImg4", kCFBooleanTrue);
            v44 = *(a1 + 116);
          }

          if ((v44 & 0x20) != 0)
          {
            CFDictionarySetValue(v29, @"ApImg4DigestType", @"sha2-384");
            v44 = *(a1 + 116);
          }

          if ((v44 & 8) != 0)
          {
            v45 = kCFBooleanTrue;
          }

          else
          {
            v45 = kCFBooleanFalse;
          }

          if ((v44 & 0x10) != 0)
          {
            v43 = kCFBooleanTrue;
          }
        }

        else
        {
          v45 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v29, @"ApEffectiveSecurityMode", v45);
        CFDictionaryAddValue(v29, @"ApEffectiveProductionMode", v43);
        v46 = CFDictionaryGetValue(a2, @"AuthInstallAllowMixAndMatch");
        if (v46)
        {
          v47 = v46;
          v48 = CFBooleanGetTypeID();
          if (v48 == CFGetTypeID(v47) && CFBooleanGetValue(v47) == 1)
          {
            CFDictionaryAddValue(v29, @"ApAllowMixAndMatch", kCFBooleanTrue);
          }
        }

        v49 = CFDictionaryGetValue(a2, @"AuthInstallDemotionPolicyOverride");
        if (v49)
        {
          CFDictionarySetValue(v29, @"DemotionPolicy", v49);
        }

        v50 = AMAuthInstallApSetParameters(v20, v29);
        if (v50)
        {
          goto LABEL_68;
        }

        AMRAuthInstallInitOptionalFirmware(v20, a2);
        v57 = AMRAuthInstallCopyVariant(v20, a2);
        cf = 0;
        if (v57)
        {
          v64 = v57;
          if (AMRAuthInstallCopyBuildIdentity(v20, a2, v57, &cf) || !cf)
          {
            AMRLog(3, @"Failed to read build identity.", v65, v66, v67, v68, v69, v70);
          }

          else
          {
            if (AMAuthInstallSupportGetValueForKeyPathInDict(kCFAllocatorDefault, cf, @"Info.RequiresNonceSlot") == kCFBooleanTrue)
            {
              LODWORD(valuePtr[0]) = 0;
              v135 = 2;
              v78 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
              v79 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v135);
              CFDictionarySetValue(v29, @"ApNonceSlotID", v78);
              CFDictionarySetValue(v29, @"SepNonceSlotID", v79);
              CFRelease(v79);
              CFRelease(v78);
              v77 = @"Device will use nonce slots";
            }

            else
            {
              v77 = @"Device will not use nonce slots";
            }

            AMRLog(6, v77, v71, v72, v73, v74, v75, v76);
            CFRelease(cf);
          }

          CFRelease(v64);
        }

        else
        {
          AMRLog(3, @"Failed to read build variant.", v58, v59, v60, v61, v62, v63);
        }

        if (sub_100024A34(a1, @"anid", &theString))
        {
          AMRLog(6, @"No anid set, will not set anid in IM4R", v80, v81, v82, v83, v84, v85);
        }

        else
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v86 = theString;
          if (CFStringGetCString(theString, valuePtr, 16, 0x8000100u))
          {
            strtol(valuePtr, 0, 16);
            AMAuthInstallSupportDictionarySetInteger32();
          }

          else
          {
            AMRLog(6, @"Invalid anid set, will not set anid in IM4R", v87, v88, v89, v90, v91, v92);
          }

          CFRelease(v86);
          theString = 0;
        }

        v50 = AMAuthInstallApSetParameters(v20, v29);
        if (v50)
        {
LABEL_68:
          v93 = v50;
          AMRLog(3, @"Failed to set ap parameters", v51, v52, v53, v54, v55, v56);
          v8 = AMAuthInstallToRestoreError(v93);
          CFRelease(v20);
LABEL_69:
          v94 = v29;
LABEL_70:
          CFRelease(v94);
          return v8;
        }

        AMRAuthInstallInitOptionalFirmware(v20, a2);
        v96 = CFDictionaryGetValue(a2, @"BuildIdentityOverride");
        if (v96)
        {
          v97 = CFStringGetTypeID();
          if (v97 == CFGetTypeID(v96))
          {
            v98 = CFGetAllocator(v20);
            URLFromString = AMAuthInstallSupportCreateURLFromString(v98, v96);
            if (!URLFromString)
            {
              CFRelease(v20);
              v8 = 18;
              goto LABEL_69;
            }

            v96 = URLFromString;
            v100 = AMAuthInstallBundleOverrideBuildManifest(v20, URLFromString);
            if (v100)
            {
              v107 = v100;
              AMRLog(3, @"Failed to build manifest override", v101, v102, v103, v104, v105, v106);
              v8 = AMAuthInstallToRestoreError(v107);
              CFRelease(v20);
              CFRelease(v29);
              v108 = 0;
              goto LABEL_92;
            }
          }

          else
          {
            v96 = 0;
          }
        }

        v109 = CFDictionaryGetValue(a2, @"RecoveryOSBuildIdentityOverride");
        if (v109 && (v116 = v109, v117 = CFStringGetTypeID(), v117 == CFGetTypeID(v116)))
        {
          v118 = CFGetAllocator(v20);
          v108 = AMAuthInstallSupportCreateURLFromString(v118, v116);
          if (!v108)
          {
            CFRelease(v20);
            v8 = 18;
            goto LABEL_91;
          }

          v119 = AMAuthInstallBundleOverrideRecoveryOSBuildManifest(v20, v108);
          if (v119)
          {
            v120 = v119;
            LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(v20, v119);
            AMRLog(3, @"Failed to override recoveryOS build manifest: %@", v122, v123, v124, v125, v126, v127, LocalizedStatusString);
            v8 = AMAuthInstallToRestoreError(v120);
            CFRelease(v20);
            goto LABEL_91;
          }
        }

        else
        {
          v108 = 0;
        }

        v128 = AMRAuthInstallSetFDRTrustObjectHash(v20, a2, v110, v111, v112, v113, v114, v115);
        if (v128)
        {
          v8 = v128;
        }

        else
        {
          v8 = AMRAuthInstallEnablePersonalization(v20, a2);
          if (v8)
          {
            AMRLog(3, @"%s: AMRAuthInstallEnablePersonalization failed", v129, v130, v131, v132, v133, v134, "AMRecoveryModeDeviceConfigureAuthInstall");
          }

          else
          {
            *(a1 + 216) = v20;
          }
        }

LABEL_91:
        CFRelease(v29);
        if (!v96)
        {
LABEL_93:
          if (!v108)
          {
            return v8;
          }

          v94 = v108;
          goto LABEL_70;
        }

LABEL_92:
        CFRelease(v96);
        goto LABEL_93;
      }

      AMRLog(3, @"Failed to create ap paramters dict", v23, v24, v25, v26, v27, v28);
      CFRelease(v20);
    }

    return 18;
  }

  return v8;
}

uint64_t AMRestorePerformRecoveryModeRestore(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v195 = 0;
  cf = 0;
  v193 = 0;
  v194 = 0;
  AMRestoreCaptureSubsystemLogsIfNeeded();
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  if (*(a1 + 48) || (v54 = sub_1000248E8(a1), !v54))
  {
    *buffer = 0;
    sub_100024A34(a1, @"build-version", buffer);
    v14 = *buffer;
    if (*buffer)
    {
      AMRLog(7, @"iBoot build-version = %@", v8, v9, v10, v11, v12, v13, *buffer);
      CFRelease(v14);
    }

    sub_100024A34(a1, @"build-style", buffer);
    v21 = *buffer;
    if (*buffer)
    {
      AMRLog(7, @"iBoot build-style = %@", v15, v16, v17, v18, v19, v20, *buffer);
      CFRelease(v21);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    if (!MutableCopy)
    {
      AMRLog(3, @"unable to create mutable copy of options", v23, v24, v25, v26, v27, v28);
      v47 = 0;
      goto LABEL_16;
    }

    v29 = MutableCopy;
    if (!*(a1 + 56))
    {
      *&buffer[8] = 0;
      *buffer = 0;
      LODWORD(theString) = 12;
      sub_100025E80(a1, 3, v23, v24, v25, v26, v27, v28);
      v92 = sub_100027928(a1, 0, 0, 0, &theString, buffer);
      if (v92)
      {
LABEL_29:
        v47 = v92;
        v55 = 0;
        v56 = 0;
        goto LABEL_63;
      }

      if (buffer[0])
      {
        v55 = 0;
        v56 = 0;
        v47 = 0xFFFFFFFFLL;
LABEL_63:
        CFRelease(v29);
        goto LABEL_64;
      }
    }

    sub_100025E80(a1, 4, v23, v24, v25, v26, v27, v28);
    sub_100025EF0(a1);
    if (*(a1 + 216))
    {
LABEL_9:
      Value = CFDictionaryGetValue(v29, @"PersonalizedRestoreBundlePath");
      if (Value)
      {
        if (AMRestoreOptionsAreLegacy(v29, v36, v37, v38, v39, v40, v41, v42))
        {
          v44 = AMRAuthInstallAlignOptionsToPersonalizedBundle(v29, Value, 1);
          if (v44)
          {
            v47 = v44;
            AMRLog(3, @"failed to align options with personalized bundle", v45, v46, v39, v40, v41, v42);
LABEL_56:
            v56 = 0;
            v55 = 0;
            v99 = 0;
LABEL_57:
            if (Value && v47)
            {
              AMRAuthInstallDeletePersonalizedBundle(Value, v29);
            }

            if (v99)
            {
              CFRelease(v99);
            }

            if (!v29)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }
        }
      }

      sub_100026114(a1, v29, 0, 0, v39, v40, v41, v42);
      if (!v29)
      {
        AMRLog(3, @"_resolveBundlePathOptions(true) for recovery mode failed", v57, v58, v59, v60, v61, v62);
        return 1;
      }

      IsBootstrapOnly = AMRestoreDeviceIsBootstrapOnly(v29, (a1 + 88), v57, v58, v59, v60, v61, v62);
      if (!IsBootstrapOnly)
      {
        theString = 0;
        sub_100024A34(a1, @"radio-error", &theString);
        v70 = theString;
        if (theString)
        {
          v205 = 0u;
          v206[0] = 0u;
          v204 = 0u;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          *buffer = 0u;
          CFStringGetCString(theString, buffer, 128, 0x8000100u);
          v71 = strtol(buffer, 0, 0);
          v78 = v71;
          if (v71)
          {
            AMRLog(4, @"radio-error = %d", v72, v73, v74, v75, v76, v77, v71);
            v197 = 0;
            sub_100024A34(a1, @"radio-error-string", &v197);
            v85 = v197;
            if (v197)
            {
              AMRLog(4, @"radio-error-string = '%@'", v79, v80, v81, v82, v83, v84, v197);
              CFRelease(v85);
            }

            if ((v78 & 0xFFFFFF00) == 0x200)
            {
              AMRLog(3, @"fatal recovery mode radio error", v79, v80, v81, v82, v83, v84);
              CFRelease(v70);
              AMRLog(3, @"radio errors detected; stopping", v86, v87, v88, v89, v90, v91);
              return 23;
            }
          }

          CFRelease(v70);
        }

        else
        {
          AMRLog(7, @"radio-error not set", v64, v65, v66, v67, v68, v69);
        }
      }

      if (!*(a1 + 84))
      {
        v94 = sub_1000244A8(a1);
        if (v94)
        {
          v47 = v94;
          goto LABEL_56;
        }
      }

      v207 = 0;
      memset(v206, 0, sizeof(v206));
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      *buffer = 0u;
      if (_AMRestoreGetDeviceMapEntryForHardware(v29, (a1 + 88), buffer, v49, v50, v51, v52, v53) != 1)
      {
        v47 = 5;
        goto LABEL_56;
      }

      if (*(a1 + 191))
      {
        v93 = (*(a1 + 116) >> 2) & 1;
      }

      else
      {
        LOBYTE(v93) = 0;
      }

      if (*(a1 + 184) == 1)
      {
        AMRLog(4, @"%@: production fused device", v48, v49, v50, v51, v52, v53, a1);
      }

      v95 = CFDictionaryGetValue(v29, @"BoardConfig");
      *(a1 + 64) = v95;
      if (v95)
      {
        CFRetain(v95);
      }

      else
      {
        *(a1 + 64) = CFStringCreateWithCString(kCFAllocatorDefault, v206 + 8, 0x8000100u);
      }

      *(a1 + 72) = CFStringCreateWithCString(kCFAllocatorDefault, &v206[2] + 8, 0x8000100u);
      v96 = *(a1 + 96);
      if (!((*&buffer[8] >= v96) | v93 & 1))
      {
        v47 = 20;
        goto LABEL_56;
      }

      if (*(a1 + 191) != 1 || (*(a1 + 116) & 1) == 0)
      {
        if (*&buffer[8] <= v96)
        {
          v98 = 0;
          v97 = 1;
LABEL_82:
          v99 = _AMRestoreCopyTargetForBoardConfig(*(a1 + 64));
          sub_100026114(a1, v29, *(a1 + 72), v99, v101, v102, v103, v104);
          v105 = *(a1 + 116);
          v106 = CFGetAllocator(a1);
          if (AMAuthInstallApPersonalizationEnabled(*(a1 + 216)) && (v107 = CFDictionaryGetValue(v29, @"PersonalizedRestoreBundlePath")) != 0 || (v107 = CFDictionaryGetValue(v29, @"RestoreBundlePath")) != 0)
          {
            v114 = CFURLCreateWithFileSystemPath(v106, v107, kCFURLPOSIXPathStyle, 1u);
            if (v114)
            {
              v115 = v114;
              v56 = CFRetain(v114);
              CFRelease(v115);
LABEL_90:
              if ((v105 & 0x40) == 0 || (RestoreLocalPolicyComponentPath = AMAuthInstallBundleGetRestoreLocalPolicyComponentPath(), v118 = sub_100027EC4(a1, v56, RestoreLocalPolicyComponentPath, @"lpolrestore", "local policy"), !v118))
              {
                if ((v105 & 2) == 0 || (v118 = sub_100026374(a1, v56), !v118))
                {
                  if (IsBootstrapOnly)
                  {
                    v119 = 1;
                  }

                  else
                  {
                    v119 = v97;
                  }

                  if (v119)
                  {
                    v120 = CFDictionaryGetValue(v29, @"BootImageFile");
                    if (v120)
                    {
                      v127 = v120;
                      v128 = CFDictionaryGetValue(v29, @"RestoreKernelCacheFile");
                      if (v128)
                      {
                        if (AMAuthInstallBundleCreatePersonalizedPath(*(a1 + 216), v128, &v194))
                        {
                          AMRLog(3, @"failed to get personalized kernel cache path", v129, v130, v131, v132, v133, v134);
                          v55 = 0;
                          v47 = 31;
                          goto LABEL_57;
                        }

                        v55 = sub_1000269D4(a1, v29, v129, v130, v131, v132, v133, v134);
                        if (v55)
                        {
                          if (!sub_100026BE8(a1, v29, v143, v144, v145, v146, v147, v148) || (sub_100026C30(a1, v29, &cf, v149, v150, v151, v152, v153) & 1) != 0)
                          {
                            if (sub_1000263CC(a1) == 2)
                            {
                              v154 = sub_100026CB0(a1, v29, &v193);
                            }

                            else
                            {
                              v154 = sub_100026DC8(a1, v29, &v193);
                            }

                            v47 = v154;
                            if (v154)
                            {
                              AMRLog(3, @"_AMRestoreCopyiBootFirmwareURLs returned %d", v155, v156, v157, v158, v159, v160, v154);
                              goto LABEL_57;
                            }

                            if (v193)
                            {
                              v162 = CFDictionaryContainsKey(v193, @"RestoreDCP") != 0;
                            }

                            else
                            {
                              v162 = 0;
                            }

                            if (!sub_100026EB8(a1, v29, v155, v156, v157, v158, v159, v160) || v162 || (v169 = sub_100026EDC(a1, v29, v163, v164, v165, v166, v167, v168), !v169))
                            {
                              v170 = CFDictionaryGetValue(v29, @"AdditionalBootImages");
                              if (!v170)
                              {
                                AMRLog(3, @"No additional boot images found", v48, v49, v50, v51, v52, v53);
                              }

                              if (*(a1 + 208))
                              {
                                v171 = @"A user cancel restore was requested";
LABEL_135:
                                AMRLog(3, v171, v48, v49, v50, v51, v52, v53);
                                v47 = 99;
                                goto LABEL_57;
                              }

                              if (IsBootstrapOnly)
                              {
                                v172 = CFDictionaryGetValue(v29, @"WriteBootImgToDisk");
                                if (v172)
                                {
                                  v173 = v172;
                                  v174 = CFGetTypeID(v172);
                                  if (v174 == CFBooleanGetTypeID() && v173 == kCFBooleanTrue)
                                  {
                                    v175 = @"/tmp/bootImg";
                                  }

                                  else
                                  {
                                    v191 = CFGetTypeID(v173);
                                    if (v191 == CFStringGetTypeID())
                                    {
                                      v175 = v173;
                                    }

                                    else
                                    {
                                      v175 = 0;
                                    }
                                  }
                                }

                                else
                                {
                                  v175 = 0;
                                }

                                v169 = sub_1000270BC(a1, v127, v55, v194, v170, v175);
                                if (!v169)
                                {
                                  v169 = sub_100027198(a1, v29, v48, v49, v50, v51, v52, v53);
                                }
                              }

                              else
                              {
                                v169 = sub_100026560(a1, v29, v193);
                                if (!v169)
                                {
                                  v176 = CFDictionaryGetValue(v29, @"PreventRestoresIfNVRAMSet");
                                  if (v176)
                                  {
                                    v177 = v176;
                                    v178 = CFGetTypeID(v176);
                                    if (v178 == CFBooleanGetTypeID() && CFBooleanGetValue(v177) == 1)
                                    {
                                      AMRLog(3, @"Checking for uncollected factory logs on device....", v179, v180, v181, v182, v183, v184);
                                      sub_100024A34(a1, @"prevent-restores", &v195);
                                      if (v195)
                                      {
                                        AMRLog(3, @"Device has uncollected factory logs, aborting restore...", v185, v186, v187, v188, v189, v190);
                                        v47 = 25;
                                        goto LABEL_57;
                                      }
                                    }
                                  }

                                  v169 = sub_100027220(a1, v29, v127);
                                  if (!v169)
                                  {
                                    v169 = sub_1000273D0(a1, v55, v48, v49, v50, v51, v52, v53);
                                    if (!v169)
                                    {
                                      if (!cf || (v169 = sub_10002745C(a1, cf, v48, v49, v50, v51, v52, v53), !v169))
                                      {
                                        sub_100025E80(a1, 7, v48, v49, v50, v51, v52, v53);
                                        v169 = sub_1000249C8(a1, v194);
                                        if (!v169)
                                        {
                                          if (*(a1 + 208))
                                          {
                                            v171 = @"A user cancel restore was requested, stoping before device boot.";
                                            goto LABEL_135;
                                          }

                                          v169 = sub_100027510(a1, v192, v48, v49, v50, v51, v52, v53);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            v47 = v169;
                            goto LABEL_57;
                          }

                          v161 = @"No suitable SEP firmware found";
                        }

                        else
                        {
                          v161 = @"No suitable device tree found";
                        }

                        AMRLog(3, v161, v143, v144, v145, v146, v147, v148);
LABEL_108:
                        v47 = 1;
                        goto LABEL_57;
                      }

                      v142 = @"No kernel cache specified";
                    }

                    else
                    {
                      v142 = @"No boot image specified";
                    }

                    AMRLog(3, v142, v121, v122, v123, v124, v125, v126);
                    v55 = 0;
                    goto LABEL_108;
                  }

                  if (sub_1000263CC(a1) != 1)
                  {
                    goto LABEL_111;
                  }

                  v135 = sub_100026468(a1, v29);
                  if (v135)
                  {
                    v47 = v135;
                    AMRLog(3, @"Couldn't retrieve iBootStage1 firmware images", v136, v137, v138, v139, v140, v141);
LABEL_113:
                    v55 = 0;
                    goto LABEL_57;
                  }

                  if (CFDictionaryGetCount(0) < 1 || (v118 = sub_100026560(a1, v29, 0), !v118))
                  {
LABEL_111:
                    v118 = sub_100026828(a1, v29, v98, v49, v50, v51, v52, v53);
                  }
                }
              }

              v47 = v118;
              goto LABEL_113;
            }

            v116 = @"failed to create url for personalized restore bundle";
          }

          else
          {
            v116 = @"device requires a personalized restore bundle";
          }

          AMRLog(3, v116, v108, v109, v110, v111, v112, v113);
          v56 = 0;
          goto LABEL_90;
        }

        if (_AMRUSBDeviceGetProductID(*(a1 + 40)) == 4736 && *(a1 + 96) <= 3u && *&buffer[8] > 3u)
        {
          v97 = 0;
          v98 = @"WTF";
          goto LABEL_82;
        }
      }

      v97 = 0;
      v98 = @"iBEC";
      goto LABEL_82;
    }

    sub_100025E80(a1, 45, v30, v31, v32, v33, v34, v35);
    *buffer = 0;
    v92 = AMRecoveryModeDeviceCopyAuthInstallPreflightOptions(a1, v29, buffer);
    if (!v92)
    {
      CFRelease(v29);
      v29 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *buffer);
      CFRelease(*buffer);
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  v47 = v54;
LABEL_16:
  v55 = 0;
  v56 = 0;
LABEL_64:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v194)
  {
    CFRelease(v194);
  }

  if (v193)
  {
    CFRelease(v193);
  }

  if (v195)
  {
    CFRelease(v195);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v47)
  {
    AMRLog(3, @"%@: Recovery mode failed (result = %d)", v48, v49, v50, v51, v52, v53, a1, v47);
  }

  else
  {
    AMRLog(6, @"%@: Recovery mode succeeded", v48, v49, v50, v51, v52, v53, a1);
  }

  return v47;
}

void sub_100025E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%@: operation %d progress %d", a3, a4, a5, a6, a7, a8, a1, a2, 0xFFFFFFFFLL);
  v10 = *(a1 + 16);
  if (v10)
  {
    v10(a1, a2, 0xFFFFFFFFLL, *(a1 + 24));
  }

  *(a1 + 32) = a2;
  *(a1 + 36) = -1;
}

uint64_t sub_100025EF0(uint64_t a1)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  sub_1000244A8(a1);
  v2 = 60.0;
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v2 = 300.0;
  }

  if (!sub_100027604(a1, @"getenv ramdisk-size", 0, v2))
  {
    bzero(__str, 0x400uLL);
    if (!sub_100027E58(a1, __str))
    {
      return strtol(__str, 0, 16);
    }
  }

  v9 = 0x10000000;
  AMRLog(7, @"Unable to query iBoot ramdisk-size. Libusbrestore error : %d", v3, v4, v5, v6, v7, v8, 0x10000000);
  return v9;
}

uint64_t AMRecoveryModeDeviceCopyAuthInstallPreflightOptions(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  AMRestoreCaptureSubsystemLogsIfNeeded();
  if (a1 && a2 && a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    if (MutableCopy)
    {
      v19 = MutableCopy;
      v20 = AMRecoveryModeDeviceConfigureAuthInstall(a1, MutableCopy, v13, v14, v15, v16, v17, v18);
      if (v20)
      {
        v27 = v20;
        AMRLog(3, @"%s: failed to configure authinstall", v21, v22, v23, v24, v25, v26, "AMRecoveryModeDeviceCopyAuthInstallPreflightOptions");
      }

      else
      {
        v27 = sub_10002A384(*(a1 + 216), v19, (*(a1 + 116) >> 6) & 1);
        if (v27)
        {
          AMRLog(3, @"%s: failed to personalize bundle", v28, v29, v30, v31, v32, v33, "AMRecoveryModeDeviceCopyAuthInstallPreflightOptions");
        }

        else
        {
          *a3 = CFRetain(v19);
        }
      }

      CFRelease(v19);
    }

    else
    {
      AMRLog(3, @"%s: failed to copy options", v13, v14, v15, v16, v17, v18, "AMRecoveryModeDeviceCopyAuthInstallPreflightOptions");
      return 18;
    }
  }

  else
  {
    AMRLog(3, @"%s: bad argument - undefined arguments passed to function, caller passed NULL", v6, v7, v8, v9, v10, v11, "AMRecoveryModeDeviceCopyAuthInstallPreflightOptions");
    return 1;
  }

  return v27;
}

void sub_100026114(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = 0;
  cf = 0;
  if (!a1)
  {
    v28 = @"Cannot resolve bundle path options without device reference";
LABEL_9:
    AMRLog(3, v28, a3, a4, a5, a6, a7, a8);
    goto LABEL_10;
  }

  if (!a2)
  {
    v28 = @"Cannot resolve bundle path options without options";
    goto LABEL_9;
  }

  IsBootstrapOnly = AMRestoreDeviceIsBootstrapOnly(a2, (a1 + 88), a3, a4, a5, a6, a7, a8);
  if (AMRestoreOptionsAreLegacy(a2, v13, v14, v15, v16, v17, v18, v19))
  {
    v20 = CFDictionaryGetValue(a2, @"RestoreBundlePath");
    if (v20)
    {
      v21 = v20;
      v42 = 0;
      value = 0;
      v41 = 0;
      if (a3 | a4)
      {
        v38 = CFDictionaryGetValue(a2, @"KernelCacheType");
        v25 = CFDictionaryGetValue(a2, @"BootImageType");
        p_value = &value;
        v27 = &v42;
        v20 = v21;
        v22 = a3;
        v23 = a4;
        v24 = v38;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        p_value = 0;
        v27 = 0;
      }

      if (!AMRestoreCreatePathsForBundle(v20, v22, v23, v24, v25, p_value, v27, &v41))
      {
        if (value)
        {
          CFDictionaryAddValue(a2, @"RestoreKernelCacheFile", value);
          CFRelease(value);
        }

        if (v42)
        {
          CFDictionaryAddValue(a2, @"BootImageFile", v42);
          CFRelease(v42);
        }

        if (v41)
        {
          CFDictionaryAddValue(a2, @"FirmwareDirectory", v41);
          CFRelease(v41);
        }
      }
    }

    goto LABEL_10;
  }

  v29 = *(a1 + 216);
  if (IsBootstrapOnly)
  {
LABEL_18:
    if (AMRAuthInstallCopyFileSystemPathForKey(v29, a2, @"KernelCache", &cf))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (AMRAuthInstallCopyFileSystemPathForKey(v29, a2, @"RestoreKernelCache", &cf))
  {
    v29 = *(a1 + 216);
    goto LABEL_18;
  }

LABEL_19:
  CFDictionarySetValue(a2, @"RestoreKernelCacheFile", cf);
LABEL_20:
  v30 = CFDictionaryGetValue(a2, @"BootImageTagOverride");
  if (v30)
  {
    v37 = v30;
    AMRLog(5, @"Sending custom image tag to memboot: %@\n", v31, v32, v33, v34, v35, v36, v30);
  }

  else
  {
    v37 = @"RestoreRamDisk";
  }

  if (!AMRAuthInstallCopyFileSystemPathForKey(*(a1 + 216), a2, v37, &v39))
  {
    CFDictionarySetValue(a2, @"BootImageFile", v39);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v39)
  {
    CFRelease(v39);
  }
}

uint64_t sub_100026374(uint64_t a1, const void *a2)
{
  ApTicketComponentPath = AMAuthInstallBundleGetApTicketComponentPath(*(a1 + 216));

  return sub_100027EC4(a1, a2, ApTicketComponentPath, @"ticket", "ap ticket");
}

uint64_t sub_1000263CC(uint64_t a1)
{
  cf1 = 0;
  v1 = sub_100024A34(a1, @"boot-stage", &cf1);
  v2 = cf1;
  if (v1)
  {
    v3 = 0;
    if (!cf1)
    {
      return v3;
    }

    goto LABEL_8;
  }

  if (CFEqual(cf1, @"1") == 1)
  {
    v3 = 1;
    if (!v2)
    {
      return v3;
    }

    goto LABEL_8;
  }

  v3 = 2 * (CFEqual(v2, @"2") == 1);
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

  return v3;
}

uint64_t sub_100026560(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  Value = CFDictionaryGetValue(theDict, @"DisableiBootFirmware");
  if (Value)
  {
    v7 = Value;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      if (CFBooleanGetValue(v7))
      {
        AMRLog(3, @"_sendiBootFirmwareToDevice disabled by configuration", v9, v10, v11, v12, v13, v14);
        return 0;
      }
    }
  }

  Count = CFDictionaryGetCount(a3);
  v59 = 0;
  IsBootstrapOnly = AMRestoreDeviceIsBootstrapOnly(theDict, (a1 + 88), v17, v18, v19, v20, v21, v22);
  v24 = sub_10002808C(a1, a3, @"RestoreANS", &v59, Count, theDict);
  if (v24)
  {
    goto LABEL_6;
  }

  if (!IsBootstrapOnly)
  {
    v31 = AMRecoveryModeDeviceSetAutoBoot(a1, 0);
    if (v31)
    {
      return v31;
    }
  }

  v31 = sub_100028160(a1, theDict, v25, v26, v27, v28, v29, v30);
  if (v31)
  {
    return v31;
  }

  v24 = sub_10002808C(a1, a3, @"iBootData", &v59, Count, theDict);
  if (v24 || (v32 = CFDictionaryContainsKey(a3, @"RestoreDCP"), v24 = sub_10002808C(a1, a3, @"RestoreDCP", &v59, Count, theDict), v24))
  {
LABEL_6:
    v15 = v24;
    AMRLog(3, @"_sendiBootFirmwareToDevice failed with %d", v25, v26, v27, v28, v29, v30, v24);
    return v15;
  }

  if (v32)
  {
    v34 = sub_100026EDC(a1, theDict, v25, v26, v27, v28, v29, v30);
    if (v34)
    {
      v15 = v34;
      AMRLog(3, @"_AMRestorePushBootLogo failed with %d", v35, v36, v37, v38, v39, v40, v34);
      return v15;
    }
  }

  v41 = CFDictionaryGetCount(a3);
  v42 = malloc_type_malloc(8 * v41, 0x80040B8603338uLL);
  v43 = malloc_type_malloc(8 * v41, 0x80040B8603338uLL);
  v44 = v43;
  if (v42 && v43)
  {
    CFDictionaryGetKeysAndValues(a3, v42, v43);
    v51 = v41 & ~(v41 >> 63);
    v52 = v59 + 1;
    v53 = v44;
    v58 = v42;
    while (v51)
    {
      v55 = *v42++;
      v54 = v55;
      v56 = *v53++;
      AMRLog(6, @"Sending %@ to device. (%ld of %ld)", v45, v46, v47, v48, v49, v50, v54, v52, Count);
      v57 = sub_100028604(a1, v56, theDict);
      --v51;
      ++v52;
      if (v57)
      {
        v15 = v57;
        AMRLog(3, @"_sendiBootFirmwareToDevice failed with %d", v45, v46, v47, v48, v49, v50, v57);
        goto LABEL_27;
      }
    }

    v15 = 0;
LABEL_27:
    v42 = v58;
    goto LABEL_28;
  }

  v15 = 18;
  if (v42)
  {
LABEL_28:
    free(v42);
  }

  if (v44)
  {
    free(v44);
  }

  return v15;
}

uint64_t sub_100026828(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = AMRestoreOptionsAreLegacy(a2, a2, a3, a4, a5, a6, a7, a8);
  AMRLog(7, @"bootstrapping restore with %@", v12, v13, v14, v15, v16, v17, a3);
  if (v11)
  {
    Value = CFDictionaryGetValue(a2, @"DFUFileType");
    v19 = CFDictionaryGetValue(a2, @"FirmwareDirectory");
    if (AMRAuthInstallCreatePathFromBundle(*(a1 + 216), a2))
    {
      v20 = @"DEVELOPMENT";
      if (Value)
      {
        v20 = Value;
      }

      v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%cdfu%c%@.%@.%@.dfu", v19, 47, 47, a3, *(a1 + 64), v20);
    }

    else
    {
      v21 = 0;
    }

    v28 = sub_1000249C8(a1, v21);
    if (!v28)
    {
      sub_100025E80(a1, 31, v29, v30, v31, v32, v33, v34);
      usleep(0xF4240u);
      sub_1000244A8(a1);
      v35 = 60.0;
      if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
      {
        v35 = 300.0;
      }

      v28 = sub_100027604(a1, @"go", 1, v35);
    }

    CFRelease(v21);
  }

  else
  {
    AMRAuthInstallCreatePathFromBundle(*(a1 + 216), a2);
    AMRLog(3, @"Failed to find bootstrap file", v22, v23, v24, v25, v26, v27);
    return 11;
  }

  return v28;
}

CFStringRef sub_1000269D4(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = 0;
  if (AMRestoreOptionsAreLegacy(a2, a2, a3, a4, a5, a6, a7, a8))
  {
    Value = CFDictionaryGetValue(a2, @"DeviceTreeFile");
    if (Value)
    {
      return CFStringCreateCopy(kCFAllocatorDefault, Value);
    }

    v24 = CFDictionaryGetValue(a2, @"NORImagePath");
    if (v24)
    {
      v25 = v24;
      CFRetain(v24);
    }

    else
    {
      v33 = CFDictionaryGetValue(a2, @"FirmwareDirectory");
      v34 = CFDictionaryGetValue(a2, @"NORImageType");
      v17 = 0;
      if (!v33 || !v34)
      {
        return v17;
      }

      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%call_flash%call_flash.%@.%@", v33, 47, 47, *(a1 + 64), v34);
    }

    v35 = _AMRestoreCopyManifestForNORImage(v25, v26, v27, v28, v29, v30, v31, v32);
    if (v35)
    {
      v36 = v35;
      Count = CFArrayGetCount(v35);
      if (Count < 1)
      {
LABEL_18:
        v17 = 0;
      }

      else
      {
        v38 = Count;
        v39 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v36, v39);
          if (CFStringHasPrefix(ValueAtIndex, @"DeviceTree.") == 1)
          {
            break;
          }

          if (v38 == ++v39)
          {
            goto LABEL_18;
          }
        }

        v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%c%@", v25, 47, ValueAtIndex);
      }

      CFRelease(v36);
    }

    else
    {
      v17 = 0;
    }

    CFRelease(v25);
    return v17;
  }

  if (AMRestoreDeviceIsBootstrapOnly(a2, (a1 + 88), v10, v11, v12, v13, v14, v15) || AMRAuthInstallCopyFileSystemPathForKey(*(a1 + 216), a2, @"RestoreDeviceTree", &v42))
  {
    if (AMRAuthInstallCopyFileSystemPathForKey(*(a1 + 216), a2, @"DeviceTree", &v42))
    {
      AMRLog(3, @"Failed to find device tree", v18, v19, v20, v21, v22, v23);
    }
  }

  return v42;
}

uint64_t sub_100026BE8(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v8 = sub_100026C30(a1, a2, &cf, a4, a5, a6, a7, a8);
  result = 0;
  if (v8)
  {
    if (cf)
    {
      CFRelease(cf);
      return 1;
    }
  }

  return result;
}

uint64_t sub_100026C30(uint64_t a1, const __CFDictionary *a2, CFStringRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3 = 0;
  if (AMRestoreOptionsAreLegacy(a2, a2, a3, a4, a5, a6, a7, a8) || (AMRAuthInstallCopyFileSystemPathForKey(*(a1 + 216), a2, @"RestoreSEP", a3) & 0xFFFFFFF7) == 0)
  {
    return 1;
  }

  AMRLog(3, @"Failed to locate restore SEP firmware", v12, v13, v14, v15, v16, v17);
  return 0;
}

uint64_t sub_100026CB0(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v5 = a1;
  cf = 0;
  v27 = 0;
  v6 = sub_100026DC8(a1, a2, &cf);
  if (v6)
  {
    AMRLog(3, @"_AMRestoreCopyiBootFirmwareURLs failed %d", v7, v8, v9, v10, v11, v12, v6);
LABEL_5:
    v20 = 0;
    v21 = 6;
    goto LABEL_6;
  }

  v13 = sub_100026468(v5, a2);
  if (v13)
  {
    AMRLog(3, @"_AMRestoreCopyiBootStage1FirmwareURLs failed %d", v14, v15, v16, v17, v18, v19, v13);
    goto LABEL_5;
  }

  Count = CFDictionaryGetCount(v27);
  v20 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(v27, v20, 0);
  if (Count >= 1)
  {
    v24 = v20;
    do
    {
      v25 = *v24++;
      CFDictionaryRemoveValue(cf, v25);
      --Count;
    }

    while (Count);
  }

  v21 = 0;
  *a3 = cf;
  cf = 0;
LABEL_6:
  free(v20);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v21;
}

uint64_t sub_100026DC8(void *a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, @"RestoreBundlePath");
  v7 = CFDictionaryGetValue(theDict, @"AuthInstallVariant");
  v8 = 1;
  if (a3 && Value)
  {
    v9 = v7;
    v10 = CFGetAllocator(a1);
    v11 = CFURLCreateWithFileSystemPath(v10, Value, kCFURLPOSIXPathStyle, 1u);
    if (v11)
    {
      v18 = v11;
      v19 = AMAuthInstallBundleCopyPersonalizediBootFirmwareURLs(a1[27], v11, v9, a3);
      if (v19)
      {
        AMRLog(3, @"AMAuthInstallBundleCopyPersonalizediBootFirmwareURLs returned %d", v20, v21, v22, v23, v24, v25, v19);
        v8 = 6;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v18);
    }

    else
    {
      AMRLog(3, @"failed to create url for restore bundle", v12, v13, v14, v15, v16, v17);
      return 18;
    }
  }

  return v8;
}

uint64_t sub_100026EB8(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10002873C(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

uint64_t sub_100026EDC(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100025E80(a1, 43, a3, a4, a5, a6, a7, a8);
  v16 = sub_10002873C(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    v17 = v16;
    v18 = sub_1000249C8(a1, v16);
    if (v18 == 17)
    {
      AMRLog(7, @"No boot graphic found", v19, v20, v21, v22, v23, v24);
    }

    else
    {
      v25 = v18;
      if (v18)
      {
LABEL_8:
        v28 = v17;
LABEL_18:
        CFRelease(v28);
        return v25;
      }

      sub_1000244A8(a1);
      v26 = 60.0;
      if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
      {
        v26 = 300.0;
      }

      v27 = sub_100027604(a1, @"setpicture 4", 0, v26);
      if (v27)
      {
        v25 = v27;
        goto LABEL_8;
      }

      usleep(0xF4240u);
    }

    CFRelease(v17);
    valuePtr = 0;
    v40 = 0;
    Value = CFDictionaryGetValue(a2, @"BackgroundColor");
    if (Value)
    {
      v30 = Value;
      ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberCharType, &valuePtr + 1);
      v32 = CFArrayGetValueAtIndex(v30, 1);
      CFNumberGetValue(v32, kCFNumberCharType, &valuePtr);
      v33 = CFArrayGetValueAtIndex(v30, 2);
      CFNumberGetValue(v33, kCFNumberCharType, &v40);
      v34 = HIBYTE(valuePtr);
      v35 = valuePtr;
      v36 = v40;
    }

    else
    {
      v36 = 0;
      v35 = 0;
      v34 = 0;
      valuePtr = 0;
      v40 = 0;
    }

    v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"bgcolor %d %d %d", v34, v35, v36);
    sub_1000244A8(a1);
    v38 = 60.0;
    if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
    {
      v38 = 300.0;
    }

    v25 = sub_100027604(a1, v37, 0, v38);
    v28 = v37;
    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_1000270BC(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFArray *a5, const __CFString *a6)
{
  if (!*(a1 + 56) || *(a1 + 60) == 255)
  {
    return 5;
  }

  result = _AMRUSBDeviceSendDeviceRequest(*(a1 + 40), 0, 0, 2, 1, 0, 0, 0, 0);
  if (!result)
  {
    if (*(a1 + 191))
    {
      v13 = (*(a1 + 116) >> 2) & 1;
    }

    else
    {
      v13 = 0;
    }

    return _writeCombinedBootImage(a2, a3, a4, a5, 0x8000uLL, _writeCombinedBootImageBuf, a6, v13, a1);
  }

  return result;
}

uint64_t sub_100027198(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100028160(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    sub_100025E80(a1, 9, v10, v11, v12, v13, v14, v15);
    sub_1000244A8(a1);
    v16 = 60.0;
    if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
    {
      v16 = 300.0;
    }

    return sub_100027604(a1, @"memboot", 1, v16);
  }

  return result;
}

uint64_t sub_100027220(uint64_t a1, const __CFDictionary *a2, const __CFString *a3)
{
  v6 = sub_100025EF0(a1);
  sub_100025E80(a1, 5, v7, v8, v9, v10, v11, v12);
  v24 = sub_100027A20(a1, a3, v6, v13, v14, v15, v16, v17);
  if (v24)
  {
    return v24;
  }

  valuePtr = 1000000;
  str = 0;
  IsBootstrapOnly = AMRestoreDeviceIsBootstrapOnly(a2, (a1 + 88), v18, v19, v20, v21, v22, v23);
  Value = CFDictionaryGetValue(a2, @"RamdiskDelay");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    if (IsBootstrapOnly)
    {
      v27 = 0;
      goto LABEL_7;
    }

    sub_100024A34(a1, @"ramdisk-delay", &str);
    v27 = str;
    if (!str)
    {
      goto LABEL_7;
    }

    IntValue = CFStringGetIntValue(str);
    valuePtr = IntValue;
    CFRelease(v27);
    AMRLog(7, @"ramdisk-delay = %d", v40, v41, v42, v43, v44, v45, IntValue);
  }

  v27 = 1;
LABEL_7:
  sub_1000244A8(a1);
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v28 = 300.0;
  }

  else
  {
    v28 = 60.0;
  }

  v29 = CFDictionaryGetValue(a2, @"FPGAValidateRamdiskTimeout");
  if (v29)
  {
    v30 = v29;
    v31 = CFGetTypeID(v29);
    if (v31 != CFNumberGetTypeID())
    {
      AMRLog(3, @"FPGAValidateRamdiskTimeout expects an integer!", v32, v33, v34, v35, v36, v37);
      return 1;
    }

    v28 = sub_10002758C(a1, v30);
  }

  v24 = sub_100027604(a1, @"ramdisk", v27, v28);
  if (!v24)
  {
    usleep(valuePtr);
  }

  return v24;
}

uint64_t sub_1000273D0(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100025E80(a1, 6, a3, a4, a5, a6, a7, a8);
  result = sub_1000249C8(a1, a2);
  if (!result)
  {
    sub_1000244A8(a1);
    v11 = 60.0;
    if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
    {
      v11 = 300.0;
    }

    result = sub_100027604(a1, @"devicetree", 0, v11);
    if (!result)
    {
      usleep(0xF4240u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002745C(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100025E80(a1, 6, a3, a4, a5, a6, a7, a8);
  v10 = sub_1000249C8(a1, a2);
  v17 = v10;
  if (v10)
  {
    AMRLog(3, @"_sendRestoreSEPToDevice failed with %d", v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    sub_1000244A8(a1);
    v18 = 60.0;
    if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
    {
      v18 = 300.0;
    }

    v19 = sub_100027604(a1, @"rsepfirmware", 0, v18);
    if (v19)
    {
      AMRLog(6, @"rsepfirmware command failed with %d", v20, v21, v22, v23, v24, v25, v19);
    }
  }

  return v17;
}

uint64_t sub_100027510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100025E80(a1, 9, a3, a4, a5, a6, a7, a8);
  sub_1000244A8(a1);
  v9 = 60.0;
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v9 = 300.0;
  }

  return sub_100027604(a1, @"bootx", 1, v9);
}

double sub_10002758C(uint64_t a1, const __CFNumber *a2)
{
  sub_1000244A8(a1);
  v4 = *(a1 + 92) & 0xFFFFFFF0;
  if (a2 && v4 == 240)
  {
    valuePtr = 0.0;
    CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr);
    return valuePtr;
  }

  else
  {
    result = 60.0;
    if (v4 == 240)
    {
      return 300.0;
    }
  }

  return result;
}

uint64_t sub_100027604(uint64_t a1, const __CFString *a2, uint64_t a3, double a4)
{
  v5 = a3;
  sub_1000244A8(a1);
  v14 = *(a1 + 92);
  v15 = *(a1 + 224);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  if (a2)
  {
    *(a1 + 224) = CFStringCreateCopy(kCFAllocatorDefault, a2);
  }

  if (*(a1 + 56) == 1)
  {
    result = sub_10002780C(a1, a2, v5, a4);
  }

  else
  {
    if (a4 != 300.0 && (v14 & 0xFFFFFFF0) == 0xF0)
    {
      AMRLog(4, @"Sending commands by pipe with timeouts isn't supported! If a timeout was supplied, it'll be ignored.", v8, v9, v10, v11, v12, v13);
    }

    bzero(buffer, 0x400uLL);
    CFStringGetCString(a2, buffer, 1024, 0x8000100u);
    v17 = __strlcat_chk();
    if (v17 <= 0x3FF)
    {
      v18 = (v17 + 15) & 0x7F0;
      if (v18 <= v17)
      {
        if (!v18)
        {
LABEL_23:
          result = 0;
          goto LABEL_28;
        }
      }

      else
      {
        bzero(&buffer[v17], v18 - v17);
      }

      v19 = buffer;
      while (1)
      {
        v24 = 0;
        v23 = 0;
        v22 = 12;
        v21 = v18;
        LODWORD(result) = sub_100027928(a1, 3, 8, &v21, &v22, &v23);
        if (result || !v22)
        {
          break;
        }

        if (v23 != 8)
        {
          result = 7;
          goto LABEL_28;
        }

        v20 = HIDWORD(v23);
        if (HIDWORD(v23))
        {
          result = sub_100024654(a1, 1, v19, HIDWORD(v23));
          if (result)
          {
            goto LABEL_28;
          }

          v18 -= v20;
          v19 += v20;
        }

        if (!v18)
        {
          goto LABEL_23;
        }
      }

      if (result)
      {
        result = result;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 1;
    }
  }

LABEL_28:
  *(a1 + 232) = result;
  return result;
}

uint64_t sub_10002780C(uint64_t a1, const __CFString *a2, int a3, double a4)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a2, buffer, 1024, 0x8000100u);
  v8 = strlen(buffer);
  LODWORD(v17) = (a4 * 1000.0);
  HIDWORD(v17) = v17;
  result = _AMRUSBDeviceSendDeviceRequestTO(*(a1 + 40), 0, 0, 2, 0, a3 != 0, 0, (v8 + 1), buffer, v17);
  if (result)
  {
    v16 = result;
    AMRLog(3, @"command device request for '%@' failed: %d", v10, v11, v12, v13, v14, v15, a2, result);
    if (v16 == 2008)
    {
      return 21;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_100027928(uint64_t a1, char a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v15 = 0;
  v13[0] = a2;
  v14 = 4660;
  v13[1] = a3;
  if (a3)
  {
    __memcpy_chk();
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    result = sub_1000248E8(a1);
    if (result)
    {
      return result;
    }

    v10 = *(a1 + 48);
  }

  result = _AMRUSBInterfaceWritePipe(v10, *(a1 + 58), v13, a3 + 4);
  if (!result)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      return _AMRUSBInterfaceReadPipe(v12, *(a1 + 57), a6, a5);
    }

    result = sub_1000248E8(a1);
    if (!result)
    {
      v12 = *(a1 + 48);
      return _AMRUSBInterfaceReadPipe(v12, *(a1 + 57), a6, a5);
    }
  }

  return result;
}

uint64_t sub_100027A20(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"sending file: %@", a3, a4, a5, a6, a7, a8, a2);
  if (*(a1 + 56) != 1)
  {
    v15 = a1;
    v16 = a2;
    v17 = 1;
    goto LABEL_5;
  }

  if (*(a1 + 60) != 255)
  {
    v15 = a1;
    v16 = a2;
    v17 = 0;
LABEL_5:

    return sub_100027AE8(v15, v16, v17, a3);
  }

  v19 = *(a1 + 40);

  return AMRPerformDFUFileDownload(v19, a2, 0, 0, v11, v12, v13, v14);
}

uint64_t sub_100027AE8(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  bzero(buffer, 0x400uLL);
  CFStringGetFileSystemRepresentation(a2, buffer, 1024);
  v8 = open(buffer, 0, 0);
  if (v8 == -1)
  {
    v22 = @"Failed to open file";
LABEL_7:
    AMRLogWithFilePath(3, a2, v22, v9, v10, v11, v12, v13);
    v23 = __error();
    return _AMRestoreErrorForErrno(*v23, 11, v24, v25, v26, v27, v28, v29);
  }

  v14 = v8;
  memset(&v55, 0, sizeof(v55));
  if (fstat(v8, &v55) == -1)
  {
    close(v14);
    v22 = @"Failed to stat file";
    goto LABEL_7;
  }

  if (v55.st_size > a4)
  {
    close(v14);
    AMRLog(3, @"iBoot does not support file of this size. File Size: %lld iBoot max size: %d", v15, v16, v17, v18, v19, v20, v55.st_size, a4);
    return 1;
  }

  if (a3)
  {
    v60 = 0;
    v59 = 0;
    v56[0] = v55.st_size;
    v56[1] = 150994944;
    v57 = 12;
    v31 = sub_100027928(a1, 5, 8, v56, &v57, &v59);
    if (v31)
    {
      v21 = v31;
LABEL_12:
      close(v14);
      return v21;
    }

    if (!v57)
    {
      AMRLog(3, @"reply length to file transfer control packet was 0", v32, v33, v34, v35, v36, v37);
      v21 = 10;
      goto LABEL_12;
    }

    v38 = HIDWORD(v59);
  }

  else
  {
    v21 = _AMRUSBDeviceSendDeviceRequest(*(a1 + 40), 0, 0, 2, 1, 0, 0, 0, 0);
    v38 = 0x8000;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  v39 = malloc_type_malloc(v38, 0x100004077774924uLL);
  st_size = v55.st_size;
  if (v55.st_size < 1)
  {
LABEL_22:
    v46 = 0;
  }

  else
  {
    while (1)
    {
      if (st_size >= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = st_size;
      }

      v42 = read(v14, v39, v41);
      if (v42 == -1)
      {
        v46 = 13;
        goto LABEL_28;
      }

      v43 = v42;
      v44 = sub_100024654(a1, 0, v39, v42);
      if (v44)
      {
        break;
      }

      v45 = st_size <= v43;
      st_size -= v43;
      if (v45)
      {
        goto LABEL_22;
      }
    }

    v46 = v44;
LABEL_28:
    st_size = 1;
  }

  close(v14);
  free(v39);
  if (v46 || !*(a1 + 62) || v55.st_size % *(a1 + 62) || (AMRLog(7, @"sending ZLP to terminate transfer", v47, v48, v49, v50, v51, v52), v21 = sub_100024654(a1, 0, 0, 0), !v21))
  {
    v21 = v46;
    if (a3 == 1 && !st_size)
    {
      v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"setenv filesize %lld", v55.st_size);
      sub_1000244A8(a1);
      v54 = 60.0;
      if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
      {
        v54 = 300.0;
      }

      v21 = sub_100027604(a1, v53, 0, v54);
      CFRelease(v53);
    }
  }

  return v21;
}

uint64_t sub_100027E58(uint64_t a1, uint64_t a2)
{
  v2 = _AMRUSBDeviceSendDeviceRequest(*(a1 + 40), 0, 1, 2, 0, 0, 0, 0x400u, a2);
  v9 = v2;
  if (v2)
  {
    AMRLog(3, @"get command output device request failed: %d", v3, v4, v5, v6, v7, v8, v2);
  }

  return v9;
}

uint64_t sub_100027EC4(CFTypeRef *a1, const void *a2, const __CFString *a3, const __CFString *a4, uint64_t a5)
{
  v10 = CFGetAllocator(a1);
  v11 = AMAuthInstallApPersonalizationEnabled(a1[27]);
  v12 = v11;
  cf = 0;
  v51 = 0;
  if (!a2)
  {
    PathFromURL = 0;
    v12 = v11 != 0;
    goto LABEL_10;
  }

  v13 = AMAuthInstallSupportCopyURLWithAppendedComponent(v10, a2, a3, 0, &cf);
  if (v13)
  {
    v20 = v13;
    AMRLog(3, @"failed to create url for %s", v14, v15, v16, v17, v18, v19, a5);
LABEL_7:
    if (v12)
    {
      v12 = AMAuthInstallToRestoreError(v20);
    }

    PathFromURL = 0;
    goto LABEL_10;
  }

  v22 = AMAuthInstallSupportFileURLExists(cf, &v51);
  if (v22)
  {
    v20 = v22;
    AMRLog(3, @"failed to stat %s", v23, v24, v25, v26, v27, v28, a5);
    goto LABEL_7;
  }

  if (v51)
  {
    v30 = CFGetAllocator(a1[27]);
    PathFromURL = AMRestoreCreatePathFromURL(v30, cf);
    if (PathFromURL)
    {
      v37 = sub_1000249C8(a1, PathFromURL);
      if (v37)
      {
        v12 = v37;
        AMRLog(3, @"failed to send %s (%d)", v38, v39, v40, v41, v42, v43, a5, v37);
      }

      else
      {
        v44 = sub_100024878(a1, a4, 0);
        v12 = v44;
        if (v44)
        {
          AMRLog(3, @"device rejected %s (%d)", v45, v46, v47, v48, v49, v50, a5, v44);
        }
      }
    }

    else
    {
      AMRLog(3, @"failed to create path string for %s", v31, v32, v33, v34, v35, v36, a5);
      v12 = 18;
    }
  }

  else
  {
    AMRLog(6, @"no %s found", v23, v24, v25, v26, v27, v28, a5);
    PathFromURL = 0;
    if (v12)
    {
      v12 = 11;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (PathFromURL)
  {
    CFRelease(PathFromURL);
  }

  return v12;
}

uint64_t sub_10002808C(uint64_t a1, CFDictionaryRef theDict, void *key, uint64_t *a4, uint64_t a5, const __CFDictionary *a6)
{
  if (!CFDictionaryContainsKey(theDict, key))
  {
    return 0;
  }

  v18 = *a4 + 1;
  *a4 = v18;
  AMRLog(6, @"Sending %@ to device. (%ld of %ld)", v12, v13, v14, v15, v16, v17, key, v18, a5);
  Value = CFDictionaryGetValue(theDict, key);
  v20 = sub_100028604(a1, Value, a6);
  v27 = v20;
  if (v20)
  {
    AMRLog(3, @"_pushFWToiBoot failed with %d", v21, v22, v23, v24, v25, v26, v20);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, key);
  }

  return v27;
}

uint64_t sub_100028160(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100025E80(a1, 8, a3, a4, a5, a6, a7, a8);
  IsBootstrapOnly = AMRestoreDeviceIsBootstrapOnly(a2, (a1 + 88), v10, v11, v12, v13, v14, v15);
  Value = CFDictionaryGetValue(a2, @"RestoreBootArgs");
  if (IsBootstrapOnly)
  {
    v18 = 0;
  }

  else
  {
    v18 = Value == 0;
  }

  if (v18)
  {
    v19 = @"rd=md0 nand-enable-reformat=1 -progress -restore";
  }

  else
  {
    v19 = Value;
  }

  if (v19)
  {
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"setenvnp boot-args %@", v19);
    sub_1000244A8(a1);
    v21 = 60.0;
    if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
    {
      v21 = 300.0;
    }

    v22 = sub_100027604(a1, v20, 0, v21);
    if (v22)
    {
      v23 = v22;
      CFRelease(v20);
      AMRLog(4, @"setenvnp command failed with error %d. Could be an old iBoot. Trying plain setenv.", v24, v25, v26, v27, v28, v29, v23);
      v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"setenv boot-args %@", v19);
      sub_1000244A8(a1);
      v30 = 60.0;
      if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
      {
        v30 = 300.0;
      }

      v31 = sub_100027604(a1, v20, 0, v30);
    }

    else
    {
      v31 = 0;
    }

    CFRelease(v20);
  }

  else
  {
    v31 = 0;
  }

  v32 = CFDictionaryGetValue(a2, @"PersistRestoreNVRAMVariables");
  v33 = CFDictionaryGetValue(a2, @"RestoreNVRAMVariables");
  if (!v33)
  {
    v75 = @"No readable value found in kAMRestoreOptionsRestoreNVRAMVariables";
    v76 = 6;
    goto LABEL_48;
  }

  v40 = v33;
  if (v32 == kCFBooleanTrue)
  {
    v41 = @"setenv";
  }

  else
  {
    v41 = @"setenvnp";
  }

  v42 = CFGetTypeID(v33);
  if (v42 != CFArrayGetTypeID())
  {
    v77 = CFGetTypeID(v40);
    if (v77 == CFStringGetTypeID())
    {
      v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ %@", v41, v40);
      sub_1000244A8(a1);
      v79 = 60.0;
      if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
      {
        v79 = 300.0;
      }

      v80 = sub_100027604(a1, v78, 0, v79);
      v31 = v80;
      if (v80)
      {
        AMRLog(4, @"%@ command %@ failed with error %d.", v81, v82, v83, v84, v85, v86, v41, v78, v80);
      }

      CFRelease(v78);
      goto LABEL_49;
    }

    v89 = CFGetTypeID(0);
    v75 = @"Unrecognized argument type (%lu) in RestoreNVRAMVariables, only support CFArray and CFString.";
    v76 = 4;
LABEL_48:
    AMRLog(v76, v75, v34, v35, v36, v37, v38, v39, v89);
    goto LABEL_49;
  }

  if (CFArrayGetCount(v40) >= 1)
  {
    for (i = 0; CFArrayGetCount(v40) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v40, i);
      v45 = CFGetTypeID(ValueAtIndex);
      if (v45 == CFArrayGetTypeID())
      {
        v46 = CFArrayGetValueAtIndex(v40, i);
        if (v46)
        {
          v59 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, v46, @" ");
          if (v59)
          {
            goto LABEL_30;
          }
        }

        else
        {
          AMRLog(4, @"Couldn't get NVRAM string array in index %d.", v47, v48, v49, v50, v51, v52, i);
        }
      }

      else if (v45 == CFStringGetTypeID())
      {
        v59 = CFArrayGetValueAtIndex(v40, i);
        CFRetain(v59);
        if (v59)
        {
LABEL_30:
          v66 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ %@", v41, v59);
          sub_1000244A8(a1);
          v67 = 60.0;
          if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
          {
            v67 = 300.0;
          }

          v68 = sub_100027604(a1, v66, 0, v67);
          v31 = v68;
          if (v68)
          {
            AMRLog(4, @"%@ command %@ failed with error %d.", v69, v70, v71, v72, v73, v74, v41, v66, v68);
          }

          CFRelease(v66);
          CFRelease(v59);
          continue;
        }
      }

      else
      {
        AMRLog(4, @"Unknown arg type in kAMRestoreOptionsRestoreNVRAMVariables %lu", v60, v61, v62, v63, v64, v65, v45);
      }

      AMRLog(4, @"No executable command at RestoreNVRAMVariables array index %d.", v53, v54, v55, v56, v57, v58, i);
    }
  }

LABEL_49:
  if (v31 || v32 != kCFBooleanTrue)
  {
    return v31;
  }

  sub_1000244A8(a1);
  v87 = 60.0;
  if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
  {
    v87 = 300.0;
  }

  return sub_100027604(a1, @"saveenv", 0, v87);
}

uint64_t sub_100028604(uint64_t a1, CFURLRef anURL, const __CFDictionary *a3)
{
  if (!anURL)
  {
    return 1;
  }

  v5 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000249C8(a1, v5);
    if (v7)
    {
      v14 = v7;
    }

    else
    {
      sub_1000244A8(a1);
      if ((*(a1 + 92) & 0xFFFFFFF0) == 0xF0)
      {
        v15 = 300.0;
      }

      else
      {
        v15 = 60.0;
      }

      Value = CFDictionaryGetValue(a3, @"FPGAValidateFirmwareTimeout");
      if (Value)
      {
        v17 = Value;
        v18 = CFGetTypeID(Value);
        if (v18 != CFNumberGetTypeID())
        {
          AMRLog(3, @"FPGAValidateFirmwareTimeout expects an integer!", v19, v20, v21, v22, v23, v24);
          v14 = 1;
          goto LABEL_15;
        }

        v15 = sub_10002758C(a1, v17);
      }

      v14 = sub_100027604(a1, @"firmware", 0, v15);
      if (!v14)
      {
LABEL_15:
        CFRelease(v6);
        return v14;
      }
    }

    AMRLog(3, @"_sendiBootFirmwareToDevice failed with %d", v8, v9, v10, v11, v12, v13, v14);
    goto LABEL_15;
  }

  return 18;
}

CFStringRef sub_10002873C(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = 0;
  if (AMRestoreOptionsAreLegacy(a2, a2, a3, a4, a5, a6, a7, a8))
  {
    v38 = 0;
    PathFromBundle = AMRAuthInstallCreatePathFromBundle(*(a1 + 216), a2);
    v11 = 0;
    if (PathFromBundle)
    {
      v12 = 1;
    }

    else
    {
      v12 = v38 == 0;
    }

    if (!v12)
    {
      return v11;
    }

    Value = CFDictionaryGetValue(a2, @"NORImagePath");
    if (Value)
    {
      v14 = Value;
      CFRetain(Value);
    }

    else
    {
      v28 = CFDictionaryGetValue(a2, @"FirmwareDirectory");
      v29 = CFDictionaryGetValue(a2, @"NORImageType");
      v11 = 0;
      if (!v28 || !v29)
      {
        return v11;
      }

      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%call_flash%call_flash.%@.%@", v28, 47, 47, *(a1 + 64), v29);
    }

    v30 = _AMRestoreCopyManifestForNORImage(v14, v15, v16, v17, v18, v19, v20, v21);
    if (v30)
    {
      v31 = v30;
      Count = CFArrayGetCount(v30);
      if (Count >= 1)
      {
        v33 = Count;
        v34 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v31, v34);
          if (CFStringHasPrefix(ValueAtIndex, @"applelogo") == 1 || CFStringHasPrefix(ValueAtIndex, @"skankwerklogo") == 1)
          {
            break;
          }

          if (v33 == ++v34)
          {
            goto LABEL_22;
          }
        }

        v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%c%@", v14, 47, ValueAtIndex);
      }

LABEL_22:
      CFRelease(v31);
    }

    CFRelease(v14);
    return v38;
  }

  if (AMRAuthInstallCopyFileSystemPathForKey(*(a1 + 216), a2, @"RestoreLogo", &v37))
  {
    AMRLog(3, @"Failed to locate boot graphic", v22, v23, v24, v25, v26, v27);
  }

  return v37;
}

void sub_100028938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%s: %p", a3, a4, a5, a6, a7, a8, "_AMRecoveryModeDeviceFinalize", a1);
  v9 = *(a1 + 48);
  if (v9)
  {
    _AMRUSBInterfaceClose(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    _AMRUSBDeviceClose(v10);
    *(a1 + 40) = 0;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 64) = 0;
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 72) = 0;
  }

  if (*(a1 + 84) == 1)
  {
    _AMRestoreDestroyDeviceInfo((a1 + 88));
  }

  v13 = *(a1 + 216);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 216) = 0;
  }

  v14 = *(a1 + 224);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }
}

uint64_t AMRPerformDFUDataDownload(void *a1, const __CFData *a2, void (*a3)(unint64_t, uint64_t), uint64_t a4)
{
  v54 = 0;
  v53 = 0;
  Interface = _AMRUSBDeviceGetInterface(a1, 254, 1);
  if (!Interface)
  {
    return 2002;
  }

  v9 = Interface;
  v10 = _AMRUSBInterfaceOpen(Interface);
  if (v10)
  {
    DFUInformation = v10;
    AMRLog(3, @"unable to open USB interface: 0x%x", v11, v12, v13, v14, v15, v16, v10);
    return DFUInformation;
  }

  DFUInformation = _AMRUSBInterfaceGetDFUInformation(v9, &v54, &v53 + 1, &v53);
  _AMRUSBInterfaceClose(v9);
  if (DFUInformation)
  {
    AMRLog(3, @"unable to get DFU information from interface: %d", v18, v19, v20, v21, v22, v23, DFUInformation);
    return DFUInformation;
  }

  v24 = v53;
  v55 = 0;
  if (sub_100028F10(a1, v53, &v55))
  {
    return 2005;
  }

  if (v55 != 2)
  {
    if (v55 == 10)
    {
      AMRLog(7, @"Issuing CLEARSTATUS request", v25, v26, v27, v28, v29, v30);
      v32 = _AMRUSBDeviceSendDeviceRequest(a1, v24, 0, 1, 1, 4, 0, 0, 0);
    }

    else
    {
      AMRLog(7, @"Issuing ABORT request", v25, v26, v27, v28, v29, v30);
      v32 = _AMRUSBDeviceSendDeviceRequest(a1, v24, 0, 1, 1, 6, 0, 0, 0);
    }

    if (v32 || sub_100028F10(a1, v24, &v55) || v55 != 2)
    {
      return 2005;
    }
  }

  Length = CFDataGetLength(a2);
  BytePtr = CFDataGetBytePtr(a2);
  if (Length)
  {
    v37 = BytePtr;
    v38 = 0;
    v39 = Length;
    while (1)
    {
      if (a3)
      {
        a3(100 * (Length - v39) / Length, a4);
      }

      v40 = v39 >= v54 ? v54 : v39;
      if (sub_100028D40(a1, v53, v38, v37, v40, 5, v35, v36))
      {
        goto LABEL_35;
      }

      ++v38;
      v37 += v40;
      v39 -= v40;
      if (!v39)
      {
        goto LABEL_28;
      }
    }
  }

  v38 = 0;
LABEL_28:
  v45 = sub_100028D40(a1, v53, v38, 0, 0, 7, v35, v36);
  if (v45)
  {
    if (v45 != 2006)
    {
      AMRLog(3, @"sending DFU ZLP returned 0x%x", v46, v47, v48, v49, v50, v51, v45);
LABEL_35:
      v52 = v53;
      AMRLog(7, @"Issuing ABORT request", v41, v42, v43, v44, v35, v36);
      _AMRUSBDeviceSendDeviceRequest(a1, v52, 0, 1, 1, 6, 0, 0, 0);
      return 2005;
    }

    AMRLog(5, @"device not responding during DFU ZLP", v46, v47, v48, v49, v50, v51);
  }

  if ((v53 & 0x400) == 0)
  {
    _AMRUSBDeviceReEnumerate(a1);
  }

  return 0;
}

uint64_t sub_100028D40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  AMRLog(7, @"Issuing DNLOAD request", a3, a4, a5, a6, a7, a8);
  result = _AMRUSBDeviceSendDeviceRequest(a1, a2, 0, 1, 1, 1, a3, v9, a4);
  if (!result)
  {
    v15 = 0;
    v29 = 0;
    v28 = 0;
    while (1)
    {
      if (v15)
      {
        usleep(1000 * v15);
      }

      result = _AMRUSBDeviceSendDeviceRequest(a1, a2, 1, 1, 1, 3, 0, 6u, &v28);
      if (result)
      {
        break;
      }

      AMRLog(7, @"Issued GETSTATUS request: state = %d status = %d", v16, v17, v18, v19, v20, v21, v29, v28);
      if (v28)
      {
        AMRLog(3, @"GETSTATUS status is %d", v22, v23, v24, v25, v26, v27, v28);
        return 0xFFFFFFFFLL;
      }

      v15 = *(&v28 + 1) | (HIBYTE(v28) << 16);
      if (v29 == v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t AMRPerformDFUFileDownload(void *a1, CFStringRef filePath, void (*a3)(unint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  CFDataWithContentsOfFile = _AMRestoreCreateCFDataWithContentsOfFile(filePath, &cf, a3, a4, a5, a6, a7, a8);
  if (CFDataWithContentsOfFile)
  {
    v18 = CFDataWithContentsOfFile;
    AMRLogWithFilePath(3, filePath, @"unable to create data from DFU file", v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = AMRPerformDFUDataDownload(a1, cf, a3, a4);
    CFRelease(cf);
  }

  return v18;
}

uint64_t sub_100028F10(void *a1, uint64_t a2, char *a3)
{
  v4 = _AMRUSBDeviceSendDeviceRequest(a1, a2, 1, 1, 1, 5, 0, 1u, a3);
  v11 = v4;
  if (v4)
  {
    *a3 = 10;
    AMRLog(3, @"Issued GETSTATE request: returned 0x%x", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    AMRLog(7, @"Issued GETSTATE request: state = 0x%x", v5, v6, v7, v8, v9, v10, *a3);
  }

  return v11;
}

uint64_t AMAuthInstallToRestoreError(uint64_t result)
{
  if ((result - 3100) >= 0x384)
  {
    if (result > 0x16)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return dword_100086798[result];
    }
  }

  return result;
}

uint64_t AMRestoreCreatePathFromURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, uint64_t a4, CFTypeRef *a5)
{
  v6 = a4;
  bzero(buffer, 0x400uLL);
  cf = 0;
  v10 = AMAuthInstallSupportCopyURLWithAppendedComponent(a1, a2, a3, v6, &cf);
  if (v10)
  {
    v11 = AMAuthInstallToRestoreError(v10);
  }

  else if (CFURLGetFileSystemRepresentation(cf, 1u, buffer, 1024))
  {
    v13 = CFStringCreateWithCString(a1, buffer, 0x8000100u);
    if (v13)
    {
      v14 = v13;
      *a5 = CFRetain(v13);
      CFRelease(v14);
      v11 = 0;
    }

    else
    {
      v11 = 18;
    }
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t _AMRAuthInstallApplyBundleOverride(CFTypeRef cf, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = cf;
  if (!cf)
  {
    AMRLog(3, @"Can't override bundle value with NULL key", a3, a4, a5, a6, a7, a8);
    return v8;
  }

  v11 = CFGetTypeID(cf);
  if (v11 != CFStringGetTypeID())
  {
    v27 = @"Can't override bundle value with non CFType key";
LABEL_15:
    AMRLog(3, v27, v12, v13, v14, v15, v16, v17);
    return 0;
  }

  if (!a2)
  {
    v27 = @"Can't override bundle value with NULL value";
    goto LABEL_15;
  }

  v18 = CFGetTypeID(a2);
  if (v18 != CFStringGetTypeID())
  {
    v27 = @"Can't override bundle value with non CFType value";
    goto LABEL_15;
  }

  if (!a3)
  {
    v27 = @"Can't override bundle value without amai ref";
    goto LABEL_15;
  }

  URLFromString = AMAuthInstallSupportCreateURLFromString(kCFAllocatorDefault, a2);
  if (!URLFromString)
  {
    v27 = @"Failed to create override URL from URL string";
    goto LABEL_15;
  }

  v20 = URLFromString;
  AMRLogWithFilePath(6, a2, @"Applying bundle file override for key:%@", v13, v14, v15, v16, v17, v8);
  if (AMAuthInstallBundleOverrideEntry(a3, v8, v20))
  {
    AMRLog(3, @"Failed to set bundle override for key:%@", v21, v22, v23, v24, v25, v26, v8);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  CFRelease(v20);
  return v8;
}

uint64_t _AMRAuthInstallAlignOptionsToPersonalizedBundle(__CFDictionary *a1, const __CFURL *a2, int a3)
{
  cf = 0;
  values = 0;
  v51 = 0;
  ReceiptComponent = AMAuthInstallBundleGetReceiptComponent();
  v7 = AMAuthInstallSupportCopyURLWithAppendedComponent(kCFAllocatorDefault, a2, ReceiptComponent, 0, &cf);
  if (v7)
  {
    goto LABEL_4;
  }

  DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL();
  if (DictionaryFromFileURL)
  {
    v9 = DictionaryFromFileURL;
    v10 = CFURLCopyPath(a2);
    AMRLogWithFilePath(3, v10, @"failed to open personalization receipt", v11, v12, v13, v14, v15);
    CFRelease(v10);
    v7 = v9;
LABEL_4:
    PathFromURLWithAppendedComponent = AMAuthInstallToRestoreError(v7);
LABEL_5:
    v17 = 0;
    v18 = 0;
LABEL_6:
    v19 = 0;
    v20 = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v51, @"Alignment");
  if (!Value)
  {
    AMRLog(3, @"bundle is missing alignment info", v23, v24, v25, v26, v27, v28);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    PathFromURLWithAppendedComponent = 1;
    goto LABEL_7;
  }

  v29 = Value;
  v30 = CFDictionaryGetValue(Value, @"DFUFileType");
  if (v30)
  {
    CFDictionarySetValue(a1, @"DFUFileType", v30);
  }

  if (CFDictionaryGetValue(a1, @"SystemImageType") || CFDictionaryGetValue(a1, @"SystemImage"))
  {
    v31 = CFDictionaryGetValue(v29, @"OS");
    if (v31)
    {
      keys = 0;
      PathFromURLWithAppendedComponent = AMRestoreCreatePathFromURLWithAppendedComponent(kCFAllocatorDefault, a2, v31, 0, &values);
      if (PathFromURLWithAppendedComponent)
      {
        goto LABEL_5;
      }

      keys = @"ImageFile";
      v32 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFRelease(values);
      values = 0;
      if (!v32)
      {
        PathFromURLWithAppendedComponent = 18;
        goto LABEL_5;
      }

      CFDictionaryAddValue(a1, @"SystemImage", v32);
      CFRelease(v32);
    }
  }

  v33 = CFDictionaryGetValue(v29, @"KernelCache");
  if (v33)
  {
    v19 = v33;
    v34 = CFDictionaryGetValue(a1, @"KernelCacheFile");
    if (v34)
    {
      URLFromString = AMAuthInstallSupportCreateURLFromString(kCFAllocatorDefault, v34);
      v17 = URLFromString;
      if (!URLFromString)
      {
        v18 = 0;
        v19 = 0;
        goto LABEL_71;
      }

      PathComponent = CFURLCopyLastPathComponent(URLFromString);
      v19 = PathComponent;
      if (!PathComponent)
      {
        v18 = 0;
        goto LABEL_71;
      }

      v18 = PathComponent;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v37 = AMRestoreCreatePathFromURLWithAppendedComponent(kCFAllocatorDefault, a2, v19, 0, &values);
    if (v37)
    {
      PathFromURLWithAppendedComponent = v37;
      goto LABEL_6;
    }

    CFDictionarySetValue(a1, @"KernelCacheFile", values);
    CFRelease(values);
    values = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v38 = CFDictionaryGetValue(v29, @"RestoreKernelCache");
  if (!v38)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_51;
  }

  v39 = v38;
  v40 = CFDictionaryGetValue(a1, @"RestoreKernelCacheFile");
  if (!v40)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_49;
  }

  v41 = AMAuthInstallSupportCreateURLFromString(kCFAllocatorDefault, v40);
  v19 = v41;
  if (!v41 || (v42 = CFURLCopyLastPathComponent(v41)) == 0)
  {
LABEL_71:
    v20 = 0;
    PathFromURLWithAppendedComponent = 31;
    goto LABEL_7;
  }

  v39 = v42;
  v20 = v42;
LABEL_49:
  v43 = AMRestoreCreatePathFromURLWithAppendedComponent(kCFAllocatorDefault, a2, v39, 0, &values);
  if (v43)
  {
    goto LABEL_69;
  }

  CFDictionarySetValue(a1, @"RestoreKernelCacheFile", values);
  CFRelease(values);
  values = 0;
LABEL_51:
  v44 = CFDictionaryGetValue(v29, @"RestoreRamDisk");
  if (v44)
  {
    v43 = AMRestoreCreatePathFromURLWithAppendedComponent(kCFAllocatorDefault, a2, v44, 0, &values);
    if (v43)
    {
      goto LABEL_69;
    }

    CFDictionarySetValue(a1, @"BootImageFile", values);
    CFRelease(values);
    values = 0;
  }

  v49 = CFDictionaryContainsKey(a1, @"FirmwareDirectory");
  if (a3)
  {
    v45 = @"RestoreDeviceTree";
  }

  else
  {
    v45 = @"DeviceTree";
  }

  v46 = CFDictionaryGetValue(v29, v45);
  if (v46)
  {
    v43 = AMRestoreCreatePathFromURLWithAppendedComponent(kCFAllocatorDefault, a2, v46, 0, &values);
    if (v43)
    {
      goto LABEL_69;
    }

    if (!v49)
    {
      CFDictionarySetValue(a1, @"DeviceTreeFile", values);
    }

    CFRelease(values);
    values = 0;
  }

  v47 = CFDictionaryGetValue(v29, @"AllFlash");
  if (v47)
  {
    v43 = AMRestoreCreatePathFromURLWithAppendedComponent(kCFAllocatorDefault, a2, v47, 1, &values);
    if (!v43)
    {
      if (!v49)
      {
        CFDictionarySetValue(a1, @"NORImagePath", values);
      }

      CFRelease(values);
      values = 0;
      goto LABEL_67;
    }

LABEL_69:
    PathFromURLWithAppendedComponent = v43;
    goto LABEL_7;
  }

LABEL_67:
  v48 = CFDictionaryGetValue(v29, @"Diags");
  if (v48)
  {
    v43 = AMRestoreCreatePathFromURLWithAppendedComponent(kCFAllocatorDefault, a2, v48, 1, &values);
    if (v43)
    {
      goto LABEL_69;
    }

    CFDictionarySetValue(a1, @"DiagToInstall", values);
    CFRelease(values);
    values = 0;
  }

  CFDictionaryRemoveValue(a1, @"DFUFile");
  CFDictionaryRemoveValue(a1, @"BoardConfig");
  CFDictionaryRemoveValue(a1, @"SystemImageType");
  CFDictionaryRemoveValue(a1, @"KernelCacheType");
  CFDictionaryRemoveValue(a1, @"BootImageType");
  if (!v49)
  {
    CFDictionaryRemoveValue(a1, @"NORImageType");
  }

  PathFromURLWithAppendedComponent = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return PathFromURLWithAppendedComponent;
}

uint64_t AMRAuthInstallAlignOptionsToPersonalizedBundle(__CFDictionary *a1, const __CFString *a2, int a3)
{
  v5 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, a2, kCFURLPOSIXPathStyle, 1u);
  if (!v5)
  {
    return 18;
  }

  v6 = v5;
  v7 = _AMRAuthInstallAlignOptionsToPersonalizedBundle(a1, v5, a3);
  CFRelease(v6);
  return v7;
}

uint64_t AMRAuthInstallDeletePersonalizedBundle(const __CFString *a1, const __CFDictionary *a2)
{
  pthread_once(&stru_1000C8548, sub_10002C9D8);
  AMRLog(7, @"%s", v4, v5, v6, v7, v8, v9, "AMRAuthInstallDeletePersonalizedBundle");
  if (sub_100029950(a2, 0, @"AuthInstallPreservePersonalizedBundles"))
  {
    v17 = 0;
    v15 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, a1, kCFURLPOSIXPathStyle, 1u);
    if (v15)
    {
      sub_100076FAC(v15, &v17, a1, &v18);
      return v18;
    }

    else
    {
      return 18;
    }
  }

  else
  {
    AMRLogWithFilePath(6, a1, @"preserved personalized bundle: %@", v10, v11, v12, v13, v14, 0);
    return 0;
  }
}

const __CFBoolean *sub_100029950(const __CFDictionary *a1, __CFDictionary *a2, const __CFString *a3)
{
  TypeID = CFBooleanGetTypeID();
  result = sub_10002BE6C(a1, a2, a3, TypeID);
  if (result)
  {
    v8 = result;
    Value = CFBooleanGetValue(result);
    CFRelease(v8);
    return Value;
  }

  return result;
}

uint64_t AMRAuthInstallAddUUID(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1000770B8(0, a2, a3, a4, a5, a6, a7, a8, v34);
    return 1;
  }

  if (!a2)
  {
    sub_1000770AC(a1, 0, a3, a4, a5, a6, a7, a8, v34);
    return 1;
  }

  v35 = 0;
  v10 = CFGetAllocator(a1);
  UUIDString = AMRAuthInstallGetUUIDString(v10, a2, &v35, v11, v12, v13, v14, v15);
  if (UUIDString)
  {
    v32 = UUIDString;
    sub_100077064(UUIDString, v17, v18, v19, v20, v21, v22, v23);
  }

  else if (v35)
  {
    v24 = AMAuthInstallSetUUID(a1, v35);
    if (v24)
    {
      v31 = v24;
      AMRLog(3, @"failed to add uuid", v25, v26, v27, v28, v29, v30);
      return AMAuthInstallToRestoreError(v31);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100077088(UUIDString, 0, v18, v19, v20, v21, v22, v23);
    return 3014;
  }

  return v32;
}

void AMRAuthInstallInitOptionalFirmware(void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"OptionalFirmware");
  if (Value)
  {
    v4 = Value;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {

      CFDictionaryApplyFunction(v4, _AMRAuthInstallApplyOptionalFirmware, a1);
    }
  }
}

void sub_100029B00(const __CFDictionary *a1, CFStringRef key, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (key)
    {
      v8 = sub_10002BE6C(a1, a1, key, a3);
      if (v8)
      {

        CFRelease(v8);
      }
    }

    else
    {
      sub_1000770C4(a1, 0, 0, a3, a5, a6, a7, a8);
    }
  }

  else
  {
    sub_1000770FC(0, key, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t AMRAuthInstallSetFDRTrustObjectHash_0(const void *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 1;
  v10 = @"bad parameter";
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CertifySEP");
    v21 = Value && (v19 = Value, TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v19)) && CFBooleanGetValue(v19) == 1;
    v22 = sub_10002B83C(a1, theDict, v13, v14, v15, v16, v17, v18);
    v9 = 0xFFFFFFFFLL;
    v10 = @"AMRAuthInstallCopyTrustObjectOverride failed";
    if (!v22 && !v21)
    {
      return 0;
    }
  }

  AMRLog(3, v10, a3, a4, a5, a6, a7, a8);
  return v9;
}

CFStringRef AMRestoreCreatePathFromURL(const __CFAllocator *a1, const __CFURL *a2)
{
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
  {
    return CFStringCreateWithCString(a1, buffer, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100029CB0(const __CFDictionary *a1, __CFDictionary *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  TypeID = CFStringGetTypeID();
  v9 = sub_10002BE6C(a1, a2, @"AuthInstallSigningServerURL", TypeID);
  if (v9)
  {
    v10 = v9;
    v11 = kCFAllocatorDefault;
  }

  else
  {
    valuePtr = 443;
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"AuthInstallSigningServerHost");
      v13 = CFDictionaryGetValue(a1, @"AuthInstallSigningServerPort");
    }

    else
    {
      Value = 0;
      v13 = 0;
    }

    v14 = @"gs.apple.com";
    if (Value | v13)
    {
      v15 = 80;
      valuePtr = 80;
      if (Value)
      {
        v14 = Value;
      }

      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberShortType, &valuePtr);
        v15 = valuePtr;
      }

      v16 = @"http";
    }

    else
    {
      v16 = @"https";
      v15 = 443;
    }

    v11 = kCFAllocatorDefault;
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@://%@:%u", v16, v14, v15);
    if (!v17)
    {
      return 18;
    }

    v10 = v17;
  }

  v18 = CFURLCreateWithString(v11, v10, 0);
  if (v18)
  {
    v19 = v18;
    if (a3)
    {
      *a3 = CFRetain(v10);
    }

    if (a4)
    {
      *a4 = CFRetain(v19);
    }

    CFRelease(v10);
    v20 = 0;
  }

  else
  {
    v20 = 18;
    v19 = v10;
  }

  CFRelease(v19);
  return v20;
}

void _AMRAuthInstallApplyOptionalFirmware(const void *a1, CFBooleanRef BOOLean, uint64_t a3)
{
  Value = CFBooleanGetValue(BOOLean);
  AMAuthInstallBundleSetEntryEnabled(a3, a1, Value);
  if (kCFBooleanTrue == BOOLean)
  {
    v13 = @"Adding";
  }

  else
  {
    v13 = @"Removing";
  }

  AMRLog(6, @"%@ OptionalFirmware: %@", v7, v8, v9, v10, v11, v12, v13, a1);
}

uint64_t AMRAuthInstallCopyPersonalizedBundleSupportRecoveryOSURL(const __CFDictionary *a1, CFBooleanRef BOOLean, CFURLRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v21 = @"Can't copy URL to personalized bundle from NULL dictionary";
LABEL_11:
    AMRLog(3, v21, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  if (CFBooleanGetValue(BOOLean))
  {
    v10 = @"PersonalizedRecoveryOSBundlePath";
  }

  else
  {
    v10 = @"PersonalizedRestoreBundlePath";
  }

  Value = CFDictionaryGetValue(a1, v10);
  if (!Value)
  {
    v21 = @"No personalized bundle URL in options";
    goto LABEL_11;
  }

  URLFromString = AMAuthInstallSupportCreateURLFromString(kCFAllocatorDefault, Value);
  if (URLFromString)
  {
    v19 = URLFromString;
    if (a3)
    {
      result = 0;
      *a3 = v19;
    }

    else
    {
      CFRelease(URLFromString);
      return 0;
    }
  }

  else
  {
    AMRLog(3, @"Failed to allocate bundle URL", v13, v14, v15, v16, v17, v18);
    return 31;
  }

  return result;
}

uint64_t AMRAuthInstallSetBundleOverridesFromOptions(void *a1, const __CFDictionary *a2)
{
  v4 = AMRestoreOptionsApplyMacOSChangesIfNeeded(a2);
  if (v4)
  {
    v50 = v4;
    v11 = @"failed to apply MacOS restoreOption changes with status %d";
LABEL_3:
    v12 = 3;
    AMRLog(3, v11, v5, v6, v7, v8, v9, v10, v50);
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(a2, @"BundleOverrides");
  if (Value)
  {
    v21 = Value;
    CFDictionaryApplyFunction(Value, _AMRAuthInstallApplyBundleOverride, a1);
    v22 = CFDictionaryGetValue(v21, @"RecoveryOSBundlePath");
    if (v22)
    {
      CFDictionarySetValue(a2, @"RecoveryOSSourceBundlePath", v22);
    }

    v12 = 0;
    goto LABEL_31;
  }

  if (!AMRestoreOptionsAreLegacy(a2, v14, v15, v16, v17, v18, v19, v20))
  {
    v23 = 0;
    v38 = 0;
    v36 = 0;
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  v23 = CFDictionaryGetValue(a2, @"BootImageFile");
  if (v23)
  {
    v24 = CFGetAllocator(a1);
    URLFromString = AMAuthInstallSupportCreateURLFromString(v24, v23);
    if (!URLFromString)
    {
      v50 = 0;
      v11 = @"failed to convert customRamDiskFileURL %@";
      goto LABEL_3;
    }

    v23 = URLFromString;
    v26 = AMAuthInstallBundleOverrideEntry(a1, @"RestoreRamDisk", URLFromString);
    if (v26)
    {
      v12 = v26;
      v36 = 0;
      v38 = 0;
      goto LABEL_26;
    }
  }

  v27 = CFDictionaryGetValue(a2, @"RestoreKernelCacheFile");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetAllocator(a1);
    v36 = AMAuthInstallSupportCreateURLFromString(v29, v28);
    if (!v36)
    {
      v12 = 3;
      AMRLog(3, @"failed to convert customRestoreKernelCacheFileURL %@", v30, v31, v32, v33, v34, v35, 0);
      goto LABEL_35;
    }

    CFDictionarySetValue(a2, @"RestoreKernelCacheFile", v28);
    v37 = AMAuthInstallBundleOverrideEntry(a1, @"RestoreKernelCache", v36);
    if (v37)
    {
      v12 = v37;
LABEL_35:
      v38 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v36 = 0;
  }

  v39 = CFDictionaryGetValue(a2, @"KernelCacheFile");
  if (!v39)
  {
    v38 = 0;
    goto LABEL_24;
  }

  v40 = v39;
  v41 = CFGetAllocator(a1);
  v38 = AMAuthInstallSupportCreateURLFromString(v41, v40);
  if (v38)
  {
    CFDictionarySetValue(a2, @"KernelCacheFile", v40);
    v48 = AMAuthInstallBundleOverrideEntry(a1, @"KernelCache", v38);
    if (v48)
    {
      v12 = v48;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v12 = 3;
  AMRLog(3, @"failed to convert customKernelCacheFileURL %@", v42, v43, v44, v45, v46, v47, 0);
LABEL_25:
  if (v23)
  {
LABEL_26:
    CFRelease(v23);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v36)
  {
    CFRelease(v36);
  }

LABEL_31:

  return AMAuthInstallToRestoreError(v12);
}

uint64_t sub_10002A384(__CFString *a1, const __CFDictionary *a2, int a3)
{
  v336 = 0;
  cf = 0;
  v335 = 0;
  HIBYTE(v334) = 0;
  v333 = 0;
  v6 = pthread_once(&stru_1000C8548, sub_10002C9D8);
  if (!a1)
  {
    sub_1000771E8(v6, v7, v8, v9, v10, v11, v12, v13);
    PathFromURL = 0;
    v23 = 0;
    v332 = 0;
    v24 = 0;
    v25 = 0;
LABEL_146:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    goto LABEL_22;
  }

  if (!a2)
  {
    PathFromURL = 0;
    v23 = 0;
    v332 = 0;
    v24 = 0;
    v25 = 0;
    a1 = 0;
    goto LABEL_146;
  }

  if (!AMAuthInstallApPersonalizationEnabled(a1))
  {
    v14 = AMAuthInstallBasebandPersonalizationEnabled(a1);
    if (!v14)
    {
      sub_100077220(v14, v15, v16, v17, v18, v19, v20, v21);
      PathFromURL = 0;
      v23 = 0;
      v332 = 0;
      v24 = 0;
      v25 = 0;
      a1 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_22;
    }
  }

  v330 = AMRAuthInstallCopyVariant(a1, a2);
  AMRLog(6, @"requested variant: %@", v30, v31, v32, v33, v34, v35);
  v36 = CFDictionaryGetValue(a2, @"SourceRestoreBundlePath");
  if (v36)
  {
    v25 = v36;
  }

  else
  {
    v25 = CFDictionaryGetValue(a2, @"RestoreBundlePath");
    if (!v25)
    {
      sub_100077258(0, v37, v38, v39, v40, v41, v42, v43, v330);
      PathFromURL = 0;
      v23 = 0;
      v332 = 0;
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
      goto LABEL_21;
    }
  }

  v23 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v25, kCFURLPOSIXPathStyle, 1u);
  if (!v23)
  {
    PathFromURL = 0;
LABEL_20:
    v332 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 18;
LABEL_21:
    a1 = v330;
    goto LABEL_22;
  }

  v44 = CFDictionaryGetValue(a2, @"PersonalizedRestoreBundlePath");
  if (!v44)
  {
    v46 = AMAuthInstallSupportCopyURLToNewTempDirectory();
    if (v46)
    {
      sub_100077264(v46, v47, v48, v49, v50, v51, v52, v53);
      PathFromURL = 0;
      v332 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 11;
      goto LABEL_21;
    }

    v54 = CFGetAllocator(a1);
    PathFromURL = AMRestoreCreatePathFromURL(v54, cf);
    if (PathFromURL)
    {
      CFDictionarySetValue(a2, @"PersonalizedRestoreBundlePath", PathFromURL);
      goto LABEL_52;
    }

    goto LABEL_20;
  }

  PathFromURL = v44;
  CFRetain(v44);
  cf = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, PathFromURL, kCFURLPOSIXPathStyle, 1u);
  if (!cf)
  {
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v332 = 0;
    v29 = 18;
LABEL_13:
    a1 = v330;
LABEL_14:
    AMRAuthInstallDeletePersonalizedBundle(PathFromURL, a2);
    goto LABEL_15;
  }

LABEL_52:
  CFDictionarySetValue(a2, @"SourceRestoreBundlePath", v25);
  v56 = AMRAuthInstallConfigureUsingOptions(a1, a2, a2, &v334 + 7);
  if (v56)
  {
    v29 = v56;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v332 = 0;
    goto LABEL_13;
  }

  v57 = CFDictionaryGetValue(a2, @"RequestedEntitlements");
  if (v57)
  {
    v58 = v57;
    bzero(buffer, 0x400uLL);
    v59 = CFGetAllocator(a1);
    url = CFURLCreateWithString(v59, v58, 0);
    if (url)
    {
      if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
      {
        v60 = CFGetAllocator(a1);
        v61 = CFStringCreateWithFileSystemRepresentation(v60, buffer);
        if (v61)
        {
          v62 = v61;
          _AMRestoreCreateCFDictionaryWithContentsOfFile(v61, &v336);
          CFRelease(v62);
        }
      }
    }

    if (v336)
    {
      CFDictionaryApplyFunction(v336, AMAuthInstallApplyRequestEntries, a1);
      CFRelease(v336);
      v336 = 0;
    }
  }

  else
  {
    url = 0;
  }

  v63 = CFDictionaryGetValue(a2, @"RequestedRecoveryEntitlements");
  if (v63)
  {
    v64 = v63;
    bzero(buffer, 0x400uLL);
    v65 = CFGetAllocator(a1);
    url = CFURLCreateWithString(v65, v64, 0);
    if (url)
    {
      if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
      {
        v66 = CFGetAllocator(a1);
        v67 = CFStringCreateWithFileSystemRepresentation(v66, buffer);
        if (v67)
        {
          v68 = v67;
          CFDictionaryWithContentsOfFile = _AMRestoreCreateCFDictionaryWithContentsOfFile(v67, &v336);
          if (CFDictionaryWithContentsOfFile)
          {
            v29 = CFDictionaryWithContentsOfFile;
            AMRLog(3, @"Could not create entitlements dictionary from %@", v70, v71, v72, v73, v74, v75, v68);
            v28 = 0;
            v27 = 0;
            v26 = 0;
            v24 = 0;
            v332 = 0;
            goto LABEL_129;
          }

          CFRelease(v68);
        }
      }
    }

    if (v336)
    {
      CFDictionaryApplyFunction(v336, AMAuthInstallApplyRecoveryRequestEntries, a1);
      CFRelease(v336);
      v336 = 0;
    }
  }

  if (AMSupportCFDictionaryGetBoolean())
  {
LABEL_71:
    AMAuthInstallSetApRequestEntry(a1, @"Ap,EngineeringUseOnlyUnit", kCFBooleanTrue);
  }

  else
  {
    v95 = -1;
    v96 = &off_1000AB348;
    while (v95 != 8)
    {
      v96 += 8;
      ++v95;
      if (AMSupportCFDictionaryGetBoolean())
      {
        if (v95 <= 8)
        {
          goto LABEL_71;
        }

        break;
      }
    }
  }

  v76 = CFDictionaryGetValue(a2, @"RequestDisablePlatformOnlyCode");
  if (v76)
  {
    v77 = v76;
    v78 = CFGetTypeID(v76);
    if (v78 == CFBooleanGetTypeID() && CFBooleanGetValue(v77) == 1)
    {
      AMAuthInstallSetApRequestEntry(a1, @"Ap,DisablePlatformOnlyCode", kCFBooleanTrue);
    }
  }

  v79 = CFDictionaryGetValue(a2, @"RequestFactoryPrereleaseGlobalTrust");
  if (v79)
  {
    v80 = v79;
    v81 = CFGetTypeID(v79);
    if (v81 == CFBooleanGetTypeID() && CFBooleanGetValue(v80) == 1)
    {
      AMAuthInstallSetApRequestEntry(a1, @"Ap,FactoryPrereleaseGlobalTrust", kCFBooleanTrue);
    }
  }

  v82 = CFDictionaryGetValue(a2, @"RequestInternalUseOnlyUnit");
  if (v82)
  {
    v83 = v82;
    v84 = CFGetTypeID(v82);
    if (v84 == CFBooleanGetTypeID() && CFBooleanGetValue(v83) == 1)
    {
      AMAuthInstallSetApRequestEntry(a1, @"Ap,InternalUseOnlyUnit", kCFBooleanTrue);
    }
  }

  v85 = CFDictionaryGetValue(a2, @"RequestRestoreSecurityOverrides0");
  if (v85)
  {
    v86 = v85;
    v87 = CFGetTypeID(v85);
    if (v87 == CFNumberGetTypeID())
    {
      AMAuthInstallSetApRequestEntry(a1, @"Ap,RestoreSecurityOverrides0", v86);
    }
  }

  v88 = CFDictionaryGetValue(a2, @"BasebandEnableCalibration");
  if (v88)
  {
    v89 = v88;
    v90 = CFGetTypeID(v88);
    if (v90 == CFBooleanGetTypeID() && CFBooleanGetValue(v89) == 1)
    {
      v91 = AMAuthInstallSetBbRequestEntry(a1, @"BbCalibrationEnable", kCFBooleanTrue);
      if (v91)
      {
        v92 = v91;
        v332 = 0;
LABEL_96:
        v24 = 0;
        v26 = 0;
LABEL_97:
        v27 = 0;
        v28 = 0;
LABEL_98:
        v29 = AMAuthInstallToRestoreError(v92);
        goto LABEL_99;
      }
    }
  }

  v93 = CFDictionaryGetValue(a2, @"FusingServerURL");
  if (v93)
  {
    v27 = CFURLCreateWithString(kCFAllocatorDefault, v93, 0);
    if (!v27)
    {
      v28 = 0;
      v26 = 0;
      v24 = 0;
      v332 = 0;
      goto LABEL_128;
    }

    v94 = AMAuthInstallSetFusingServerURL(a1, v27);
    v332 = v27;
    if (v94)
    {
LABEL_95:
      v92 = v94;
      goto LABEL_96;
    }
  }

  else
  {
    v332 = 0;
  }

  v97 = CFDictionaryGetValue(a2, @"BasebandEnableActivationBypass");
  if (v97)
  {
    v104 = v97;
    v105 = CFGetTypeID(v97);
    if (v105 == CFBooleanGetTypeID() && CFBooleanGetValue(v104) == 1)
    {
      v94 = AMAuthInstallSetBbRequestEntry(a1, @"BbActivationBypassEnable", kCFBooleanTrue);
      if (v94)
      {
        goto LABEL_95;
      }
    }
  }

  if (AMRAuthInstallAddUUID(a1, a2, v98, v99, v100, v101, v102, v103))
  {
    AMRLog(3, @"failed to add uuid, device will not print uuid", v106, v107, v108, v109, v110, v111);
  }

  AMAuthInstallSetDebugFlags(a1, 2);
  v112 = CFDictionaryGetValue(a2, @"BasebandProvisioningKeyID");
  if (v112)
  {
    *buffer = 0;
    v29 = 31;
    if (AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, v112, buffer) || !*buffer)
    {
      goto LABEL_126;
    }

    v113 = AMAuthInstallBasebandSetKeyHash(a1);
    CFRelease(*buffer);
    if (v113)
    {
      goto LABEL_125;
    }
  }

  v114 = CFDictionaryGetValue(a2, @"BasebandActivationKeyID");
  if (v114)
  {
    *buffer = 0;
    v29 = 31;
    if (AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, v114, buffer) || !*buffer)
    {
      goto LABEL_126;
    }

    v115 = AMAuthInstallBasebandSetKeyHash(a1);
    CFRelease(*buffer);
    if (v115)
    {
      goto LABEL_125;
    }
  }

  v116 = CFDictionaryGetValue(a2, @"BasebandCalibrationKeyID");
  if (v116)
  {
    *buffer = 0;
    v29 = 31;
    if (AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, v116, buffer) || !*buffer)
    {
      goto LABEL_126;
    }

    v117 = AMAuthInstallBasebandSetKeyHash(a1);
    CFRelease(*buffer);
    if (v117)
    {
      goto LABEL_125;
    }
  }

  v118 = CFDictionaryGetValue(a2, @"UserLocale");
  v94 = AMAuthInstallSetLocale(a1, v118);
  if (v94)
  {
    goto LABEL_95;
  }

  v119 = CFDictionaryGetValue(a2, @"BasebandFactoryActivationKeyID");
  if (v119)
  {
    *buffer = 0;
    v29 = 31;
    if (AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, v119, buffer) || !*buffer)
    {
      goto LABEL_126;
    }

    v120 = AMAuthInstallBasebandSetKeyHash(a1);
    CFRelease(*buffer);
    if (v120)
    {
LABEL_125:
      v29 = 1;
LABEL_126:
      v28 = 0;
      v27 = 0;
      v26 = 0;
      v24 = 0;
LABEL_129:
      v25 = url;
      a1 = v330;
      goto LABEL_14;
    }
  }

  HIDWORD(v326) = a3;
  v121 = CFDictionaryGetValue(a2, @"BasebandJtagEnable");
  if (v121)
  {
    v122 = v121;
    v123 = CFGetTypeID(v121);
    if (v123 == CFBooleanGetTypeID() && CFBooleanGetValue(v122) == 1)
    {
      v94 = AMAuthInstallSetBbRequestEntry(a1, @"BbJtagEnable", kCFBooleanTrue);
      if (v94)
      {
        goto LABEL_95;
      }
    }
  }

  if (sub_100029950(a2, 0, @"BasebandEnableFactoryDebug"))
  {
    v94 = AMAuthInstallSetBbRequestEntry(a1, @"BbFactoryDebugEnable", kCFBooleanTrue);
    if (v94)
    {
      goto LABEL_95;
    }
  }

  v130 = CFDictionaryGetValue(a2, @"CertifySEP");
  if (v130)
  {
    TypeID = CFBooleanGetTypeID();
    LODWORD(v130) = TypeID == CFGetTypeID(v130) && CFBooleanGetValue(v130) == 1;
  }

  if (sub_10002B83C(a1, a2, v124, v125, v126, v127, v128, v129) || v130)
  {
    v132 = CFDictionaryGetValue(a2, @"FDRSkipSealing");
    if (v132)
    {
      v133 = v132;
      v134 = CFGetTypeID(v132);
      if (v134 == CFBooleanGetTypeID() && CFBooleanGetValue(v133) == 1)
      {
        v94 = AMAuthInstallSetFDRRequestEntry(a1, @"FDRAllowUnsealed", kCFBooleanTrue);
        if (v94)
        {
          goto LABEL_95;
        }
      }
    }

    v135 = CFDictionaryGetValue(a2, @"FDRAllowUnsealedData");
    if (v135)
    {
      v136 = v135;
      v137 = CFGetTypeID(v135);
      if (v137 == CFBooleanGetTypeID() && CFBooleanGetValue(v136) == 1)
      {
        v94 = AMAuthInstallSetFDRRequestEntry(a1, @"FDRAllowUnsealed", kCFBooleanTrue);
        if (v94)
        {
          goto LABEL_95;
        }
      }
    }

    v138 = CFDictionaryGetValue(a2, @"FDRAllowIncompleteData");
    if (v138)
    {
      v139 = v138;
      v140 = CFGetTypeID(v138);
      if (v140 == CFBooleanGetTypeID() && CFBooleanGetValue(v139) == 1)
      {
        v94 = AMAuthInstallSetFDRRequestEntry(a1, @"FDRAllowIncomplete", kCFBooleanTrue);
        if (v94)
        {
          goto LABEL_95;
        }
      }
    }

    v141 = CFStringGetTypeID();
    sub_100029B00(a2, @"FDRCAURL", v141, v142, v143, v144, v145, v146);
    v147 = CFStringGetTypeID();
    sub_100029B00(a2, @"FDRDataStoreURL", v147, v148, v149, v150, v151, v152);
    v153 = CFStringGetTypeID();
    sub_100029B00(a2, @"FDRSealingURL", v153, v154, v155, v156, v157, v158);
    v159 = CFStringGetTypeID();
    sub_100029B00(a2, @"FDRTrustObjectURL", v159, v160, v161, v162, v163, v164);
    v165 = CFStringGetTypeID();
    sub_100029B00(a2, @"FDRTrustObjectFile", v165, v166, v167, v168, v169, v170);
    v171 = CFBooleanGetTypeID();
    sub_100029B00(a2, @"FDRSkipSealing", v171, v172, v173, v174, v175, v176);
    v177 = CFBooleanGetTypeID();
    sub_100029B00(a2, @"FDRForceSealing", v177, v178, v179, v180, v181, v182);
    v183 = CFBooleanGetTypeID();
    sub_100029B00(a2, @"FDRAllowUnsealedData", v183, v184, v185, v186, v187, v188);
    v189 = CFBooleanGetTypeID();
    sub_100029B00(a2, @"FDRAllowIncompleteData", v189, v190, v191, v192, v193, v194);
    v195 = CFBooleanGetTypeID();
    sub_100029B00(a2, @"FDRDisableSSLValidation", v195, v196, v197, v198, v199, v200);
    v201 = CFBooleanGetTypeID();
    sub_100029B00(a2, @"FDRSkipDataPreservation", v201, v202, v203, v204, v205, v206);
  }

  v207 = CFDictionaryGetValue(a2, @"ApRequestEntries");
  if (v207)
  {
    CFDictionaryApplyFunction(v207, sub_10002B88C, a1);
  }

  v208 = CFDictionaryGetValue(a2, @"BbRequestEntries");
  if (v208)
  {
    CFDictionaryApplyFunction(v208, sub_10002B8A0, a1);
  }

  v209 = CFDictionaryGetValue(a2, @"ObjectRequestEntries");
  if (v209)
  {
    v210 = CFDictionaryGetValue(a2, @"RestoreSEP");
  }

  else
  {
    v210 = 0;
  }

  v211 = CFDictionaryGetValue(a2, @"FDREnableShenanigansDeprecated");
  if (v211)
  {
    v212 = v211;
    v213 = CFGetTypeID(v211);
    if (v213 == CFBooleanGetTypeID() && CFBooleanGetValue(v212) != 1)
    {
      goto LABEL_177;
    }
  }

  if (HIBYTE(v334) != 1)
  {
    goto LABEL_177;
  }

  if (v335)
  {
    CFRelease(v335);
    v335 = 0;
  }

  if (!AMAuthInstallApCopyParameters(&a1->isa, &v335) && (v255 = CFDictionaryGetValue(v335, @"SepNonce"), v256 = CFDictionaryGetValue(v335, @"ApProductionMode"), v255) && (v257 = v256) != 0 && (v258 = CFGetTypeID(v256), v258 == CFBooleanGetTypeID()) && !CFBooleanGetValue(v257))
  {
    AMRLog(5, @"Requesting EnableSEPIdentityCreation entitlement for Shenanigans for development SoC with SEP", v259, v260, v261, v262, v263, v264);
    if (v210)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v210);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v26 = MutableCopy;
    if (!MutableCopy)
    {
      sub_1000771A0(0, v266, v267, v268, v269, v270, v271, v272);
      v28 = 0;
      v27 = 0;
LABEL_246:
      v24 = 0;
      goto LABEL_128;
    }

    CFDictionaryAddValue(MutableCopy, @"EnableSEPIdentityCreation", kCFBooleanTrue);
    if (v209)
    {
      Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v209);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v27 = Mutable;
    if (!Mutable)
    {
      sub_10007717C(0, v316, v317, v318, v319, v320, v321, v322);
LABEL_245:
      v28 = 0;
      goto LABEL_246;
    }

    CFDictionaryAddValue(Mutable, @"RestoreSEP", v26);
    CFDictionaryApplyFunction(v27, sub_10002B8B4, a1);
    CFRelease(v27);
  }

  else
  {
LABEL_177:
    if (v209)
    {
      CFDictionaryApplyFunction(v209, sub_10002B8B4, a1);
    }

    v26 = 0;
  }

  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  v215 = AMSupportGetValueForKeyPathInDict();
  if (v215 == kCFBooleanTrue && ValueForKeyPathInDict == kCFBooleanTrue)
  {
    sub_100077158(v215, v216, v217, v218, v219, v220, v221, v222);
    v28 = 0;
    v27 = 0;
    v24 = 0;
    goto LABEL_195;
  }

  if (ValueForKeyPathInDict == kCFBooleanTrue)
  {
    AMRLog(6, @"Adding SEP:DisableStrongSSMAChecks entitlement based on BoraOptions.", v217, v218, v219, v220, v221, v222);
    v223 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v27 = v223;
    if (v223)
    {
      CFDictionaryAddValue(v223, @"DisableStrongSSMAChecks", kCFBooleanTrue);
      AMAuthInstallSetObjectRequestEntry(a1, @"SEP", v27);
      AMSupportSafeRelease();
      goto LABEL_185;
    }

    goto LABEL_245;
  }

LABEL_185:
  v224 = CFDictionaryGetValue(a2, @"BasebandFirmware");
  if (v224)
  {
    v230 = v224;
    AMRLogWithFilePath(5, v224, @"custom baseband firmware specified", v225, v226, v227, v228, v229);
    v24 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v230, kCFURLPOSIXPathStyle, 0);
    if (!v24)
    {
      v28 = 0;
      v27 = 0;
      v29 = 31;
      goto LABEL_129;
    }

    v231 = AMAuthInstallBundleOverrideEntry(a1, @"BasebandFirmware", v24);
    if (v231)
    {
LABEL_188:
      v92 = v231;
      goto LABEL_97;
    }
  }

  else
  {
    v24 = 0;
  }

  v232 = CFDictionaryGetValue(a2, @"BasebandAntennaType");
  if (v232 && AMAuthInstallBasebandSetAntennaType(a1, v232) || (v233 = CFDictionaryGetValue(a2, @"BasebandBehavior")) != 0 && AMAuthInstallBasebandSetBehavior(a1, v233))
  {
    v28 = 0;
    v27 = 0;
LABEL_195:
    v29 = 1;
    goto LABEL_129;
  }

  v234 = AMRAuthInstallSetBundleOverridesFromOptions(a1, a2);
  if (!v234)
  {
    v235 = CFDictionaryGetValue(a2, @"RelaxedImageVerification");
    if (v235)
    {
      if (CFBooleanGetValue(v235) == 1)
      {
        v231 = AMAuthInstallApEnableRelaxedImageVerification(a1, 1);
        if (v231)
        {
          goto LABEL_188;
        }
      }
    }

    v236 = CFDictionaryGetValue(a2, @"AuthInstallDisableSymlinks");
    if (v236)
    {
      v237 = v236;
      v238 = CFBooleanGetTypeID();
      if (v238 == CFGetTypeID(v237) && CFBooleanGetValue(v237) == 1)
      {
        v239 = AMAuthInstallBundleAllowLinks(a1, 0);
        if (v239)
        {
          v92 = v239;
          sub_100077134(v239, v240, v241, v242, v243, v244, v245, v246);
          goto LABEL_97;
        }
      }
    }

    v247 = CFDictionaryGetValue(a2, @"InstallRecoveryOS");
    if (v247 && !CFBooleanGetValue(v247))
    {
      goto LABEL_206;
    }

    v324 = AMRAuthInstallCopyRecoveryOSVariant(a1, a2);
    if (!v324)
    {
      AMRLog(4, @"Couldn't find recovery OS variant , continue without recovery OS install", v300, v301, v302, v303, v304, v305);
      CFDictionarySetValue(a2, @"InstallRecoveryOS", kCFBooleanFalse);
LABEL_206:
      v324 = 0;
      v27 = 0;
      v28 = 0;
LABEL_207:
      v248 = sub_10002B928(a1, v23, v330, a2);
      if (v248)
      {
        v92 = v248;
        goto LABEL_98;
      }

      AMRLog(8, @"personalizing: %@", v249, v250, v251, v252, v253, v254);
      v92 = AMAuthInstallBundlePersonalizeWithRecoveryOS(a1, v23, cf, v330, v27, v324);
      allocator = @"restore bundle";
      if (!v92 && HIDWORD(v326))
      {
        v92 = AMAuthInstallBundlePersonalizeRestoreLocalPolicy(a1, cf, 0, 0);
        allocator = @"local policy";
      }

      if (v92)
      {
        sub_10002BC30(a1, v92);
        LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v92);
        AMRLog(3, @"failed to personalize the %@: %@", v278, v279, v280, v281, v282, v283, allocator, LocalizedStatusString);
        if (v92 == 4)
        {
          AMRLogWithFilePath(3, v25, @"Source path", v284, v285, v286, v287, v288);
          AMRLogWithFilePath(3, PathFromURL, @"Destination path", v289, v290, v291, v292, v293);
        }

        goto LABEL_98;
      }

      if (!AMAuthInstallBundleCopyPersonalizediBootEANFirmwareURLs(a1, cf, v330, &v333, v273, v274, v275, v276, a1, v323, v324, kCFBooleanTrue, v326, allocator, SHIDWORD(allocator), url, v330, v332, v333, v334, v335, v336, cf, *buffer, v339, v340, v341, v342, v343) && v333 && !CFDictionaryGetCount(v333))
      {
        CFDictionarySetValue(a2, @"iBootEANNuke", value);
        AMRLog(6, @"Setting kAMRestoreOptionsiBootEANNuke.", v294, v295, v296, v297, v298, v299);
      }

      CFDictionarySetValue(a2, @"RestoreBundlePath", PathFromURL);
      if (v28)
      {
        CFDictionarySetValue(a2, @"RecoveryOSBundlePath", v28);
      }

      v29 = 0;
      v25 = urla;
      a1 = v331;
LABEL_22:
      v45 = PathFromURL != 0;
      if (!v28)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v306 = CFGetAllocator(a1);
    v28 = CFStringCreateWithFormat(v306, 0, @"%@/RecoveryOS", PathFromURL);
    CFDictionarySetValue(a2, @"PersonalizedRecoveryOSBundlePath", v28);
    v307 = CFDictionaryGetValue(a2, @"RecoveryOSSourceBundlePath");
    if (!v307)
    {
      sub_1000771C4(0, v308, v309, v310, v311, v312, v313, v314);
      v27 = 0;
      v29 = 8;
      goto LABEL_129;
    }

    v27 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v307, kCFURLPOSIXPathStyle, 1u);
    if (v27)
    {
      goto LABEL_207;
    }

LABEL_128:
    v29 = 18;
    goto LABEL_129;
  }

  v29 = v234;
  v27 = 0;
  v28 = 0;
LABEL_99:
  v25 = url;
  a1 = v330;
  if (v29)
  {
    goto LABEL_14;
  }

LABEL_15:
  v45 = 1;
  if (v28)
  {
LABEL_23:
    CFRelease(v28);
  }

LABEL_24:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v45)
  {
    CFRelease(PathFromURL);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v332)
  {
    CFRelease(v332);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v336)
  {
    CFRelease(v336);
  }

  if (v335)
  {
    CFRelease(v335);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v333)
  {
    CFRelease(v333);
  }

  return v29;
}

BOOL sub_10002B83C(const void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  if (a1 && a2)
  {
    sub_100077288(a1, a2, &v10, a4, a5, a6, a7, a8, v9);
  }

  else
  {
    AMRLog(3, @"bad parameter", a3, a4, a5, a6, a7, a8);
  }

  return v10 != 0;
}

CFTypeID sub_10002B8B4(const void *a1, CFTypeRef cf, const void *a3)
{
  v6 = CFGetTypeID(cf);
  result = CFDictionaryGetTypeID();
  if (v6 == result)
  {

    return AMAuthInstallSetObjectRequestEntry(a3, a1, cf);
  }

  return result;
}

uint64_t sub_10002B928(const void *a1, char *a2, const __CFString *a3, const __CFDictionary *a4)
{
  cf = 0;
  v7 = AMRLazyArchiveOpenFromOptions(a4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &cf);
  if (v9)
  {
    v16 = v9;
    AMRLog(3, @"AMAuthInstallBundleCopyBuildIdentityForVariant failed (err: %d)", v10, v11, v12, v13, v14, v15, v9);
LABEL_4:
    AMRLazyArchiveClose(v8);
    v17 = 0;
    goto LABEL_5;
  }

  if (!cf)
  {
    AMRLog(3, @"AMAuthInstallBundleCopyBuildIdentityForVariant returned NULL", v10, v11, v12, v13, v14, v15);
    v16 = 2;
    goto LABEL_4;
  }

  Value = CFDictionaryGetValue(cf, @"Manifest");
  if (!Value)
  {
    AMRLog(3, @"build identity has no manifest", v20, v21, v22, v23, v24, v25);
    v16 = 1;
    goto LABEL_4;
  }

  v26 = Value;
  Count = CFDictionaryGetCount(Value);
  v28 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v29 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(v26, v28, v29);
  if (Count < 1)
  {
    AMRLazyArchiveClose(v8);
    v30 = 0;
    v61 = 0;
    v17 = 0;
    v16 = 0;
    if (v28)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v63 = v29;
  v30 = 0;
  v62 = v28;
  while (1)
  {
    v31 = *v28;
    if (!CFEqual(*v28, @"BaseSystem"))
    {
      v32 = *v29;
      v33 = CFGetAllocator(a1);
      ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v33, v32, @"%@.%@", v34, v35, v36, v37, v38, @"Info", @"Path");
      if (ValueForKeyWithFormat)
      {
        v40 = ValueForKeyWithFormat;
        if (v30)
        {
          CFRelease(v30);
        }

        v41 = CFGetAllocator(a1);
        v30 = CFURLCreateCopyAppendingPathComponent(v41, a2, v40, 0);
        if (!v30)
        {
          AMRLog(3, @"CFURLCreateCopyAppendingPathComponent failed", v42, v43, v44, v45, v46, v47);
          v61 = 1;
          goto LABEL_31;
        }

        if (AMRLazyArchiveContainsURL(v8, v30))
        {
          break;
        }
      }
    }

LABEL_16:
    ++v29;
    ++v28;
    if (!--Count)
    {
      v61 = 0;
      goto LABEL_31;
    }
  }

  v64 = 0;
  v48 = AMAuthInstallSupportFileURLExists(v30, &v64);
  if (!v48)
  {
    if (!v64 && (!CFStringHasSuffix(v31, @"OS") || (AMRLazyArchiveURLSupportsRandomAccess(v8, v30) & 1) == 0) && (AMRLazyArchiveExtractToURL(v8, v30) & 1) == 0)
    {
      AMRLog(3, @"failed to extract %@ (%@)", v55, v56, v57, v58, v59, v60, v31, v40);
      v61 = 4;
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  v61 = v48;
  AMRLog(3, @"AMAuthInstallSupportFileURLExists failed (err: %d)", v49, v50, v51, v52, v53, v54, v48);
LABEL_31:
  AMRLazyArchiveClose(v8);
  v28 = v62;
  v29 = v63;
LABEL_33:
  free(v28);
  v17 = v30;
  v16 = v61;
LABEL_34:
  if (v29)
  {
    free(v29);
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

void sub_10002BC30(CFDictionaryRef *a1, int a2)
{
  valuePtr = a2;
  if ((a2 - 4000) >= 0xFFFFFC7C && !pthread_mutex_lock(&stru_1000C8508))
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, valuePtr);
      if (LocalizedStatusString)
      {
        CFDictionarySetValue(qword_1000C8888, v4, LocalizedStatusString);
      }

      pthread_mutex_unlock(&stru_1000C8508);
      CFRelease(v4);
    }

    else
    {
      pthread_mutex_unlock(&stru_1000C8508);
    }
  }
}

uint64_t AMRAuthInstallGetUUIDString(const __CFAllocator *a1, CFDictionaryRef theDict, CFStringRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    sub_1000773B0(a1, theDict, 0, a4, a5, a6, a7, a8, v37);
    return 1;
  }

  if (!theDict)
  {
    sub_1000770AC(a1, 0, a3, a4, a5, a6, a7, a8, v37);
    return 1;
  }

  Value = CFDictionaryGetValue(theDict, @"UUID");
  if (Value)
  {
    v12 = Value;
    CFRetain(Value);
    *a3 = v12;
    CFRelease(v12);
    return 0;
  }

  else
  {
    v14 = CFUUIDCreate(a1);
    if (v14)
    {
      v21 = v14;
      v22 = CFUUIDCreateString(a1, v14);
      if (v22)
      {
        v29 = v22;
        CFDictionaryAddValue(theDict, @"UUID", v22);
        AMRLog(5, @"*** UUID %@ ***", v30, v31, v32, v33, v34, v35, v29);
        *a3 = v29;
        CFRelease(v29);
        v13 = 0;
      }

      else
      {
        AMRLog(3, @"failed to create uuid string", v23, v24, v25, v26, v27, v28);
        v13 = 18;
      }

      CFRelease(v21);
    }

    else
    {
      AMRLog(3, @"failed to create uuid", v15, v16, v17, v18, v19, v20);
      return 18;
    }
  }

  return v13;
}

uint64_t AMRAuthInstallSsoEnable(uint64_t a1)
{
  pthread_once(&stru_1000C8548, sub_10002C9D8);
  v2 = AMAuthInstallSsoEnable(a1);
  v3 = AMAuthInstallToRestoreError(v2);
  v10 = v3;
  if (v3)
  {
    AMRLog(3, @"Unable to enable AppleConnect authentication (%d). Make sure that AppleConnect.app is installed.", v4, v5, v6, v7, v8, v9, v3);
  }

  return v10;
}

CFTypeRef sub_10002BE6C(const __CFDictionary *a1, __CFDictionary *a2, CFStringRef key, uint64_t a4)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, key)) != 0 && (v8 = Value, CFGetTypeID(Value) == a4))
  {
    if (a2)
    {
      AMRLog(6, @"Not using preferences value for %@. Found %@ in options.", v9, v10, v11, v12, v13, v14, key, v8);
    }

    return CFRetain(v8);
  }

  else
  {
    v16 = CFPreferencesCopyAppValue(key, kCFPreferencesCurrentApplication);
    v17 = v16;
    if (v16)
    {
      if (CFGetTypeID(v16) == a4)
      {
        if (a2)
        {
          AMRLog(6, @"Setting preferences value for %@ to %@", v18, v19, v20, v21, v22, v23, key, v17);
          CFDictionarySetValue(a2, key, v17);
        }
      }

      else
      {
        AMRLog(3, @"Mistyped preferences value for %@ (expected %lu)", v18, v19, v20, v21, v22, v23, key, a4);
        CFRelease(v17);
        return 0;
      }
    }

    return v17;
  }
}

uint64_t AMRAuthInstallCopyTicketURL(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v29 = 0;
  cf = 0;
  Value = CFDictionaryGetValue(theDict, @"RestoreBundlePath");
  if (!Value)
  {
    v25 = @"device requires a personalized ap ticket";
LABEL_7:
    AMRLog(3, v25, v6, v7, v8, v9, v10, v11, cf);
    return a1 != 0;
  }

  v12 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, Value, kCFURLPOSIXPathStyle, 1u);
  if (!v12)
  {
    v25 = @"failed to create url for restore bundle";
    goto LABEL_7;
  }

  v13 = v12;
  ApTicketComponentPath = AMAuthInstallBundleGetApTicketComponentPath(a1);
  v15 = CFGetAllocator(a1);
  v16 = AMAuthInstallSupportCopyURLWithAppendedComponent(v15, v13, ApTicketComponentPath, 0, &cf);
  if (v16)
  {
    v23 = v16;
    v24 = @"failed to create url for apticket";
    goto LABEL_10;
  }

  v26 = AMAuthInstallSupportFileURLExists(cf, &v29);
  if (v26)
  {
    v23 = v26;
    v24 = @"failed to stat apticket";
LABEL_10:
    AMRLog(3, v24, v17, v18, v19, v20, v21, v22, cf);
    if (a1)
    {
      a1 = AMAuthInstallToRestoreError(v23);
    }

    goto LABEL_12;
  }

  if (v29)
  {
    a1 = 0;
    *a3 = CFRetain(cf);
  }

  else
  {
    AMRLog(6, @"no ap ticket found", v17, v18, v19, v20, v21, v22);
    if (a1)
    {
      a1 = 11;
    }

    else
    {
      a1 = 0;
    }
  }

LABEL_12:
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  return a1;
}

uint64_t AMRAuthInstallCopyTicketData(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v16 = 0;
  DataFromFileURL = AMRAuthInstallCopyTicketURL(a1, a2, &v16);
  v6 = v16;
  if (DataFromFileURL || !v16)
  {
    if (!v16)
    {
      return DataFromFileURL;
    }
  }

  else
  {
    v7 = CFGetAllocator(a1);
    DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(v7, &cf, v6);
    if (DataFromFileURL)
    {
      AMRLog(3, @"failed to read apticket", v8, v9, v10, v11, v12, v13);
      if (a1)
      {
        DataFromFileURL = AMAuthInstallToRestoreError(DataFromFileURL);
      }

      else
      {
        DataFromFileURL = 0;
      }
    }

    else
    {
      *a3 = CFRetain(cf);
    }
  }

  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  return DataFromFileURL;
}

uint64_t AMRAuthInstallCreateOptionsForBootstrapDevice(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTypeRef *a9)
{
  v102 = 0;
  v103 = 0;
  if (!a1)
  {
    AMRLog(3, @"bundlePath is NULL", a3, a4, a5, a6, a7, a8);
    return 1;
  }

  anURL = 0;
  if (a9)
  {
    v15 = AMAuthInstallCreate(kCFAllocatorDefault);
    if (v15)
    {
      cf = v15;
      v100 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, a1, kCFURLPOSIXPathStyle, 0);
      if (v100)
      {
        v99 = a2;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          AMAuthInstallSupportDictionarySetInteger64();
          AMAuthInstallSupportDictionarySetInteger32();
          AMAuthInstallSupportDictionarySetInteger32();
          AMAuthInstallSupportDictionarySetInteger32();
          AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApProductionMode", 1);
          v35 = AMAuthInstallApSetParameters(cf, Mutable);
          if (v35)
          {
            v42 = v35;
            AMRLog(3, @"Failed to set AP parameters", v36, v37, v38, v39, v40, v41);
LABEL_18:
            v43 = 0;
            goto LABEL_19;
          }

          v45 = AMAuthInstallBundleCopyBuildIdentityForVariant(cf, v100, v99, &v103);
          if (v45)
          {
            v46 = v45;
            AMRLog(3, @"AMAuthInstallBundleCopyBuildIdentityForVariant failed (err: %d)", v28, v29, v30, v31, v32, v33, v45);
            v42 = AMAuthInstallToRestoreError(v46);
            goto LABEL_18;
          }

          if (v103)
          {
            v49 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v43 = v49;
            if (v49)
            {
              CFDictionarySetValue(v49, @"ApBootstrapOnly", kCFBooleanTrue);
              CFDictionarySetValue(v43, @"RestoreBundlePath", a1);
              if (a5)
              {
                CFDictionarySetValue(v43, @"RestoreBootArgs", a5);
              }

              v56 = AMRestoreCreatePathsForBundle(a1, 0, 0, 0, 0, 0, 0, &v102);
              if (v56)
              {
                v58 = v56;
                AMRLog(3, @"failed to create path to firmware directory (err: %d)", v57, v51, v52, v53, v54, v55, v56);
                v42 = AMAuthInstallToRestoreError(v58);
LABEL_19:
                v47 = v100;
LABEL_20:
                CFRelease(cf);
                if (v103)
                {
                  CFRelease(v103);
                }

                if (v47)
                {
                  CFRelease(v47);
                }

                goto LABEL_24;
              }

              v50 = v102;
              if (v102)
              {
                CFDictionarySetValue(v43, @"FirmwareDirectory", v102);
                ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(kCFAllocatorDefault, v103, @"Info.VariantContents.DFU");
                if (ValueForKeyPathInDict)
                {
                  TransformedDFUType = AMRestoreGetTransformedDFUType(ValueForKeyPathInDict);
                  if (TransformedDFUType)
                  {
                    CFDictionarySetValue(v43, @"DFUFileType", TransformedDFUType);
                    v68 = AMAuthInstallSupportGetValueForKeyPathInDict(kCFAllocatorDefault, v103, @"Info.VariantContents.RestoreKernelCache");
                    if (v68)
                    {
                      CFDictionarySetValue(v43, @"KernelCacheType", v68);
                      v69 = AMAuthInstallSupportGetValueForKeyPathInDict(kCFAllocatorDefault, v103, @"Info.VariantContents.Firmware");
                      if (v69)
                      {
                        TransformedFirmwareTypeValue = AMRestoreGetTransformedFirmwareTypeValue(v69);
                        if (TransformedFirmwareTypeValue)
                        {
                          CFDictionarySetValue(v43, @"NORImageType", TransformedFirmwareTypeValue);
                          v105 = a7;
                          v106 = @"RestoreRamDisk";
                          v71 = &v107;
                          v107 = @"BootImageFile";
                          v108 = a8;
                          v109 = @"RestoreKernelCache";
                          v110 = @"RestoreKernelCacheFile";
                          v111 = a6;
                          v112 = @"RestoreDeviceTree";
                          v113 = @"DeviceTreeFile";
                          v42 = 3;
                          while (1)
                          {
                            v72 = *(v71 - 2);
                            if (v72)
                            {
                              CFDictionarySetValue(v43, *v71, v72);
                            }

                            else
                            {
                              v73 = *(v71 - 1);
                              if (CFStringCompare(v73, @"RestoreRamDisk", 0) == kCFCompareEqualTo)
                              {
                                Value = CFDictionaryGetValue(v43, @"BootImageTagOverride");
                                if (Value)
                                {
                                  v97 = Value;
                                  AMRLog(5, @"Sending custom image tag to memboot: %@\n", v78, v79, v80, v74, v75, v76);
                                }
                              }

                              AMAuthInstallBundleCopyURLForKey(cf, v73, v99, v100, &anURL, v74, v75, v76, v97, v98, v99, v100, cf, SHIDWORD(cf), v102, SHIDWORD(v102), v103, SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), anURL, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
                              if (v81)
                              {
                                v96 = v81;
                                v47 = v100;
                                AMRLog(3, @"Could not determine URL for key %@ in bundle %@", v82, v83, v84, v85, v86, v87, v73, v100);
                                v42 = AMAuthInstallToRestoreError(v96);
                                goto LABEL_20;
                              }

                              v88 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
                              CFRelease(anURL);
                              if (!v88)
                              {
                                AMRLog(3, @"Could not convert URL %@ to path", v89, v90, v91, v92, v93, v94, anURL);
                                v42 = 31;
                                goto LABEL_19;
                              }

                              CFDictionarySetValue(v43, *v71, v88);
                              CFRelease(v88);
                            }

                            v71 += 3;
                            if (!--v42)
                            {
                              *a9 = CFRetain(v43);
                              goto LABEL_19;
                            }
                          }
                        }

                        v95 = @"Firmware type failed to transform";
                      }

                      else
                      {
                        v95 = @"Firmware type not found in BuildManifest.plist";
                      }
                    }

                    else
                    {
                      v95 = @"RestoreKernelCache type not found in BuildManifest.plist";
                    }
                  }

                  else
                  {
                    v95 = @"DFU type failed to transform";
                  }
                }

                else
                {
                  v95 = @"DFU type not found in BuildManifest.plist";
                }

                AMRLog(3, v95, v61, v62, v63, v64, v65, v66);
                v42 = 3002;
                goto LABEL_19;
              }

              v59 = @"firmwarePath is NULL";
            }

            else
            {
              v59 = @"options allocation failed";
            }

            AMRLog(3, v59, v50, v51, v52, v53, v54, v55);
LABEL_15:
            v42 = 18;
            goto LABEL_19;
          }

          v44 = @"AMAuthInstallBundleCopyBuildIdentityForVariant returned NULL";
        }

        else
        {
          v44 = @"apOptions allocation failed";
        }

        AMRLog(3, v44, v28, v29, v30, v31, v32, v33);
      }

      else
      {
        AMRLog(3, @"buildManifestURL allocation failed", v22, v23, v24, v25, v26, v27);
        Mutable = 0;
      }

      v43 = 0;
      goto LABEL_15;
    }

    AMRLog(3, @"AMAuthInstallCreate failed", v16, v17, v18, v19, v20, v21);
    Mutable = 0;
    v43 = 0;
    v42 = 18;
  }

  else
  {
    AMRLog(3, @"outOptions is NULL", a3, a4, a5, a6, a7, a8);
    Mutable = 0;
    v43 = 0;
    v42 = 1;
  }

LABEL_24:
  if (v102)
  {
    CFRelease(v102);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v42;
}

uint64_t AMRAuthInstallCopyPathToFirmware(const __CFDictionary *a1, CFStringRef *a2)
{
  Value = CFDictionaryGetValue(a1, @"PersonalizedRestoreBundlePath");
  if (!Value)
  {
    return 1;
  }

  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%cFirmware", Value, 47);
  if (!v4)
  {
    return 18;
  }

  v5 = v4;
  if (a2)
  {
    result = 0;
    *a2 = v5;
  }

  else
  {
    CFRelease(v4);
    return 0;
  }

  return result;
}

uint64_t sub_10002C9D8()
{
  qword_1000C8888 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  AMRestoreCaptureSubsystemLogsIfNeeded();

  return AMAuthInstallSsoInitialize();
}

CFURLRef sub_10002CA48(const __CFAllocator *a1, const __CFString *a2)
{

  return CFURLCreateWithFileSystemPath(a1, a2, kCFURLPOSIXPathStyle, 1u);
}

const __CFBoolean *sub_10002CA60(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return sub_100029950(v4, v3, a3);
}

uint64_t _writeCombinedBootImage(const __CFString *a1, const __CFString *a2, const __CFString *a3, const __CFArray *a4, size_t a5, uint64_t (*a6)(char *, size_t, uint64_t), const __CFString *a7, int a8, uint64_t a9)
{
  bzero(v144, 0x400uLL);
  bzero(buffer, 0x400uLL);
  memset(&v142, 0, sizeof(v142));
  if (a7 && CFStringGetCString(a7, buffer, 1024, 0x8000100u))
  {
    remove(buffer, v17);
    v18 = fopen(buffer, "ab");
    if (!v18)
    {
      v81 = __error();
      return _AMRestoreErrorForErrno(*v81, 11, v82, v83, v84, v85, v86, v87);
    }

    v19 = v18;
    v20 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  __size = 0;
  CFStringGetFileSystemRepresentation(a1, v144, 1024);
  if (stat(v144, &v142) == -1)
  {
    v71 = @"Failed to stat boot image file";
    v72 = a1;
    goto LABEL_57;
  }

  if (v142.st_size <= 0)
  {
    v27 = -(-v142.st_size & 0x3F);
  }

  else
  {
    v27 = v142.st_size & 0x3F;
  }

  if (v27)
  {
    v28 = 64 - v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 + v142.st_size;
  if (a8)
  {
    st_size = v142.st_size;
  }

  else
  {
    st_size = v29;
  }

  AMRLog(7, @"ramdisk = %lld bytes (padded to %zu)", v21, v22, v23, v24, v25, v26, v142.st_size, st_size);
  CFStringGetFileSystemRepresentation(a2, v144, 1024);
  if (stat(v144, &v142) == -1)
  {
    v71 = @"Failed to stat device tree file";
    v72 = a2;
LABEL_57:
    AMRLogWithFilePath(3, v72, v71, v22, v23, v24, v25, v26);
    v73 = __error();
    v80 = _AMRestoreErrorForErrno(*v73, 11, v74, v75, v76, v77, v78, v79);
    if ((v20 & 1) == 0)
    {
      return v80;
    }

    goto LABEL_58;
  }

  v140 = v20;
  if (v142.st_size <= 0)
  {
    v32 = -(-v142.st_size & 0x3F);
  }

  else
  {
    v32 = v142.st_size & 0x3F;
  }

  if (v32)
  {
    v33 = 64 - v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 + v142.st_size;
  if (a8)
  {
    v35 = v142.st_size;
  }

  else
  {
    v35 = v34;
  }

  AMRLog(7, @"devicetree = %lld bytes (padded to %zu)", v31, v22, v23, v24, v25, v26, v142.st_size, v35);
  CFStringGetFileSystemRepresentation(a3, v144, 1024);
  if (stat(v144, &v142) == -1)
  {
    AMRLogWithFilePath(3, a3, @"Failed to stat kernel cache file", v37, v38, v39, v40, v41);
    v88 = __error();
    v80 = _AMRestoreErrorForErrno(*v88, 11, v89, v90, v91, v92, v93, v94);
    if ((v140 & 1) == 0)
    {
      return v80;
    }

LABEL_58:
    v68 = 0;
    goto LABEL_82;
  }

  size = a5;
  v42 = v142.st_size;
  if (!a8)
  {
    if (v142.st_size <= 0)
    {
      v43 = -(-v142.st_size & 0x3F);
    }

    else
    {
      v43 = v142.st_size & 0x3F;
    }

    if (v43)
    {
      v44 = 64 - v43;
    }

    else
    {
      v44 = 0;
    }

    v42 = v44 + v142.st_size;
  }

  v45 = v35 + st_size + v42;
  AMRLog(7, @"K$ = %lld bytes (padded to %zu)", v36, v37, v38, v39, v40, v41, v142.st_size, v42);
  v137 = a6;
  __stream = v19;
  if (!a4 || CFArrayGetCount(a4) < 1 || (v52 = CFArrayGetCount(a4), v52 < 1))
  {
LABEL_52:
    AMRLog(6, @"memboot combined image = %zu bytes", v46, v47, v48, v49, v50, v51, v45);
    v67 = malloc_type_malloc(size, 0x100004077774924uLL);
    v68 = v67;
    if (v67)
    {
      v19 = __stream;
      if (a8)
      {
        v69 = 0;
        v70 = v140;
      }

      else
      {
        *(v67 + 2) = 0u;
        *(v67 + 3) = 0u;
        *v67 = xmmword_100086800;
        *(v67 + 1) = 0u;
        *(v67 + 3) = 0;
        *(v67 + 4) = (v45 >> 6) + (((v45 & 0x3F) != 0) << 6);
        *(v67 + 5) = 0;
        if ((byte_1000C8890 & 1) == 0)
        {
          for (i = 0; i != 256; ++i)
          {
            v96 = 8;
            v97 = i;
            do
            {
              if (v97)
              {
                v97 = (v97 >> 1) ^ 0xEDB88320;
              }

              else
              {
                v97 >>= 1;
              }

              --v96;
            }

            while (v96);
            qword_1000C8898[i] = v97;
          }

          byte_1000C8890 = 1;
        }

        v98 = 0;
        v99 = 0xFFFFFFFFLL;
        v70 = v140;
        do
        {
          v99 = qword_1000C8898[(v67[v98++] ^ v99)] ^ (v99 >> 8);
        }

        while (v98 != 48);
        *(v67 + 12) = ~v99;
        v69 = 64;
      }

      v100 = sub_10002D1D4(a1, size, v67, v69, v67, &__size, v137, v70, __stream, a8, a9);
      if (v100 || (v100 = sub_10002D1D4(a3, size, v68, __size, v68, &__size, v137, v70, __stream, a8, a9), v100) || (v100 = sub_10002D1D4(a2, size, v68, __size, v68, &__size, v137, v70, __stream, a8, a9), v100))
      {
        v80 = v100;
        if (!v70)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if (a4)
      {
        if (CFArrayGetCount(a4) >= 1)
        {
          Count = CFArrayGetCount(a4);
          if (Count >= 1)
          {
            v110 = Count;
            v111 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a4, v111);
              if (ValueAtIndex)
              {
                v113 = ValueAtIndex;
                v114 = CFGetTypeID(ValueAtIndex);
                if (v114 == CFStringGetTypeID())
                {
                  v115 = sub_10002D1D4(v113, size, v68, __size, v68, &__size, v137, v140, __stream, a8, a9);
                  if (v115)
                  {
                    break;
                  }
                }
              }

              if (v110 == ++v111)
              {
                goto LABEL_97;
              }
            }

            v80 = v115;
            goto LABEL_63;
          }
        }
      }

LABEL_97:
      v116 = __size;
      if (!__size)
      {
        goto LABEL_104;
      }

      if (v140 && fwrite(v68, __size, 1uLL, __stream) != 1)
      {
        AMRLog(3, @"remainder write to disk failed: %d\n", v117, v118, v119, v120, v121, v122, 0);
        v80 = 0;
LABEL_88:
        v19 = __stream;
        goto LABEL_82;
      }

      v123 = v137(v68, v116, a9);
      if (v123)
      {
        v80 = v123;
        AMRLog(3, @"remainder write failed: %d\n", v124, v125, v126, v127, v128, v129, v123);
        v19 = __stream;
LABEL_106:
        if ((v140 & 1) == 0)
        {
LABEL_83:
          if (v68)
          {
            free(v68);
          }

          return v80;
        }

LABEL_82:
        fclose(v19);
        goto LABEL_83;
      }

      if ((v116 & 0x1FF) == 0)
      {
LABEL_104:
        v130 = v137(0, 0, a9);
        v80 = v130;
        v19 = __stream;
        if (!v130)
        {
LABEL_64:
          if (!v140)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        }

        AMRLog(3, @"Zero byte packet write failed: %d\n", v131, v132, v133, v134, v135, v136, v130);
        goto LABEL_106;
      }

      v80 = 0;
    }

    else
    {
      v80 = 18;
    }

LABEL_63:
    v19 = __stream;
    goto LABEL_64;
  }

  v53 = v52;
  v54 = 0;
  while (1)
  {
    v55 = CFArrayGetValueAtIndex(a4, v54);
    if (v55)
    {
      v56 = v55;
      v57 = CFGetTypeID(v55);
      if (v57 == CFStringGetTypeID())
      {
        break;
      }
    }

LABEL_51:
    if (v53 == ++v54)
    {
      goto LABEL_52;
    }
  }

  CFStringGetFileSystemRepresentation(v56, v144, 1024);
  if (stat(v144, &v142) != -1)
  {
    v64 = v142.st_size;
    if (!a8)
    {
      if (v142.st_size <= 0)
      {
        v65 = -(-v142.st_size & 0x3F);
      }

      else
      {
        v65 = v142.st_size & 0x3F;
      }

      if (v65)
      {
        v66 = 64 - v65;
      }

      else
      {
        v66 = 0;
      }

      v64 = v66 + v142.st_size;
    }

    v45 += v64;
    AMRLog(7, @"%s = %lld bytes (padded to %zu)", v58, v59, v60, v61, v62, v63, v144, v142.st_size, v64);
    goto LABEL_51;
  }

  AMRLogWithFilePath(3, a3, @"Failed to stat additional image file %s", v59, v60, v61, v62, v63, v144);
  v102 = __error();
  v80 = _AMRestoreErrorForErrno(*v102, 11, v103, v104, v105, v106, v107, v108);
  if (v140)
  {
    v68 = 0;
    goto LABEL_88;
  }

  return v80;
}

uint64_t sub_10002D1D4(const __CFString *a1, size_t a2, char *a3, size_t a4, char *a5, size_t *a6, uint64_t (*a7)(char *, size_t, uint64_t), int a8, FILE *a9, char a10, uint64_t a11)
{
  if (!a2)
  {
    return 1;
  }

  bzero(buffer, 0x400uLL);
  memset(&v90, 0, sizeof(v90));
  CFStringGetFileSystemRepresentation(a1, buffer, 1024);
  v19 = open(buffer, 0, 0);
  if (v19 == -1)
  {
    AMRLogWithFilePath(3, a1, @"Failed to open file", v20, v21, v22, v23, v24);
    v71 = __error();
    return _AMRestoreErrorForErrno(*v71, 11, v72, v73, v74, v75, v76, v77);
  }

  v25 = v19;
  if (fstat(v19, &v90) == -1)
  {
    AMRLogWithFilePath(3, a1, @"Failed to stat file", v26, v27, v28, v29, v30);
    v78 = __error();
    v70 = _AMRestoreErrorForErrno(*v78, 11, v79, v80, v81, v82, v83, v84);
    goto LABEL_54;
  }

  __dst = a5;
  v31 = malloc_type_malloc(a2, 0x100004077774924uLL);
  if (a4 > a2)
  {
    while (!a8 || fwrite(a3, a2, 1uLL, a9) == 1)
    {
      v37 = a7(a3, a2, a11);
      if (v37)
      {
        v70 = v37;
        AMRLogWithFilePath(3, a1, @"Error writing prefix buffer: %d bytes\n", v38, v39, v40, v41, v42, a2);
        if (!v31)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      a4 -= a2;
      a3 += a2;
      if (a4 < a2)
      {
        goto LABEL_9;
      }
    }

    AMRLogWithFilePath(3, a1, @"Error writing prefix buffer to host: %d bytes\n", v32, v33, v34, v35, v36, a2);
LABEL_49:
    v70 = 0;
    if (!v31)
    {
      goto LABEL_54;
    }

LABEL_53:
    free(v31);
    goto LABEL_54;
  }

LABEL_9:
  v87 = a6;
  if (a4)
  {
    memcpy(v31, a3, a4);
  }

  st_size = v90.st_size;
  v44 = &v31[a4];
  if ((v90.st_size & 0x3F) != 0 && a10 == 0)
  {
    v46 = 64 - (v90.st_size & 0x3F);
  }

  else
  {
    v46 = 0;
  }

  __ptr = v31;
  if (!v90.st_size)
  {
LABEL_37:
    *v87 = 0;
    v31 = __ptr;
    v69 = v44 - __ptr;
    if (v69)
    {
      memcpy(__dst, __ptr, v69);
      *v87 = v69;
    }

    if (v46)
    {
      bzero(&__dst[v69], v46);
      v70 = 0;
      *v87 += v46;
      if (!__ptr)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v86 = a1;
  v47 = &v31[a2];
  while (1)
  {
    if (st_size >= v47 - v44)
    {
      v48 = v47 - v44;
    }

    else
    {
      v48 = st_size;
    }

    v49 = v25;
    v50 = read(v25, v44, v48);
    if (v50 == -1)
    {
      AMRLogWithFilePath(3, v86, @"Error reading from file: %d bytes attempted\n", v51, v52, v53, v54, v55, v48);
      v70 = 13;
      goto LABEL_52;
    }

    v56 = v50;
    if (!a10 && st_size == v90.st_size)
    {
      *(v44 + 1) = st_size + v46;
    }

    v44 += v50;
    if (v44 < v47 && &v44[v46] >= v47)
    {
      bzero(v44, v47 - v44);
      v46 -= v47 - v44;
      v44 = v47;
    }

    if (v44 != v47)
    {
      goto LABEL_36;
    }

    v44 = __ptr;
    if (a8)
    {
      if (fwrite(__ptr, a2, 1uLL, a9) != 1)
      {
        break;
      }
    }

    v63 = a7(__ptr, a2, a11);
    if (v63)
    {
      v70 = v63;
      AMRLogWithFilePath(3, v86, @"Error writing buffer: %d bytes\n", v64, v65, v66, v67, v68, a2);
LABEL_52:
      LODWORD(v25) = v49;
      v31 = __ptr;
      if (!__ptr)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_36:
    st_size -= v56;
    v25 = v49;
    if (!st_size)
    {
      goto LABEL_37;
    }
  }

  AMRLogWithFilePath(3, v86, @"Error writing buffer to disk: %d bytes\n", v58, v59, v60, v61, v62, a2);
  v70 = 0;
  LODWORD(v25) = v49;
  v31 = __ptr;
  if (__ptr)
  {
    goto LABEL_53;
  }

LABEL_54:
  close(v25);
  return v70;
}

BOOL sub_10002D5DC(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  if (pthread_mutex_lock(&stru_1000C8568))
  {
    return 0;
  }

  Mutable = *a1;
  if (!*a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    *a1 = Mutable;
  }

  v8 = CFDictionaryContainsKey(Mutable, a2);
  v6 = v8 == 0;
  if (!v8)
  {
    CFDictionarySetValue(*a1, a2, a3);
  }

  pthread_mutex_unlock(&stru_1000C8568);
  return v6;
}

const __CFString *sub_10002D684(const char *a1, int a2)
{
  v4 = strlen(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((a2 & 1) != 0 || (v6 = 0, v7 = a1[v4 - 1], v7 != 47) && v7 != 92)
  {
    v8 = *a1;
    v10 = v8 == 47 || v8 == 92;
    if (v4 != 1 || !v10)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v12 = Mutable;
      if (v8 == 92 || v8 == 47)
      {
        CFArrayAppendValue(Mutable, &stru_1000ABB18);
      }

      v13 = strdup(a1);
      v14 = v13 + 1;
      v15 = v13;
      do
      {
        v16 = *(v14 - 1);
        if (v16 == 92 || v16 == 47)
        {
          *(v14 - 1) = 0;
          v17 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, v15);
          if (!v17)
          {
            goto LABEL_32;
          }

          v18 = v17;
          if (CFStringGetLength(v17) >= 1)
          {
            CFArrayAppendValue(v12, v18);
          }

          CFRelease(v18);
          v15 = v14;
        }

        ++v14;
        --v5;
      }

      while (v5);
      v19 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, v15);
      if (v19)
      {
        v20 = v19;
        CFArrayAppendValue(v12, v19);
        if (a2 && CFStringGetLength(v20))
        {
          CFArrayAppendValue(v12, &stru_1000ABB18);
        }

        v6 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, v12, @"/");
        CFRelease(v20);
        if (!v12)
        {
LABEL_34:
          free(v13);
          return v6;
        }
      }

      else
      {
LABEL_32:
        v6 = 0;
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      CFRelease(v12);
      goto LABEL_34;
    }

    return @"/";
  }

  return v6;
}