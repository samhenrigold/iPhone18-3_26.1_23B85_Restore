id getUNNotificationSettingsCenterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUNNotificationSettingsCenterClass_softClass;
  v7 = getUNNotificationSettingsCenterClass_softClass;
  if (!getUNNotificationSettingsCenterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUNNotificationSettingsCenterClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getUNNotificationSettingsCenterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9664C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTUUserConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUUserConfigurationClass_softClass;
  v7 = getTUUserConfigurationClass_softClass;
  if (!getTUUserConfigurationClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUUserConfigurationClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getTUUserConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9664D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFPreferencesClass_softClass;
  v7 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFPreferencesClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getAFPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A9664E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id daemon_log(uint64_t a1)
{
  if (daemon_log_onceToken != -1)
  {
    daemon_log_cold_1();
  }

  v2 = daemon_log___logger;

  return v2;
}

id paired_unlock_log(uint64_t a1)
{
  if (paired_unlock_log_onceToken != -1)
  {
    paired_unlock_log_cold_1();
  }

  v2 = paired_unlock_log___logger;

  return v2;
}

uint64_t SFDeviceClassCodeGet(uint64_t a1, uint64_t a2)
{
  if (SFDeviceClassCodeGet_sOnce != -1)
  {
    [SFNotificationInfo mediumBubbleVersion];
  }

  return SFDeviceClassCodeGet_sResult;
}

uint64_t SFShouldLogSensitiveDescriptions(uint64_t a1, uint64_t a2)
{
  if (SFShouldLogSensitiveDescriptions_onceToken != -1)
  {
    SFShouldLogSensitiveDescriptions_cold_1();
  }

  return SFShouldLogSensitiveDescriptions_shouldLog;
}

BOOL SFDeviceIsVirtualMachine()
{
  if (SFDeviceIsVirtualMachine_onceToken[0] != -1)
  {
    SFDeviceIsVirtualMachine_cold_1();
  }

  return SFDeviceIsVirtualMachine_result == 1 && IsAppleInternalBuild() != 0;
}

void sub_1A96676C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_3_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *v3 = result;
  if (result)
  {
    a2 = result;
  }

  *v2 = a2;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_11(void *a1, const char *a2)
{
  v4 = *(*(*(v2 + 40) + 8) + 40);

  return [a1 timeIntervalSinceDate:v4];
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return LogCategoryCreateEx();
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return [v1 isEqual:a1];
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 30, a4);
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return NSDecodeSInt64RangedIfPresent();
}

void OUTLINED_FUNCTION_0_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_31()
{
  v2 = *(v0 + 304);

  dispatch_assert_queue_V2(v2);
}

uint64_t BOOLeanValueForPreference(const __CFString *a1, uint64_t a2)
{
  v3 = copySharingPrefValue(a1);
  if (v3)
  {
    v4 = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v9 = __BOOLeanValueForPreference_block_invoke;
    v10 = &__block_descriptor_tmp_160;
    v11 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v4);
    }

    else
    {
      if (v5 != CFStringGetTypeID())
      {
LABEL_7:
        v9(v8);
        return a2;
      }

      Value = stringIsTrueString(v4);
    }

    a2 = Value;
    goto LABEL_7;
  }

  return a2;
}

CFPropertyListRef copySharingPrefValue(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(a1, @"/private/var/Managed Preferences/mobile/com.apple.Sharing");
  if (!result)
  {

    return CFPreferencesCopyAppValue(a1, @"com.apple.Sharing");
  }

  return result;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 90, a4);
}

id SFDeviceModel(uint64_t a1)
{
  if (SFDeviceModel_onceToken != -1)
  {
    SFDeviceModel_cold_1();
  }

  v2 = SFDeviceModel_result;

  return v2;
}

id handoff_log(uint64_t a1)
{
  if (handoff_log_onceToken != -1)
  {
    handoff_log_cold_1();
  }

  v2 = handoff_log___logger;

  return v2;
}

id SFActivityScanTypesToString(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (!a1)
  {
    v4 = @"None";
LABEL_10:
    [v3 addObject:v4];
    goto LABEL_11;
  }

  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    [v3 addObject:@"CopyPaste"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  [v2 addObject:@"Handoff"];
  if ((a1 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a1 & 4) != 0)
  {
LABEL_9:
    v4 = @"Boosted";
    goto LABEL_10;
  }

LABEL_11:
  v5 = [v3 componentsJoinedByString:{@", "}];

  return v5;
}

void sub_1A9669B94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id auto_unlock_log(uint64_t a1)
{
  if (auto_unlock_log_onceToken != -1)
  {
    auto_unlock_log_cold_1();
  }

  v2 = auto_unlock_log___logger;

  return v2;
}

uint64_t SFDeviceIsRealityDevice(uint64_t a1, uint64_t a2)
{
  v2 = SFDeviceClassCodeGet(a1, a2);
  v3 = v2;
  v5 = SFDeviceClassCodeGet(v2, v4);
  v6 = (v3 == 3) & _os_feature_enabled_impl();
  if (v5 == 8)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

id authentications_log(uint64_t a1)
{
  if (authentications_log_onceToken != -1)
  {
    authentications_log_cold_1();
  }

  v2 = authentications_log___logger;

  return v2;
}

__CFString *SFAuthenticationTypeToString(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E788D2F8[a1];
  }
}

void sf_dispatch_on_main_queue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v1 = block;
  }
}

__CFString *SFAuthenticationErrorCodeToString(unsigned int a1)
{
  if (a1 > 0x2D)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E788D370[a1];
  }
}

__CFString *SFLocalizedStringForKey(const __CFString *a1)
{
  v1 = copyLocalizedStringForKey(a1);

  return v1;
}

CFStringRef copyLocalizedStringForKeyInStringsFile(const __CFString *cf, CFStringRef tableName)
{
  if (getSharingFrameworkBundle_sOnce != -1)
  {
    getSharingFrameworkBundle_cold_1();
  }

  v4 = getSharingFrameworkBundle_gBundleRef;
  if (getSharingFrameworkBundle_gBundleRef)
  {

    return CFBundleCopyLocalizedString(v4, cf, cf, tableName);
  }

  else
  {
    v6 = CFGetAllocator(cf);

    return CFStringCreateCopy(v6, cf);
  }
}

uint64_t sub_1A966A1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1A966A224(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      sub_1A966A2F8(&v7);
      v6 = v7;
      (*(v4 + 8))(&v6, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1A966A2F8(_BYTE *a1@<X8>)
{
  v2 = sub_1A99766E0();
  v3 = MKBGetDeviceLockState();

  if (v3 >= 8)
  {
    if (qword_1EB3B0AE0 != -1)
    {
      swift_once();
    }

    v5 = sub_1A99764A0();
    __swift_project_value_buffer(v5, qword_1EB3B1FA8);
    v6 = sub_1A9976480();
    v7 = sub_1A9976F70();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v3;
      _os_log_impl(&dword_1A9662000, v6, v7, "Unknown keybag state: %d File a radar against Sharing | all", v8, 8u);
      MEMORY[0x1AC58D2C0](v8, -1, -1);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x100000001000001uLL >> (8 * v3);
  }

  *a1 = v4;
}

uint64_t SFOperationCancel(uint64_t a1)
{
  v2 = framework_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    SFOperationCancel_cold_1();
  }

  pthread_mutex_lock((a1 + 64));
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRunLoopTimerInvalidate(v3);
    CFRelease(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = 1;
    v4 = *(a1 + 184);
    if (v4)
    {
      barrier[0] = MEMORY[0x1E69E9820];
      barrier[1] = 0x40000000;
      barrier[2] = __SFOperationCancel_block_invoke;
      barrier[3] = &__block_descriptor_tmp_306;
      barrier[4] = v4;
      xpc_connection_send_barrier(v4, barrier);
      *(a1 + 184) = 0;
    }
  }

  return pthread_mutex_unlock((a1 + 64));
}

id framework_log(uint64_t a1)
{
  if (framework_log_onceToken != -1)
  {
    framework_log_cold_1();
  }

  v2 = framework_log___logger;

  return v2;
}

void __SFOperationCancel_block_invoke(uint64_t a1)
{
  xpc_connection_cancel(*(a1 + 32));
  v2 = *(a1 + 32);

  xpc_release(v2);
}

uint64_t SFDeviceSupportsAutoUnlock(uint64_t a1, uint64_t a2)
{
  v2 = SFDeviceClassCodeGet(a1, a2);
  if (v2 != 1 && SFDeviceClassCodeGet(v2, v3) != 8 || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return MGGetBoolAnswer();
}

id SFCompactStringFromCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 description];
  v3 = [v1 conformsToProtocol:&unk_1F1DA5950];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"((){4})|\\\\+n|\n" options:0 error:0];
    v5 = [v4 stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{objc_msgSend(v2, "length"), &stru_1F1D30528}];

    v2 = [v5 stringByReplacingOccurrencesOfString:@"\ withString:@"""];
  }

  return v2;
}

__CFString *SFAdvertisementDescriptionFromPayloadData(void *a1)
{
  if (a1)
  {
    v2 = SFHexStringForDataEx(a1, 0);
  }

  else
  {
    v2 = @"GOODBYE";
  }

  return v2;
}

id asset_log(uint64_t a1)
{
  if (asset_log_onceToken != -1)
  {
    asset_log_cold_1();
  }

  v2 = asset_log___logger;

  return v2;
}

const char *SFNearbyBLEServiceTypeToString(int a1)
{
  result = "Invalid";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "ContinuityRemote";
      break;
    case 2:
      result = "iOSSetup";
      break;
    case 3:
      result = "Repair";
      break;
    case 4:
      result = "Setup2";
      break;
    case 5:
      result = "AudioTuning";
      break;
    case 6:
      result = "PasswordGranting";
      break;
    case 7:
      result = "PasswordSharing";
      break;
    case 8:
      result = "System";
      break;
    case 9:
      result = "AutoUnlock";
      break;
    case 10:
      result = "WHASetup";
      break;
    case 11:
      result = "AppleTVSetup";
      break;
    case 12:
      result = "DeviceDiagnostics";
      break;
    case 13:
      result = "RemoteAutoFill";
      break;
    case 14:
      result = "ApplePay";
      break;
    case 15:
      result = "CompanionLinkProx";
      break;
    case 16:
      result = "RemoteManagement";
      break;
    case 17:
      result = "RemoteAutoFillPong";
      break;
    case 18:
      result = "RemoteDisplay";
      break;
    case 19:
      result = "ContinuityKeyboard";
      break;
    case 20:
      result = "PhoneCallHandoff";
      break;
    case 21:
      result = "ShareAudio";
      break;
    case 22:
      result = "AuthenticateAccounts";
      break;
    case 23:
      goto LABEL_5;
    case 24:
      result = "HasInvitations";
      break;
    case 25:
      result = "AcceptedInvitation";
      break;
    default:
      if (a1 == 127)
      {
        result = "Debug";
      }

      else
      {
LABEL_5:
        result = "?";
      }

      break;
  }

  return result;
}

const char *SFNearbyBLEServiceTypeToString_0(int a1)
{
  result = "Invalid";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "ContinuityRemote";
      break;
    case 2:
      result = "iOSSetup";
      break;
    case 3:
      result = "Repair";
      break;
    case 4:
      result = "Setup2";
      break;
    case 5:
      result = "AudioTuning";
      break;
    case 6:
      result = "PasswordGranting";
      break;
    case 7:
      result = "PasswordSharing";
      break;
    case 8:
      result = "System";
      break;
    case 9:
      result = "AutoUnlock";
      break;
    case 10:
      result = "WHASetup";
      break;
    case 11:
      result = "AppleTVSetup";
      break;
    case 12:
      result = "DeviceDiagnostics";
      break;
    case 13:
      result = "RemoteAutoFill";
      break;
    case 14:
      result = "ApplePay";
      break;
    case 15:
      result = "CompanionLinkProx";
      break;
    case 16:
      result = "RemoteManagement";
      break;
    case 17:
      result = "RemoteAutoFillPong";
      break;
    case 18:
      result = "RemoteDisplay";
      break;
    case 19:
      result = "ContinuityKeyboard";
      break;
    case 20:
      result = "PhoneCallHandoff";
      break;
    case 21:
      result = "ShareAudio";
      break;
    case 22:
      result = "AuthenticateAccounts";
      break;
    case 23:
      goto LABEL_5;
    case 24:
      result = "HasInvitations";
      break;
    case 25:
      result = "AcceptedInvitation";
      break;
    default:
      if (a1 == 127)
      {
        result = "Debug";
      }

      else
      {
LABEL_5:
        result = "?";
      }

      break;
  }

  return result;
}

__CFString *SFShortHashArrayDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![v1 count])
  {
    v3 = 0;
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [MEMORY[0x1E696AD60] string];
  if (!v3 || ![v2 count])
  {
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    v4 = [v2 objectAtIndexedSubscript:v5];

    if ([v4 length] < 0xB)
    {
      [(__CFString *)v3 appendString:v4];
    }

    else
    {
      v7 = [v4 substringWithRange:{0, 5}];
      v8 = [v4 substringFromIndex:{objc_msgSend(v4, "length") - 5}];
      [(__CFString *)v3 appendFormat:@"%@...%@", v7, v8];
    }

    if (v5 < [v2 count] - 1)
    {
      [(__CFString *)v3 appendString:@", "];
    }

    ++v5;
  }

  while (v5 < [v2 count]);
LABEL_15:
  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = @"<nil>";
  }

  v10 = v9;

  return v9;
}

uint64_t SFIsDeviceAudioAccessory(uint64_t a1, uint64_t a2)
{
  if (SFIsDeviceAudioAccessory_onceToken != -1)
  {
    SFIsDeviceAudioAccessory_cold_1();
  }

  return SFIsDeviceAudioAccessory_result;
}

id share_sheet_log(uint64_t a1)
{
  if (share_sheet_log_onceToken != -1)
  {
    share_sheet_log_cold_1();
  }

  v2 = share_sheet_log___logger;

  return v2;
}

void sub_1A966BEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __share_sheet_log_block_invoke()
{
  v0 = os_log_create("com.apple.ShareSheet", "ShareSheet");
  v1 = share_sheet_log___logger;
  share_sheet_log___logger = v0;
}

void __utilities_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Utilities");
  v1 = utilities_log___logger;
  utilities_log___logger = v0;
}

id utilities_log(uint64_t a1)
{
  if (utilities_log_onceToken != -1)
  {
    utilities_log_cold_1();
  }

  v2 = utilities_log___logger;

  return v2;
}

id SFFilterStringsAndWebURLsFromList(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] string];
  objc_msgSend(v2, "appendString:", @"(\n");
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          [v2 appendFormat:@"\t%@\n", v10];
LABEL_9:

          goto LABEL_10;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 isFileURL] & 1) == 0)
        {
          v10 = [v8 scheme];
          [v2 appendFormat:@"\t<NSURL (non-file, scheme: %@)>\n", v10];
          goto LABEL_9;
        }

        [v2 appendFormat:@"\t%@\n", v8];
LABEL_10:
        ++v7;
      }

      while (v5 != v7);
      v11 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v11;
    }

    while (v11);
  }

  [v2 appendString:@""]);

  return v2;
}

id airdrop_log(uint64_t a1)
{
  if (airdrop_log_onceToken != -1)
  {
    airdrop_log_cold_1();
  }

  v2 = airdrop_log___logger;

  return v2;
}

id airdrop_nw_log(uint64_t a1)
{
  if (airdrop_nw_log_onceToken != -1)
  {
    airdrop_nw_log_cold_1();
  }

  v2 = airdrop_nw_log___logger;

  return v2;
}

double SFSuggestedAirDropThumbnailSize(double a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.Passbook"])
  {
    v4 = 150.0;
  }

  else
  {
    v5 = [v3 isEqualToString:@"com.apple.AppStore"];
    v4 = 150.0;
    if ((v5 & 1) == 0)
    {
      v6 = [v3 isEqualToString:{@"com.apple.MobileStore", 150.0, 150.0}];
      v4 = 150.0;
      if ((v6 & 1) == 0)
      {
        v7 = [v3 isEqualToString:{@"com.apple.Music", 150.0, 150.0}];
        v4 = 150.0;
        if ((v7 & 1) == 0)
        {
          v8 = [v3 isEqualToString:{@"com.apple.itunesu", 150.0, 150.0}];
          v4 = 150.0;
          if ((v8 & 1) == 0)
          {
            if ([v3 isEqualToString:{@"com.apple.mobilephone", 150.0, 150.0}] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileAddressBook"))
            {
              v4 = 40.0;
            }

            else
            {
              v9 = [v3 isEqualToString:@"com.apple.VoiceMemos"];
              v4 = 270.0;
              if (v9)
              {
                v4 = 166.0;
              }
            }
          }
        }
      }
    }
  }

  v10 = 2.0 / a1;
  v11 = floor(v4 * v10);

  return v11;
}

void SFDispatchTimerSet(void *a1, double a2, double a3, double a4)
{
  v6 = (a2 * 1000000000.0);
  source = a1;
  v7 = dispatch_time(0x8000000000000000, v6);
  if (a4 <= -10.0)
  {
    v8 = v6 / 0xA;
  }

  else if (a4 <= -4.0)
  {
    v8 = v6 >> 2;
  }

  else
  {
    v8 = (a4 * 1000000000.0);
  }

  if (a3 < 0.0)
  {
    v9 = -1;
  }

  else
  {
    v9 = (a3 * 1000000000.0);
  }

  dispatch_source_set_timer(source, v7, v9, v8);
}

uint64_t type metadata accessor for SFClientIdentity(uint64_t a1)
{
  result = qword_1EB3ACB60;
  if (!qword_1EB3ACB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7Sharing21SFAirDropUserDefaultsC6sharedACvgZ_0()
{
  if (qword_1EB3ACAD0 != -1)
  {
    swift_once();
  }

  sub_1A9977AF0();
  return v1;
}

uint64_t sub_1A966D11C(void *a1)
{

  v1 = sub_1A966D160();

  return v1 & 1;
}

uint64_t sub_1A966D160()
{
  v1 = v0;
  sub_1A9976530();
  v2 = v35[0];
  if (LOBYTE(v35[0]) == 2)
  {
    v3 = *(v0 + 56);
    if (v3)
    {
      v4 = v3;
      v5 = sub_1A99767E0();
      v6 = [v4 objectForKey_];

      if (v6)
      {
        sub_1A99771B0();
        swift_unknownObjectRelease();
        sub_1A97AF7EC(v35, v34);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v35);

          v2 = v33;
          return v2 & 1;
        }

        v10 = sub_1A99767E0();
        v11 = [v4 stringForKey_];

        if (v11)
        {
          v12 = sub_1A9976820();
          v14 = v13;

          v15 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(v12, v14);
          if (v15 != 2)
          {
            v31 = v15;
            __swift_destroy_boxed_opaque_existential_0Tm(v35);

            v2 = v31;
            return v2 & 1;
          }

          if (qword_1EB3B0AB0 != -1)
          {
            swift_once();
          }

          v16 = sub_1A99764A0();
          __swift_project_value_buffer(v16, qword_1EB3B0AB8);

          v17 = sub_1A9976480();
          v18 = sub_1A9976F70();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v34[0] = v20;
            *v19 = 136315138;
            v21 = sub_1A99772C0();
            v23 = v22;

            v24 = sub_1A97AF148(v21, v23, v34);

            *(v19 + 4) = v24;
            v25 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_22:
            _os_log_impl(&dword_1A9662000, v17, v18, v25, v19, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v20);
            MEMORY[0x1AC58D2C0](v20, -1, -1);
            MEMORY[0x1AC58D2C0](v19, -1, -1);

LABEL_24:
            __swift_destroy_boxed_opaque_existential_0Tm(v35);
            v2 = *(v1 + 82);
            return v2 & 1;
          }

          goto LABEL_23;
        }

        if (qword_1EB3B0AB0 == -1)
        {
LABEL_20:
          v26 = sub_1A99764A0();
          __swift_project_value_buffer(v26, qword_1EB3B0AB8);

          v17 = sub_1A9976480();
          v18 = sub_1A9976F70();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v20 = swift_slowAlloc();
            v34[0] = v20;
            *v19 = 136315138;
            v27 = sub_1A99772C0();
            v29 = v28;

            v30 = sub_1A97AF148(v27, v29, v34);

            *(v19 + 4) = v30;
            v25 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
            goto LABEL_22;
          }

LABEL_23:

          goto LABEL_24;
        }

LABEL_30:
        swift_once();
        goto LABEL_20;
      }
    }

    if (*(v0 + 81))
    {
      v2 = *(v0 + 82);
      return v2 & 1;
    }

    v7 = *(v0 + 64);
    v8 = *(v1 + 80);
    v4 = *(v1 + 16);
    v1 = *(v1 + 32);
    v9 = objc_opt_self();
    if (v7)
    {
      if (((v1 | v8) & 1) == 0)
      {
        if (v4)
        {
          v2 = [v9 featureEnabledForDomain:v7 feature:v4];
          return v2 & 1;
        }

        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return v2 & 1;
}

uint64_t SFStoreDemoMode(uint64_t a1, uint64_t a2)
{
  if (SFStoreDemoMode_onceToken != -1)
  {
    SFStoreDemoMode_cold_1();
  }

  return SFStoreDemoMode_result;
}

const char *SFBluetoothStateToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_1E788E2A0[a1];
  }
}

void _btSessionEventHandler(NSObject *a1, int a2, int a3, void *a4)
{
  v7 = a4;
  dispatch_assert_queue_V2(*(v7 + 38));
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = *(v7 + 18);
        if (*v8 <= 30)
        {
          if (*v8 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_38;
            }

            v8 = *(v7 + 18);
          }

          LogPrintF(v8, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 30, "BTSession detached: %#m\n", (a3 + 310000));
        }

LABEL_38:
        CFRelease(v7);
        goto LABEL_39;
      }

      goto LABEL_12;
    }

    v11 = *(v7 + 18);
    if (*v11 <= 30)
    {
      if (*v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        v11 = *(v7 + 18);
      }

      LogPrintF(v11, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 30, "BTSession attached: %#m\n", (a3 + 310000));
    }

LABEL_32:
    *(v7 + 2) = a1;
    goto LABEL_39;
  }

  if (a2 == 2)
  {
    v12 = *(v7 + 18);
    v13 = *v12;
    if (!*(v7 + 2))
    {
      if (v13 <= 60)
      {
        if (v13 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_38;
          }

          v12 = *(v7 + 18);
        }

        LogPrintF(v12, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 60, "### BTSession terminated (bluetoothd crash) when stopping\n");
      }

      goto LABEL_38;
    }

    if (v13 <= 60)
    {
      if (v13 != -1 || (v14 = _LogCategory_Initialize(), v12 = *(v7 + 18), v14))
      {
        LogPrintF(v12, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 60, "### BTSession terminated (bluetoothd crash)...re-attaching\n");
        v12 = *(v7 + 18);
      }
    }

    *(v7 + 2) = 0;
    v18 = _btSessionEventHandler;
    v15 = softLinkBTSessionAttachWithQueue(*(v12 + 24), &v18, v7, *(v7 + 38));
    if (v15)
    {
      v16 = v15;
      v17 = *(v7 + 18);
      if (*v17 <= 60)
      {
        if (*v17 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_38;
          }

          v17 = *(v7 + 18);
        }

        LogPrintF(v17, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 60, "### BTSession re-attach failed: %#m\n", (v16 + 310000));
      }

      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (a2 == 3)
  {
    v9 = *(v7 + 18);
    if (*v9 <= 60)
    {
      if (*v9 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v9 = *(v7 + 18);
      }

      LogPrintF(v9, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 60, "### BTSession failed: %#m\n");
    }

    goto LABEL_39;
  }

LABEL_12:
  v10 = *(v7 + 18);
  if (*v10 <= 40)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_39;
      }

      v10 = *(v7 + 18);
    }

    LogPrintF(v10, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 40, "### BTSession unknown event %d, result %#m\n");
  }

LABEL_39:
}

void _btSessionEventHandler_0(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = a4;
  dispatch_assert_queue_V2(*(v9 + 23));
  v10 = *(v9 + 17);
  v11 = *v10;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (v11 <= 30)
        {
          if (v11 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_25;
            }

            v10 = *(v9 + 17);
          }

          LogPrintF(v10, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 30, "BTSession detached: %#m\n", (a3 + 310000));
        }

LABEL_25:
        *(v9 + 10) = 0;
        v9[89] = 0;
        [v9 _btEnsureStopped];
        if (v9[96] != 1 || (v9[91] & 1) != 0)
        {
          goto LABEL_42;
        }

        v12 = *(v9 + 17);
        if (*v12 > 30)
        {
          goto LABEL_40;
        }

        if (*v12 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_40;
          }

          v12 = *(v9 + 17);
        }

        LogPrintF(v12, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 30, "BTSession retrying after detach\n");
LABEL_40:
        v9[96] = 0;
        [v9 _btEnsureStopped];
LABEL_41:
        [v9 _btEnsureStarted];
LABEL_42:
        CFRelease(v9);
        goto LABEL_43;
      }

      goto LABEL_12;
    }

    if (v11 <= 30)
    {
      if (v11 != -1)
      {
LABEL_18:
        LogPrintF(v10, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 30, "BTSession attached: %#m\n", (a3 + 310000));
        goto LABEL_33;
      }

      if (_LogCategory_Initialize())
      {
        v10 = *(v9 + 17);
        goto LABEL_18;
      }
    }

LABEL_33:
    *(v9 + 10) = a1;
    v9[89] = 0;
    if (v9[90] == 1)
    {
      [v9 _btEnsureStarted];
    }

    else
    {
      [v9 _btEnsureStopped];
    }

    goto LABEL_43;
  }

  if (a2 == 2)
  {
    if (v11 > 60)
    {
      goto LABEL_37;
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_37:
        *(v9 + 10) = 0;
        v9[89] = 0;
        v13 = v9[90];
        [v9 _btEnsureStopped];
        if (v13 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v10 = *(v9 + 17);
    }

    LogPrintF(v10, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 60, "### BTSession terminated (bluetoothd crash)...re-attaching\n");
    goto LABEL_37;
  }

  if (a2 == 3)
  {
    if (v11 > 60)
    {
      goto LABEL_43;
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_43;
      }

      v10 = *(v9 + 17);
    }

    LogPrintF(v10, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 60, "### BTSession failed: %#m\n");
    goto LABEL_43;
  }

LABEL_12:
  if (v11 > 40)
  {
    goto LABEL_43;
  }

  if (v11 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_43;
    }

    v10 = *(v9 + 17);
  }

  LogPrintF(v10, "void _btSessionEventHandler(BTSession, BTSessionEvent, BTResult, void *)", 40, "BTSession unknown event %d, result %#m\n");
LABEL_43:

  objc_autoreleasePoolPop(v8);
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1)
{

  return _LogCategory_Initialize();
}

__CFString *SFHotspotNetworkTypeString(unsigned int a1)
{
  if (a1 < 9 && ((0x1DFu >> a1) & 1) != 0)
  {
    return off_1E788B688[a1];
  }

  if (SFRemoteHotspotNetworkTypeHSDPA == a1)
  {
    return @"HSDPA";
  }

  return @"Unknown";
}

id SFDeviceToRPCompanionLinkDevice(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (RPCompanionLinkDeviceIsEqualToSFDevice(v10, v3))
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t RPCompanionLinkDeviceIsEqualToSFDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 rapportIdentifier];
  if (v5 && ([v3 homeKitIdentifier], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "UUIDString"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", v5), v7, v6, (v8 & 1) != 0) || (v5, objc_msgSend(v4, "idsIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v3, "idsDeviceIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v5), v9, (v10 & 1) != 0) || (v5, objc_msgSend(v4, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "UUIDString"), v5 = objc_claimAutoreleasedReturnValue(), v11, v5) && (objc_msgSend(v3, "effectiveIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v5), v12, (v13 & 1) != 0))
  {
    LOBYTE(v14) = 1;
  }

  else
  {

    v5 = [v3 publicIdentifier];
    if (v5)
    {
      v15 = [v4 bleDevice];
      v16 = [v15 advertisementFields];
      v17 = [v16 objectForKeyedSubscript:@"bdAddr"];

      if (v17 && NSStringLooksLikeBTAddress(v5))
      {
        v18 = SFDataFromHexString(v5);
        if (v18)
        {
          v14 = ([v17 isEqualToData:v18] << 31) >> 31;
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

BOOL NSStringLooksLikeBTAddress(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] >= 0xC)
  {
    v3 = [v1 componentsSeparatedByString:@":"];
    v4 = v3;
    if (v3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v11 + 1) + 8 * v9) length] < 2)
            {

              goto LABEL_14;
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v2 = [v5 count] == 6;
    }

    else
    {
LABEL_14:
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SFPowerLogEvent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (gLogCategory_Report <= 20 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_Report, "void SFPowerLogEvent(NSString * _Nonnull __strong, NSDictionary * _Nonnull __strong)", 20, "PowerLog event %@, details %@\n", v3, v4);
  }

  if (SFPowerLogEvent_sOnce != -1)
  {
    SFPowerLogEvent_cold_1();
  }

  v5 = SFPowerLogEvent_sPowerLogQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFPowerLogEvent_block_invoke_2;
  block[3] = &unk_1E788A658;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

id SFDataFromHexString(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"$ <>:\n"];
  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  v5 = [v4 invertedSet];

  v6 = [v1 componentsSeparatedByCharactersInSet:v3];
  v7 = [v6 componentsJoinedByString:&stru_1F1D30528];

  v8 = [v7 rangeOfCharacterFromSet:v5];
  if (([v7 length] & 1) == 0 && v8 == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v7, "length"))
  {
    v9 = 0;
    do
    {
      v10 = [v7 characterAtIndex:v9];
      if ((v10 - 65) <= 5)
      {
        v11 = v10 - 55;
      }

      else
      {
        v11 = 0;
      }

      if ((v10 - 97) <= 5)
      {
        v11 = v10 - 87;
      }

      if ((v10 - 48) <= 9)
      {
        v12 = v10 - 48;
      }

      else
      {
        v12 = v11;
      }

      v13 = v9 + 1;
      v14 = [v7 characterAtIndex:v13];
      v15 = v14 - 48;
      if ((v14 - 65) <= 5)
      {
        v16 = v14 - 55;
      }

      else
      {
        v16 = 0;
      }

      if ((v14 - 97) <= 5)
      {
        v17 = v14 - 87;
      }

      else
      {
        v17 = v16;
      }

      if (v15 > 9)
      {
        LOBYTE(v15) = v17;
      }

      v19 = v15 + 16 * v12;
      [v2 appendBytes:&v19 length:1];
      v9 = v13 + 1;
    }

    while (v9 < [v7 length]);
  }

  return v2;
}

void SFMetricsLog(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (gLogCategory_Metrics <= 30 && (gLogCategory_Metrics != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_Metrics, "void SFMetricsLog(NSString * _Nonnull __strong, NSDictionary<NSString *,NSObject *> * _Nonnull __strong)", 30, "MetricEvent '%@' : %##@\n", v4, v3);
  }

  softLinkAnalyticsSendEvent(v4, v3);
}

void *sub_1A9671044@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A967106C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A9976820();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1A96710B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A96710CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A96710EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1A9671134()
{
  v1 = sub_1A9976C60();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A9671204()
{

  return swift_deallocObject();
}

uint64_t sub_1A9671244()
{
  v1 = sub_1A9976C60();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A9671320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97B820C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A9671350()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A9671440()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A9671478()
{

  return swift_deallocObject();
}

uint64_t sub_1A96714B0()
{

  return swift_deallocObject();
}

uint64_t sub_1A9671500()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1A967165C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v1 = sub_1A9976BB0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A9671960()
{
  v1 = 0x74616E6974736564;
  v2 = 0x646574726F706D69;
  if (*v0 != 2)
  {
    v2 = 0x74736575716572;
  }

  if (*v0)
  {
    v1 = 0x726566736E617274;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A96719F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DC22C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9671A20()
{
  v1 = 0x726566736E617274;
  if (*v0 != 1)
  {
    v1 = 0x74736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1A9671A90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A97DC3A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9671C4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SFAirDropClient.Identifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1A99762C0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AE0, &qword_1A9992BA0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  if (a2 == 2147483646)
  {
    v18 = *(a1 + a3[10]);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 - 1;
    if (v19 < 0)
    {
      v19 = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v20 = sub_1A9976230();
    if (*(*(v20 - 8) + 84) == a2)
    {
      v8 = v20;
      v12 = *(v20 - 8);
      v13 = a3[11];
      goto LABEL_11;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AE8, &qword_1A9992BA8);
    if (*(*(v21 - 8) + 84) == a2)
    {
      v8 = v21;
      v12 = *(v21 - 8);
      v13 = a3[14];
      goto LABEL_11;
    }

    v22 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
    v23 = *(*(v22 - 8) + 48);
    v24 = a1 + a3[16];

    return v23(v24, a2, v22);
  }
}

uint64_t sub_1A9671F4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SFAirDropClient.Identifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1A99762C0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for SFAirDropReceive.Transfer.State(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AE0, &qword_1A9992BA0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[10]) = a2;
    return result;
  }

  v19 = sub_1A9976230();
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AE8, &qword_1A9992BA8);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_11;
  }

  v21 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[16];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_1A967225C()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 56) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A96722DC()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A96723AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A96723E4()
{
  MEMORY[0x1AC58D370](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A967241C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A967246C()
{

  return swift_deallocObject();
}

uint64_t sub_1A96724A8()
{
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v1 = sub_1A9976BB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A96725B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A96725E8()
{

  return swift_deallocObject();
}

uint64_t sub_1A9672630()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1A96726B0()
{

  return swift_deallocObject();
}

uint64_t sub_1A96726F0()
{

  return swift_deallocObject();
}

uint64_t sub_1A967277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A9672854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 60) + 8) = a2;
  }

  return result;
}

uint64_t sub_1A967291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A9976020();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A96729E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A9976020();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1A9672AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A9976020();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A9672B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A9976020();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A9672B98()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A9672BD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A9672C20(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1A9672CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A99764A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A9672D5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A99764A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A9672E00()
{

  return swift_deallocObject();
}

uint64_t sub_1A9672E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFSecurityScopedURL(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A9672EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFSecurityScopedURL(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A9672FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A9673034(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1BA8, &qword_1A9997320);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1A96730C4()
{

  return swift_deallocObject();
}

uint64_t sub_1A9673114()
{

  return swift_deallocObject();
}

uint64_t sub_1A967314C()
{
  MEMORY[0x1AC58D370](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A96731F8()
{
  MEMORY[0x1AC58D370](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A9673230()
{

  return swift_deallocObject();
}

uint64_t sub_1A9673278()
{

  return swift_deallocObject();
}

uint64_t sub_1A96732C8()
{

  return swift_deallocObject();
}

uint64_t sub_1A9673320()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A9673374()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A96733AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A96733EC()
{

  return swift_deallocObject();
}

uint64_t sub_1A967342C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A96734B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = a3(a1, a2);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void *sub_1A96734E8@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_1A9673500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1A9834318(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1A9673538(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A9673594(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = type metadata accessor for Deque(0, *(a3 + a4 - 8), a3, a4);
  return sub_1A9833D28(a1, v5, v6);
}

uint64_t sub_1A96735FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Deque.subscript.getter(*a2, a2[1], *a1, *(a2 + a3 - 8));
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  return result;
}

uint64_t sub_1A967364C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9673688(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A96736A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1A967371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 7;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A96737E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_1A9673898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFProximityHandoff.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A9673950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFProximityHandoff.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1A9673A44()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A9673AE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v6 = v1[14];
  v7 = sub_1A9976230();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = v0 + v2 + v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E48, &qword_1A9994A80) + 48);
      v5(v14, v4);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E50, &qword_1A9994A88);
      v5(v14 + *(v15 + 52), v4);
      v12 = &qword_1EB3B2F40;
      v13 = &qword_1A9999480;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_7;
    }
  }

  v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);

  sub_1A97DC96C(*(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
  v11 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v5(v10 + *(v11 + 28), v4);
  v12 = &qword_1EB3B2F38;
  v13 = &unk_1A99A17F0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);

LABEL_7:
  v16 = v0 + v2 + v1[16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F48, &qword_1A9999488);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v5(v16, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1A9673E74()
{
  v1 = (type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v14 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v3 = v0 + v2;
  v4 = sub_1A99762C0();
  v13 = *(*(v4 - 8) + 8);
  v13(v3, v4);
  v5 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) + 20);
  v6 = sub_1A9976230();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v8 = v3 + v1[7];

  v9 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
  v7(v8 + *(v9 + 24), v6);

  v10 = v8 + *(v9 + 52);

  sub_1A97B43C4(*(v10 + 16), *(v10 + 24));
  v11 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  v13(v10 + *(v11 + 24), v4);

  return swift_deallocObject();
}

uint64_t sub_1A96740D4()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v22 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = v0 + v3 + v1[5];
  type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = (v2 + 32) & ~v2;
    v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    v10 = v9[5];
    v20 = *(v6 + 48);
    if (!v20(v8 + v10, 1, v5))
    {
      v7(v8 + v10, v5);
    }

    v7(v8 + v9[11], v5);
    v11 = v9[12];
    if (!v20(v8 + v11, 1, v5))
    {
      v7(v8 + v11, v5);
    }

    v12 = (v8 + v9[13]);
    v13 = v12[1];
    v3 = v21;
    if (v13 >> 60 != 15)
    {
      sub_1A97B43C4(*v12, v13);
    }
  }

  v14 = v1[6];
  v15 = sub_1A9976230();
  (*(*(v15 - 8) + 8))(v4 + v14, v15);
  v16 = v1[7];
  v17 = sub_1A99773D0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v4 + v16, 1, v17))
  {
    (*(v18 + 8))(v4 + v16, v17);
  }

  return swift_deallocObject();
}

uint64_t sub_1A9674414()
{
  v1 = *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_1A99762C0();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_1A9674554()
{

  return swift_deallocObject();
}

uint64_t sub_1A96745A4()
{
  v1 = (type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = sub_1A99762C0();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = (v0 + v2 + v1[9]);
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
    sub_1A97B43C4(*v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1A9674704()
{
  v1 = *(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  type metadata accessor for SFAirDropClient.Identifier(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = sub_1A99762C0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1A967484C()
{
  v1 = type metadata accessor for SFAirDropSend.Request(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  sub_1A984D578(*(v3 + v1[5]), *(v3 + v1[5] + 8), *(v3 + v1[5] + 16));

  v5(v0 + v2 + v1[7], v4);
  v6 = v0 + v2 + v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v5(v6, v4);
  }

  v8 = (v3 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_1A97B43C4(*v8, v9);
  }

  v10 = (v3 + v1[11]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_1A97B43C4(*v10, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1A9674AEC()
{

  sub_1A97B43C4(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A9674B64()
{
  v1 = *(type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_1A99762C0();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  type metadata accessor for SFProximityHandoff.Content(0);

  return swift_deallocObject();
}

uint64_t sub_1A9674E5C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A9674F5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B3030, &qword_1A9999B38);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A9674FF0()
{

  return swift_deallocObject();
}

uint64_t sub_1A9675028()
{

  return swift_deallocObject();
}

uint64_t sub_1A9675060()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A9675144()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A967517C()
{

  return swift_deallocObject();
}

uint64_t sub_1A96751BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v1 = sub_1A9976BB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A96752D8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A9675310()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v1 = sub_1A9976BB0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A96753C0()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v1 = sub_1A9976BB0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A96754A0()
{
  v12 = *(v0 + 4);
  v11 = *(v0 + 5);
  v1 = *(v0 + 6);
  v2 = *(v12 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v11 - 8);
  v5 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1A99770A0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(&v0[v3], v12);

  (*(v4 + 8))(&v0[v5], v11);
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(&v0[v8], 1, v1))
  {
    (*(v9 + 8))(&v0[v8], v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1A96756D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A96757A4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A9675874()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A9675944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A9675A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A9675AC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1A9675C30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

id sub_1A9675DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 80));
  *a2 = v3;

  return v3;
}

id sub_1A9675E3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 84));
  *a2 = v3;

  return v3;
}

id sub_1A9675E88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 88));
  *a2 = v3;

  return v3;
}

uint64_t sub_1A9675ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 96);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A9676008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 96);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A96761BC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A9676240()
{

  return swift_deallocObject();
}

uint64_t sub_1A9676278()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A96763D0()
{

  return swift_deallocObject();
}

uint64_t sub_1A9676414()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t sub_1A9676444(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1A99762C0();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B68, &qword_1A999DAA0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1A96765D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
    return result;
  }

  v13 = sub_1A99762C0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B68, &qword_1A999DAA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1A9676878@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A96768D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1A989D814();
}

uint64_t sub_1A96769A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A9676A58()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A9676A90()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A9676AD4()
{

  return swift_deallocObject();
}

uint64_t sub_1A9676B10()
{
  MEMORY[0x1AC58D370](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A9676B48()
{

  return swift_deallocObject();
}

uint64_t sub_1A9676B80()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_1A98A7B58(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1A9676BCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1A9676C04()
{

  return swift_deallocObject();
}

uint64_t sub_1A9676C54()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1A98A8690(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1A9676C9C()
{

  return swift_deallocObject();
}

uint64_t sub_1A9676DB4()
{

  return swift_deallocObject();
}

uint64_t sub_1A9676F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A9677008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A9677078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A9677168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A9677264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A99762C0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A9677310(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A99762C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A96773B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1A9976230();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1A96774D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1A9976230();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A96775D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A9976230();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A96776FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1A9976230();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A967785C(unsigned __int8 a1)
{
  v1 = 0x656C746974;
  v2 = 0x6341747065636361;
  if (a1 != 2)
  {
    v2 = 0x41656E696C636564;
  }

  if (a1)
  {
    v1 = 0x74706D6F7270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A967793C(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1A9677988()
{
  v1 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v33 = *(v0 + 2);
  v2 = v33;
  v34 = v1;
  v35 = v4;
  v36 = v3;
  v5 = type metadata accessor for SFAirDrop.PermissionRequest(0, &v33);
  v6 = *(*(v5 - 1) + 80);
  v28 = *(*(v5 - 1) + 64);
  v29 = (v6 + 48) & ~v6;
  v7 = &v0[v29];
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v30 = v9 + 8;
  v31 = v10;
  v10(&v0[v29], v8);
  v11 = v5[14];
  v12 = sub_1A9976230();
  (*(*(v12 - 8) + 8))(&v0[v29 + v11], v12);
  v13 = &v0[v29 + v5[15]];
  v33 = v2;
  v34 = v1;
  v35 = v4;
  v36 = v3;
  type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v6;
      v33 = v2;
      v34 = v1;
      v35 = v4;
      v36 = v3;
      v20 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction(255, &v33);
      v21 = &v13[*(swift_getTupleTypeMetadata2() + 48)];
      v25[1] = v5;
      v26 = v0;
      v31(v21, v8);
      v31(&v21[*(v20 + 52)], v8);
      v18 = &qword_1EB3B2F40;
      v19 = &qword_1A9999480;
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_7;
    }
  }

  v27 = v6;

  v26 = v25;
  MEMORY[0x1EEE9AC00](v15);
  v33 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69E6158];
  v32[0] = v2;
  v32[1] = v1;
  v32[2] = v4;
  v32[3] = v3;
  type metadata accessor for SFAirDrop.AcceptAction(255, v32);
  v35 = sub_1A9976B60();
  v36 = type metadata accessor for SFAirDrop.DeclineAction(255);
  v16 = &v13[*(swift_getTupleTypeMetadata() + 80)];

  sub_1A97DC96C(*(v16 + 2), *(v16 + 3), *(v16 + 4), *(v16 + 5), v16[48]);
  v17 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v31(&v16[*(v17 + 28)], v8);
  v18 = &qword_1EB3B2F38;
  v19 = &unk_1A99A17F0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);

LABEL_7:
  v22 = &v7[v5[16]];
  v33 = v2;
  v34 = v1;
  v35 = v4;
  v36 = v3;
  v23 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(0, &v33);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v31(v22, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1A9677DBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A9677DFC()
{

  return swift_deallocObject();
}

uint64_t sub_1A9677E34()
{

  return swift_deallocObject();
}

uint64_t sub_1A9677EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v12 = *(a1 + *(a3 + 52));
      if (v12 >= 2)
      {
        return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v13 = sub_1A9976230();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a2)
    {
      v15 = *(a3 + 16);
      v16 = *(a3 + 24);
      v17 = *(a3 + 32);
      v18 = *(a3 + 40);
      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = v18;
      v19 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v22);
      v20 = *(v19 - 8);
      if (*(v20 + 84) == a2)
      {
        return (*(v20 + 48))(a1 + *(a3 + 60), a2, v19);
      }

      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = v18;
      type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v22);
      v21 = sub_1A99770A0();
      return (*(*(v21 - 8) + 48))(a1 + *(a3 + 64), a2, v21);
    }

    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + *(a3 + 56);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1A96780CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + *(a4 + 52)) = a2 + 1;
      return result;
    }

    v13 = sub_1A9976230();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = *(a4 + 16);
      v16 = *(a4 + 24);
      v17 = *(a4 + 32);
      v18 = *(a4 + 40);
      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = v18;
      v19 = type metadata accessor for SFAirDrop.PermissionRequest.Style(0, &v22);
      v20 = *(v19 - 8);
      if (*(v20 + 84) == a3)
      {
        return (*(v20 + 56))(a1 + *(a4 + 60), a2, a2, v19);
      }

      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = v18;
      type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData(255, &v22);
      v21 = sub_1A99770A0();
      return (*(*(v21 - 8) + 56))(a1 + *(a4 + 64), a2, a2, v21);
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 56);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A96782D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A9678394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A9678444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A9678540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 52);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A9678648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A9678704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A96787C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F40, &qword_1A99A4408);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A9678854()
{

  return swift_deallocObject();
}

uint64_t sub_1A9678894()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A96788DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A96789A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A9678A68@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1A9678B20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1A9976230();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for SFAirDropClient.Identifier(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v16 = type metadata accessor for SFAirDropSend.Request(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  if (a2 == 2147483646)
  {
    v18 = *(a1 + a3[11] + 8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 - 1;
    if (v19 < 0)
    {
      v19 = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v20 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[13];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_1A9678D7C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1A9976230();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = type metadata accessor for SFAirDropClient.Identifier(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  result = type metadata accessor for SFAirDropSend.Request(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
  }

  else
  {
    v19 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
    v20 = *(*(v19 - 8) + 56);
    v21 = a1 + a4[13];

    return v20(v21, a2, a2, v19);
  }

  return result;
}

uint64_t sub_1A9678FD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1A9976230();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5548, &qword_1A99A5970);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1A9679174(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1A9976230();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5548, &qword_1A99A5970);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1A9679320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Failure(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A967938C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SFAirDropSend.Failure(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1A967940C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A9679478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A96794E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A9679554(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1A9679808(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SFAirDropUserDefaults.shockwaveEffectVariant.setter(v1, v2);
}

__n128 sub_1A9679F28(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A9679F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A966D160();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A967A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (type metadata accessor for SFProgressTask(0, v5, v6, a4) - 8);
  v15 = (*(*v7 + 80) + 64) & ~*(*v7 + 80);

  v8 = v4 + v15 + v7[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v9 = sub_1A9976DE0();
  (*(*(v9 - 8) + 8))(v8, v9);
  v11 = type metadata accessor for SFProgressContinuation(0, v5, v6, v10);
  v12 = *(v11 + 36);
  v13 = sub_1A9976DA0();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);

  (*(*(v5 - 8) + 8))(v8 + *(v11 + 44), v5);

  return swift_deallocObject();
}

uint64_t sub_1A967A300()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for SFClientIdentity(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();

  sub_1A97B43C4(*(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_5;
    }

    v9 = sub_1A99762C0();
    (*(*(v9 - 8) + 8))(v0 + v6, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
  }

LABEL_5:
  v10 = (((((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A967A538(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1A967A550()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A967A67C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A967A6B4()
{

  return swift_deallocObject();
}

uint64_t sub_1A967A6EC()
{

  return swift_deallocObject();
}

uint64_t sub_1A967A89C()
{
  MEMORY[0x1AC58D370](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1A967A8D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1A967A90C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1A9976230();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 253)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 2)
    {
      v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v15 = -2;
    }

    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C8, &unk_1A99A9E20);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1A967AAB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 253)
  {
    *(a1 + a4[6]) = a2 + 2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C8, &unk_1A99A9E20);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1A967AC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A967ACA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SFAirDropReceive.Failure(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1A967AD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A967AE2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A967AEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SFClientIdentity(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A967B010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SFClientIdentity(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A967B138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A967B1F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A99762C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A967B2B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = sub_1A9976230();
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6518, &qword_1A99AA990);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 2)
          {
            return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1A967B46C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1A9976230();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6518, &qword_1A99AA990);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A967B610(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1A99762C0();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[11];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1A967B754(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = sub_1A99762C0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1A967B890()
{
  SFNoThrowAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1A967B8C0()
{

  return swift_deallocObject();
}

uint64_t sub_1A967B8F8()
{

  return swift_deallocObject();
}

uint64_t sub_1A967B944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = (type metadata accessor for SFProgressTask(0, v5, v6, a4) - 8);
  v8 = (*(*v7 + 80) + 48) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v11 = (type metadata accessor for SFProgressContinuation(0, v5, v6, v10) - 8);
  v12 = *(*v11 + 80);
  v22 = (v8 + v9 + v12) & ~v12;
  v23 = (*(*v11 + 64) + v12 + v22) & ~v12;
  v21 = v4;
  swift_unknownObjectRelease();

  v13 = v4 + v8 + v7[11];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v14 = sub_1A9976DE0();
  v20 = *(*(v14 - 8) + 8);
  v20(v13, v14);
  v15 = v11[11];
  v16 = sub_1A9976DA0();
  v19 = *(*(v16 - 8) + 8);
  v19(v13 + v15, v16);

  v18 = *(*(v5 - 8) + 8);
  v18(v13 + v11[13], v5);

  v20(v21 + v22, v14);
  v19(v21 + v22 + v11[11], v16);

  v18(v21 + v22 + v11[13], v5);

  v20(v21 + v23, v14);
  v19(v21 + v23 + v11[11], v16);

  v18(v21 + v23 + v11[13], v5);

  return swift_deallocObject();
}

uint64_t sub_1A967BCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v7 = sub_1A9976DE0();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = sub_1A9976DA0();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + *(a3 + 40));
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = *(*(v6 - 8) + 48);
    v17 = a1 + *(a3 + 44);

    return v16(v17, a2, v6);
  }
}

uint64_t sub_1A967BEB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v9 = sub_1A9976DE0();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
LABEL_5:

    return v12(v13, a2, a2, v11);
  }

  result = sub_1A9976DA0();
  v15 = *(result - 8);
  if (*(v15 + 84) == a3)
  {
    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  else
  {
    v16 = *(*(v8 - 8) + 56);
    v17 = a1 + *(a4 + 44);

    return v16(v17, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A967C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for SFProgressContinuation(0, *(a3 + 16), *(a3 + 24), a4);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A967C120(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SFProgressContinuation(0, *(a4 + 16), *(a4 + 24), a4);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A967C1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SFProgressContinuation(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9976DE0();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = v6[11];
  v10 = sub_1A9976DA0();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  (*(*(v5 - 8) + 8))(v7 + v6[13], v5);

  return swift_deallocObject();
}

uint64_t sub_1A967C394()
{
  v1 = *v0;
  v2 = 1818523489;
  v3 = 1768319351;
  if (v1 != 5)
  {
    v3 = 0x6465726977;
  }

  v4 = 0x4669576C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x72616C756C6C6563;
  if (v1 != 1)
  {
    v5 = 0x6957746365726964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A967C46C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A967C47C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

_OWORD *sub_1A967C4DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A967C510(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SFAppleIDAddCertificateToKeychain(void *a1, uint64_t a2, void *a3, void *a4)
{
  v50[3] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a3;
  v8 = 0;
  result = 0;
  v9 = 4294960591;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!v6 || !a2)
  {
    goto LABEL_36;
  }

  v14 = *MEMORY[0x1E697AFF8];
  v15 = *MEMORY[0x1E697B000];
  v16 = *MEMORY[0x1E697B3D0];
  v48[0] = *MEMORY[0x1E697AFF8];
  v48[1] = v16;
  v50[0] = v15;
  v50[1] = a2;
  v49 = *MEMORY[0x1E697B320];
  v17 = v49;
  v50[2] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v48 count:3];
  v18 = SecItemCopyMatching(v11, &result);
  v42 = v17;
  if (v18 == -25300)
  {
    goto LABEL_11;
  }

  v19 = v18;
  if (v18)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      SFAppleIDAddCertificateToKeychain_cold_1(v19);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!result)
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_73;
  }

  v20 = v11;
  v21 = v7;
  v22 = CFGetTypeID(result);
  if (v22 != CFDataGetTypeID())
  {
    v8 = 0;
    v13 = 0;
    v9 = 4294960540;
    v7 = v21;
    v11 = v20;
    v10 = 0;
    v12 = 0;
    goto LABEL_36;
  }

  v23 = result;
  result = 0;
  v7 = v21;
  v11 = v20;
  v10 = v23;
LABEL_12:
  v24 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v24;
  if (!v24)
  {
    v8 = 0;
    v12 = 0;
    v9 = 4294960568;
    goto LABEL_36;
  }

  if (v7)
  {
    [v24 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  }

  [v13 setObject:@"com.apple.sharing.appleidauthentication" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  [v13 setObject:*MEMORY[0x1E697AC08] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  v43 = v7;
  if (!v10)
  {
    query = 0;
    goto LABEL_27;
  }

  v25 = *MEMORY[0x1E697B3C8];
  v46[0] = v14;
  v46[1] = v25;
  v47[0] = v15;
  v47[1] = v10;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  if (!v26)
  {
    v8 = 0;
    v12 = 0;
LABEL_73:
    v9 = 4294960534;
    goto LABEL_36;
  }

  query = v26;
  v27 = SecItemUpdate(v26, v13);
  if (!v27)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities > 30)
    {
      v8 = 0;
      v36 = a4;
      if (a4)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v36 = a4;
    if (gLogCategory_SFAppleIDKeychainUtilities == -1)
    {
      v8 = 0;
      if (!_LogCategory_Initialize())
      {
        if (!a4)
        {
          goto LABEL_46;
        }

        goto LABEL_48;
      }

      v37 = "Updated certificate in keychain for %{mask}\n";
    }

    else
    {
      v8 = 0;
      v37 = "Updated certificate in keychain for %{mask}\n";
    }

    goto LABEL_45;
  }

  if (gLogCategory_SFAppleIDKeychainUtilities <= 60)
  {
    v28 = v27;
    if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
    {
      SFAppleIDAddCertificateToKeychain_cold_2(v28);
    }
  }

  v29 = SecItemDelete(query);
  if (v29)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 60)
    {
      v30 = v29;
      if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
      {
        SFAppleIDAddCertificateToKeychain_cold_3(v30);
      }
    }
  }

LABEL_27:
  [v13 setObject:v15 forKeyedSubscript:v14];
  [v13 setObject:a2 forKeyedSubscript:v16];
  v31 = MEMORY[0x1E695E118];
  [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v42];
  [v13 setObject:v31 forKeyedSubscript:*MEMORY[0x1E697B390]];
  [v13 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E697AEB0]];
  v32 = SecItemAdd(v13, &result);
  if (!v32)
  {
LABEL_41:
    v8 = result;
    result = 0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 4294960540;
      v7 = v43;
      v12 = query;
      goto LABEL_36;
    }

    v8 = v8;

    v7 = v43;
    if (gLogCategory_SFAppleIDKeychainUtilities > 30)
    {
      v10 = v8;
      v36 = a4;
      if (a4)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v36 = a4;
    if (gLogCategory_SFAppleIDKeychainUtilities == -1 && !_LogCategory_Initialize())
    {
      v10 = v8;
      if (!a4)
      {
        goto LABEL_46;
      }

LABEL_48:
      v39 = v10;
      v9 = 0;
      *v36 = v10;
      goto LABEL_53;
    }

    v37 = "Added certificate to keychain for %{mask}\n";
    v10 = v8;
LABEL_45:
    LogPrintF(&gLogCategory_SFAppleIDKeychainUtilities, "OSStatus SFAppleIDAddCertificateToKeychain(NSString * _Nonnull __strong, SecCertificateRef _Nonnull, NSString * _Nullable __strong, NSData * _Nullable __autoreleasing * _Nullable)", 30, v37, v6);
    if (v36)
    {
      goto LABEL_48;
    }

LABEL_46:
    v9 = 0;
    goto LABEL_53;
  }

  if (gLogCategory_SFAppleIDKeychainUtilities <= 60)
  {
    v33 = v32;
    if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
    {
      SFAppleIDAddCertificateToKeychain_cold_4(v33);
    }
  }

  v34 = SecItemDelete(v11);
  if (!v34)
  {
    v38 = SecItemAdd(v13, &result);
    if (v38)
    {
      v9 = v38;
      v35 = gLogCategory_SFAppleIDKeychainUtilities;
      if (gLogCategory_SFAppleIDKeychainUtilities > 60)
      {
        v8 = 0;
        v7 = v43;
        goto LABEL_50;
      }

      if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
      {
        SFAppleIDAddCertificateToKeychain_cold_6(v9);
      }

      v8 = 0;
      v7 = v43;
      v12 = query;
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  v9 = v34;
  v35 = gLogCategory_SFAppleIDKeychainUtilities;
  if (gLogCategory_SFAppleIDKeychainUtilities > 60)
  {
    v8 = 0;
    v7 = v43;
    goto LABEL_50;
  }

  v7 = v43;
  if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
  {
    SFAppleIDAddCertificateToKeychain_cold_5(v9);
  }

  v8 = 0;
  v12 = query;
LABEL_36:
  query = v12;
  v35 = gLogCategory_SFAppleIDKeychainUtilities;
LABEL_50:
  if (v35 <= 90 && (v35 != -1 || _LogCategory_Initialize()))
  {
    SFAppleIDAddCertificateToKeychain_cold_7(v6);
  }

LABEL_53:
  if (result)
  {
    CFRelease(result);
  }

  return v9;
}

uint64_t SFAppleIDCreateCertificateRequestPEMStringForKeyPair(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  v9 = 0;
  v10 = 4294960591;
  if (!v7 || !a2 || !a3)
  {
    goto LABEL_23;
  }

  v26 = @"cn";
  v27[0] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = v12;
  if (!v12)
  {
    v17 = 0;
    v15 = 0;
LABEL_16:
    v19 = 0;
    v10 = 4294960568;
    goto LABEL_8;
  }

  [v12 addObject:v11];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = v14;
  if (!v14)
  {
    v17 = 0;
    goto LABEL_16;
  }

  [v14 setObject:&unk_1F1D7CBF8 forKeyedSubscript:*MEMORY[0x1E697AFF0]];
  CertificateRequestWithParameters = SecGenerateCertificateRequestWithParameters();
  if (CertificateRequestWithParameters)
  {
    v17 = CertificateRequestWithParameters;
    v18 = CertificateRequestWithParameters;
    v10 = 0;
    v19 = 1;
  }

  else
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      SFAppleIDCreateCertificateRequestPEMStringForKeyPair_cold_1();
    }

    v17 = 0;
    v19 = 0;
    v10 = 4294960534;
  }

LABEL_8:

  v20 = v17;
  v9 = v20;
  if (v19)
  {
    if (v20)
    {
      v21 = [MEMORY[0x1E696AD60] stringWithString:@"-----BEGIN CERTIFICATE REQUEST-----\n"];
      if (v21)
      {
        v22 = v21;
        v23 = [v9 base64EncodedStringWithOptions:1];
        [v22 appendString:v23];
        [v22 appendString:@"\n-----END CERTIFICATE REQUEST-----\n"];
        if (a4)
        {
          v24 = v22;
          v10 = 0;
          *a4 = v22;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_27;
      }

      v10 = 4294960568;
    }

    else
    {
      v10 = 4294960534;
    }
  }

LABEL_23:
  if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
  {
    SFAppleIDCreateCertificateRequestPEMStringForKeyPair_cold_2(v10);
  }

  v23 = 0;
  v22 = 0;
LABEL_27:

  return v10;
}

id SFAppleIDParseValidationRecordDataSync(void *a1)
{
  cf = 0;
  v6 = 0;
  v5 = 0;
  v1 = parseValidationRecord(a1, &cf, &v5);
  v2 = v5;
  if (v1 || MEMORY[0x1AC58B8C0](cf, &v6))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    v3 = 0;
  }

  else
  {
    if (cf)
    {
      CFRelease(cf);
    }

    v3 = handleValidationRecordTrustResultSync(v2, v6);
  }

  return v3;
}

void SFAppleIDVerifyCertificateChain(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  trust = 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  v9 = v8;
  if (!v5)
  {
    v11 = 0;
    v15 = -6705;
    goto LABEL_11;
  }

  AppleIDAuthorityPolicy = SecPolicyCreateAppleIDAuthorityPolicy();
  if (!AppleIDAuthorityPolicy)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 90 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      SFAppleIDVerifyCertificateChain_cold_3();
    }

    v11 = 0;
    goto LABEL_31;
  }

  v11 = AppleIDAuthorityPolicy;
  v12 = SecTrustCreateWithCertificates(v5, AppleIDAuthorityPolicy, &trust);
  if (v12)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 90)
    {
      v16 = v12;
      if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
      {
        SFAppleIDVerifyCertificateChain_cold_1(v16);
      }
    }

LABEL_31:
    v15 = -6762;
    goto LABEL_11;
  }

  v13 = trust;
  if (!trust)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities > 90)
    {
      v15 = -6762;
LABEL_14:
      CFRelease(v11);
      goto LABEL_15;
    }

    if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
    {
      SFAppleIDVerifyCertificateChain_cold_2();
    }

    goto LABEL_31;
  }

  result[0] = MEMORY[0x1E69E9820];
  result[1] = 3221225472;
  result[2] = __SFAppleIDVerifyCertificateChain_block_invoke;
  result[3] = &unk_1E788A5E8;
  v21 = v7;
  v14 = SecTrustEvaluateAsync(v13, v9, result);

  if (v14)
  {
    v15 = 201219;
  }

  else
  {
    v15 = 0;
  }

LABEL_11:
  if (trust)
  {
    CFRelease(trust);
  }

  if (v11)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v7 && v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __SFAppleIDVerifyCertificateChain_block_invoke_2;
    v17[3] = &unk_1E788A598;
    v18 = v7;
    v19 = v15;
    dispatch_async(v9, v17);
  }
}

void __SFAppleIDVerifyCertificateChain_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v6 = 0;
  v7 = 1;
  if (v3 == 1 || v3 == 4)
  {
    goto LABEL_7;
  }

  v6 = 201219;
  if (gLogCategory_SFAppleIDKeychainUtilities <= 60)
  {
    v8 = v5;
    if (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize())
    {
      __SFAppleIDVerifyCertificateChain_block_invoke_cold_1(v3);
    }

    v7 = 0;
    v5 = v8;
LABEL_7:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = 0;
  if (v5)
  {
LABEL_8:
    v9 = v5;
    (*(v5 + 2))(v5, a2, v7, v6);
    v5 = v9;
  }

LABEL_9:
}

uint64_t SFAppleIDCertificateAndKeyCounts(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v17 = 0;
  v6 = SFAppleIDGetAllCertificatePersistentReferencesFromKeychain(&v17);
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
    {
      SFAppleIDCertificateAndKeyCounts_cold_1(v6);
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    v9 = [v7 count];
    v15 = 0;
    v16 = 0;
    v6 = SFAppleIDGetAllKeyPersistentReferencesFromKeychain(&v16, &v15);
    v10 = v16;
    v11 = v15;
    if (v6)
    {
      if (gLogCategory_SFAppleIDKeychainUtilities <= 60 && (gLogCategory_SFAppleIDKeychainUtilities != -1 || _LogCategory_Initialize()))
      {
        SFAppleIDCertificateAndKeyCounts_cold_2(v6);
      }
    }

    else
    {
      v12 = [v10 count];
      v13 = [v11 count];
      if (a1)
      {
        *a1 = v9;
      }

      if (a2)
      {
        *a2 = v12;
      }

      v6 = 0;
      if (a3)
      {
        *a3 = v13;
      }
    }
  }

  return v6;
}

__CFString *SFAirDropTransferStateToString(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E788A608[a1 - 1];
  }
}

void sub_1A967D954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void NetworkNode::NetworkNode(NetworkNode *this, const __CFString *a2, const __CFString *a3)
{
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 11) = CFStringCreateCopy(0, a2);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 32) = CFStringCreateCopy(0, a3);
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  *(this + 42) = CFSetCreateMutable(0, 0, &kSharingFastSetCallBacks);
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 46) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 106) = -1;
  *(this + 54) = 0;
  *(this + 110) = -1;
  *(this + 56) = 0;
  *(this + 114) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 65) = 0;
  *(this + 58) = 850045863;
}

void NetworkNode::~NetworkNode(NetworkNode *this)
{
  NetworkNode::cancelResolve(this);
  NetworkNode::cancelEject(this);
  v2 = *(this + 34);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 38);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 11);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 9);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 20);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 35);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 25);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 10);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 46);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(this + 42);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 47);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(this + 33);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(this + 12);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(this + 43);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(this + 37);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(this + 45);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(this + 17);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(this + 29);
  if (v24)
  {
    CFRelease(v24);
  }

  if (*this)
  {
    CFRelease(*this);
  }

  v25 = *(this + 36);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(this + 28);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(this + 4);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(this + 5);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(this + 7);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(this + 48);
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(this + 1);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(this + 2);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(this + 3);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(this + 13);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(this + 14);
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = *(this + 18);
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = *(this + 15);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = *(this + 16);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(this + 21);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(this + 8);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(this + 26);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(this + 27);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(this + 44);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(this + 39);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(this + 41);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(this + 30);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(this + 31);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(this + 19);
  if (v48)
  {
    CFRelease(v48);
  }
}

void NetworkNode::cancel(NetworkNode *this)
{
  NetworkNode::cancelResolve(this);

  NetworkNode::cancelEject(this);
}

void NetworkNode::clearCache(NetworkNode *this)
{
  *(this + 110) = -1;
  v2 = *(this + 20);
  if (v2)
  {
    CFRelease(v2);
    *(this + 20) = 0;
  }

  v3 = *(this + 35);
  if (v3)
  {
    CFRelease(v3);
    *(this + 35) = 0;
  }

  v4 = *(this + 46);

  CFArrayRemoveAllValues(v4);
}

CFStringRef NetworkNode::setDisplayName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 11);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFStringCreateCopy(0, theString);
    *(this + 11) = result;
  }

  return result;
}

CFStringRef NetworkNode::setRealName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 32);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFStringCreateCopy(0, theString);
    *(this + 32) = result;
  }

  return result;
}

CFStringRef NetworkNode::setContactIdentifier(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 30);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 30) = result;
  }

  return result;
}

CFMutableSetRef NetworkNode::setContactIdentifiers(NetworkNode *this, CFSetRef theSet)
{
  result = *(this + 31);
  if (result != theSet)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theSet)
    {
      result = CFSetCreateMutableCopy(0, 0, theSet);
    }

    *(this + 31) = result;
  }

  return result;
}

CFDataRef NetworkNode::setMediaCapabilities(NetworkNode *this, CFDataRef theData)
{
  result = *(this + 3);
  if (result != theData)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theData)
    {
      result = CFDataCreateCopy(0, theData);
    }

    *(this + 3) = result;
  }

  return result;
}

void NetworkNode::setModel(NetworkNode *this, CFStringRef theString)
{
  v3 = *(this + 22);
  if (v3 != theString)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    Copy = 0;
    if (theString)
    {
      Copy = CFStringCreateCopy(0, theString);
    }

    *(this + 22) = Copy;
  }

  NetworkNode::clearCache(this);
}

void NetworkNode::setModelIdentifier(NetworkNode *this, CFStringRef theString)
{
  v3 = *(this + 23);
  if (v3 != theString)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    Copy = 0;
    if (theString)
    {
      Copy = CFStringCreateCopy(0, theString);
    }

    *(this + 23) = Copy;
  }

  NetworkNode::clearCache(this);
}

void NetworkNode::setColor(NetworkNode *this, CFArrayRef theArray)
{
  v3 = *(this + 38);
  if (v3 != theArray)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    Copy = 0;
    if (theArray)
    {
      Copy = CFArrayCreateCopy(0, theArray);
    }

    *(this + 38) = Copy;
  }

  NetworkNode::clearCache(this);
}

CFArrayRef NetworkNode::setSiblingNodes(NetworkNode *this, CFArrayRef theArray)
{
  result = *(this + 40);
  if (result != theArray)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theArray)
    {
      result = CFArrayCreateCopy(0, theArray);
    }

    *(this + 40) = result;
  }

  return result;
}

CFStringRef NetworkNode::setParentIdentifier(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 25);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 25) = result;
  }

  return result;
}

CFStringRef NetworkNode::setDiskType(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 10);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 10) = result;
  }

  return result;
}

CFStringRef NetworkNode::setServiceName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 34);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 34) = result;
  }

  return result;
}

CFStringRef NetworkNode::setNetbiosName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 24);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 24) = result;
  }

  return result;
}

void NetworkNode::setBonjourProtocols(NetworkNode *this, CFBagRef theBag)
{
  v3 = *(this + 47);
  if (v3 != theBag)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    MutableCopy = 0;
    if (theBag)
    {
      MutableCopy = CFBagCreateMutableCopy(0, 0, theBag);
    }

    *(this + 47) = MutableCopy;
  }

  NetworkNode::clearCache(this);
}

void NetworkNode::setKinds(NetworkNode *this, CFSetRef theSet)
{
  v3 = *(this + 42);
  if (v3 != theSet)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 42) = CFSetCreateMutableCopy(0, 0, theSet);
  }

  NetworkNode::clearCache(this);
}

CFStringRef NetworkNode::setSecondaryName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 33);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 33) = result;
  }

  return result;
}

CFStringRef NetworkNode::setHostName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 17);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 17) = result;
  }

  return result;
}

CFStringRef NetworkNode::setComputerName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 9);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 9) = result;
  }

  return result;
}

CFStringRef NetworkNode::setDomain(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 12);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 12) = result;
  }

  return result;
}

CFMutableSetRef NetworkNode::setDomains(NetworkNode *this, CFSetRef theSet)
{
  result = *(this + 43);
  if (result != theSet)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theSet)
    {
      result = CFSetCreateMutableCopy(0, 0, theSet);
    }

    *(this + 43) = result;
  }

  return result;
}

CFStringRef NetworkNode::setWorkgroup(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 37);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 37) = result;
  }

  return result;
}

CFMutableSetRef NetworkNode::setWorkgroups(NetworkNode *this, CFSetRef theSet)
{
  result = *(this + 45);
  if (result != theSet)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theSet)
    {
      result = CFSetCreateMutableCopy(0, 0, theSet);
    }

    *(this + 45) = result;
  }

  return result;
}

CFStringRef NetworkNode::setPath(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 29);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 29) = result;
  }

  return result;
}

CFTypeRef NetworkNode::setMountPoint(NetworkNode *this, CFTypeRef cf)
{
  result = *(this + 1);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(this + 1) = result;
  }

  return result;
}

CFTypeRef NetworkNode::setAccessRights(NetworkNode *this, CFTypeRef cf)
{
  result = *(this + 6);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(this + 6) = result;
  }

  return result;
}

CFTypeRef NetworkNode::setRangingData(NetworkNode *this, CFTypeRef cf)
{
  result = *(this + 7);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(this + 7) = result;
  }

  return result;
}

void NetworkNode::setURL(CFURLRef *this, CFURLRef anURL)
{
  v4 = *this;
  if (v4 != anURL)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    if (anURL)
    {
      v5 = CFRetain(anURL);
    }

    else
    {
      v5 = 0;
    }

    *this = v5;
  }

  if (anURL)
  {
    if (!this[48])
    {
      this[48] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v6 = CFURLCopyScheme(anURL);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(this[48], v6, anURL);

      CFRelease(v7);
    }
  }
}

CFMutableDictionaryRef NetworkNode::setURLs(NetworkNode *this, CFDictionaryRef theDict)
{
  result = *(this + 48);
  if (result != theDict)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theDict)
    {
      result = CFDictionaryCreateMutableCopy(0, 0, theDict);
    }

    *(this + 48) = result;
  }

  return result;
}

CFStringRef NetworkNode::setUserName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 36);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 36) = result;
  }

  return result;
}

CFStringRef NetworkNode::setPassword(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 28);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 28) = result;
  }

  return result;
}

CFTypeRef NetworkNode::setFlags(NetworkNode *this, CFTypeRef cf)
{
  result = *(this + 4);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(this + 4) = result;
  }

  return result;
}

CFTypeRef NetworkNode::setRapportFlags(NetworkNode *this, CFTypeRef cf)
{
  result = *(this + 5);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(this + 5) = result;
  }

  return result;
}

CFStringRef NetworkNode::setSharePointBrowserID(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 26);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 26) = result;
  }

  return result;
}

CFDataRef NetworkNode::setIconData(NetworkNode *this, CFDataRef theData)
{
  result = *(this + 2);
  if (result != theData)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theData)
    {
      result = CFDataCreateCopy(0, theData);
    }

    *(this + 2) = result;
  }

  return result;
}

CFStringRef NetworkNode::setEmailHash(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 13);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 13) = result;
  }

  return result;
}

CFStringRef NetworkNode::setPhoneHash(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 14);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 14) = result;
  }

  return result;
}

CFStringRef NetworkNode::setIconHash(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 18);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 18) = result;
  }

  return result;
}

CFStringRef NetworkNode::setNickName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 15);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 15) = result;
  }

  return result;
}

CFStringRef NetworkNode::setFirstName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 16);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 16) = result;
  }

  return result;
}

CFStringRef NetworkNode::setLastName(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 21);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 21) = result;
  }

  return result;
}

CFTypeRef NetworkNode::setAppleID(NetworkNode *this, CFTypeRef cf)
{
  result = *(this + 8);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(this + 8) = result;
  }

  return result;
}

CFTypeRef NetworkNode::setTransportBundleID(NetworkNode *this, CFTypeRef cf)
{
  result = *(this + 27);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(this + 27) = result;
  }

  return result;
}

CFMutableSetRef NetworkNode::setHandles(NetworkNode *this, CFSetRef theSet)
{
  result = *(this + 44);
  if (result != theSet)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theSet)
    {
      result = CFSetCreateMutableCopy(0, 0, theSet);
    }

    *(this + 44) = result;
  }

  return result;
}

CFStringRef NetworkNode::setIDSDeviceIdentifier(NetworkNode *this, CFStringRef theString)
{
  result = *(this + 19);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = 0;
    if (theString)
    {
      result = CFStringCreateCopy(0, theString);
    }

    *(this + 19) = result;
  }

  return result;
}

void NetworkNode::addBonjourProtocol(NetworkNode *this, const __CFString *value)
{
  Mutable = *(this + 47);
  if (!Mutable)
  {
    Mutable = CFBagCreateMutable(0, 0, MEMORY[0x1E695E9D0]);
    *(this + 47) = Mutable;
  }

  CFBagAddValue(Mutable, value);

  NetworkNode::clearCache(this);
}

void NetworkNode::removeBonjourProtocol(NetworkNode *this, const __CFString *a2)
{
  v3 = *(this + 47);
  if (v3)
  {
    CFBagRemoveValue(v3, a2);
  }

  NetworkNode::clearCache(this);
}

void NetworkNode::addKind(CFMutableSetRef *this, const __CFString *a2)
{
  CFSetSetValue(this[42], a2);

  NetworkNode::clearCache(this);
}

void NetworkNode::removeKind(CFMutableSetRef *this, const __CFString *a2)
{
  CFSetRemoveValue(this[42], a2);

  NetworkNode::clearCache(this);
}

void NetworkNode::addDomain(NetworkNode *this, const __CFString *value)
{
  Mutable = *(this + 43);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E530]);
    *(this + 43) = Mutable;
  }

  CFSetSetValue(Mutable, value);
}

void NetworkNode::removeDomain(CFMutableSetRef *this, const __CFString *a2)
{
  CFSetRemoveValue(this[43], a2);
  if (!CFSetGetCount(this[43]))
  {
    CFRelease(this[43]);
    this[43] = 0;
  }
}

void NetworkNode::addWorkgroup(NetworkNode *this, const __CFString *value)
{
  Mutable = *(this + 45);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E530]);
    *(this + 45) = Mutable;
  }

  CFSetSetValue(Mutable, value);
}

void NetworkNode::removeWorkgroup(CFMutableSetRef *this, const __CFString *a2)
{
  CFSetRemoveValue(this[45], a2);
  if (!CFSetGetCount(this[45]))
  {
    CFRelease(this[45]);
    this[45] = 0;
  }
}

void NetworkNode::handleResolverCallBack(void (**this)(NetworkNode *, const void *, uint64_t, uint64_t, const void *), __SFOperation *a2, uint64_t a3, const __CFDictionary *a4)
{
  valuePtr = 0;
  v6 = SFOperationCopyProperty(a2, @"Node");
  Value = CFDictionaryGetValue(a4, @"Error");
  v8 = CFDictionaryGetValue(a4, @"Flags");
  v9 = CFDictionaryGetValue(a4, @"Protocol");
  if (Value)
  {
    if (CFErrorGetCode(Value))
    {
      Value = 0xFFFFFFFFLL;
    }

    else
    {
      Value = 0;
    }
  }

  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberLongType, &valuePtr);
    v10 = valuePtr;
  }

  else
  {
    v10 = 0;
  }

  this[52](this, v9, v10, Value, v6);
  CFRelease(v6);
  NetworkNode::cancelResolve(this);
}

void NetworkNode::cancelResolve(NetworkNode *this)
{
  v2 = *(this + 50);
  if (v2)
  {
    SFOperationCancel(v2);
    CFRelease(*(this + 50));
    *(this + 50) = 0;
  }
}

void NetworkNode::handleEjecterCallBack(void (**this)(NetworkNode *, const void *, uint64_t, uint64_t, const void *), __SFOperation *a2, uint64_t a3, const __CFDictionary *a4)
{
  valuePtr = 0;
  v6 = SFOperationCopyProperty(a2, @"Node");
  Value = CFDictionaryGetValue(a4, @"Error");
  v8 = CFDictionaryGetValue(a4, @"Flags");
  v9 = CFDictionaryGetValue(a4, @"Protocol");
  if (Value)
  {
    if (CFErrorGetCode(Value))
    {
      Value = 0xFFFFFFFFLL;
    }

    else
    {
      Value = 0;
    }
  }

  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberLongType, &valuePtr);
    v10 = valuePtr;
  }

  else
  {
    v10 = 0;
  }

  this[51](this, v9, v10, Value, v6);
  CFRelease(v6);
  NetworkNode::cancelEject(this);
}

void NetworkNode::cancelEject(NetworkNode *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    SFOperationCancel(v2);
    CFRelease(*(this + 49));
    *(this + 49) = 0;
  }
}

uint64_t NetworkNode::resolve(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, const void *a7)
{
  valuePtr = a3;
  if (*(a1 + 400))
  {
    return 4294967293;
  }

  *(a1 + 416) = a6;
  *&v15 = 0;
  *(&v15 + 1) = a1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v13 = SFOperationCreate(0, @"Resolver");
  *(a1 + 400) = v13;
  SFOperationSetProperty(v13, @"RunLoop", a4);
  SFOperationSetProperty(*(a1 + 400), @"Protocol", a2);
  SFOperationSetProperty(*(a1 + 400), @"Node", a7);
  SFOperationSetProperty(*(a1 + 400), @"RunLoopMode", a5);
  v14 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  SFOperationSetProperty(*(a1 + 400), @"Flags", v14);
  SFOperationSetClient(*(a1 + 400), NetworkNode::resolverOperationCallBack, &v15);
  SFOperationResume(*(a1 + 400));
  CFRelease(v14);
  return 0;
}

uint64_t NetworkNode::eject(uint64_t a1, const void *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, const void *a7)
{
  valuePtr = a3;
  if (*(a1 + 392))
  {
    return 4294967293;
  }

  *(a1 + 408) = a6;
  *&v15 = 0;
  *(&v15 + 1) = a1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v13 = SFOperationCreate(0, @"Ejecter");
  *(a1 + 392) = v13;
  SFOperationSetProperty(v13, @"RunLoop", a4);
  SFOperationSetProperty(*(a1 + 392), @"Protocol", a2);
  SFOperationSetProperty(*(a1 + 392), @"Node", a7);
  SFOperationSetProperty(*(a1 + 392), @"RunLoopMode", a5);
  v14 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  SFOperationSetProperty(*(a1 + 392), @"Flags", v14);
  SFOperationSetClient(*(a1 + 392), NetworkNode::ejecterOperationCallBack, &v15);
  SFOperationResume(*(a1 + 392));
  CFRelease(v14);
  return 0;
}

const __CFNumber *NetworkNode::isDropBox(NetworkNode *this)
{
  result = *(this + 6);
  if (result)
  {
    valuePtr = 0;
    return (CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr) && (valuePtr & 7) == 3);
  }

  return result;
}

uint64_t NetworkNode::isRemovable(CFSetRef *this)
{
  result = CFSetContainsValue(this[42], @"Recent");
  if (result)
  {
    return CFSetContainsValue(this[42], @"Connected") == 0;
  }

  return result;
}

CFIndex NetworkNode::supportsFileSharing(CFSetRef *this)
{
  Protocols = NetworkNode::getProtocols(this);
  result = CFArrayGetCount(Protocols);
  if (result)
  {
    if (result == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Protocols, 0);
      return CFEqual(ValueAtIndex, @"vnc") == 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

CFSetRef NetworkNode::getProtocols(CFSetRef *this)
{
  if (!CFArrayGetCount(this[46]))
  {
    if (!CFSetContainsValue(this[42], @"Bonjour") || (v2 = this[47]) == 0 || (Mutable = createMutableSetFromBag(0, 0, v2)) == 0)
    {
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    }

    if (CFSetContainsValue(this[42], @"Windows"))
    {
      CFSetSetValue(Mutable, @"smb");
    }

    if (CFSetContainsValue(this[42], @"ODisk"))
    {
      CFSetSetValue(Mutable, @"odisk");
    }

    if ((CFSetContainsValue(this[42], @"Volume") || CFSetContainsValue(this[42], @"Printer") || CFSetContainsValue(this[42], @"Recent") || CFSetContainsValue(this[42], @"Connected") || CFSetContainsValue(this[42], @"Managed")) && *this)
    {
      v4 = CFURLCopyScheme(*this);
      CFSetSetValue(Mutable, v4);
      CFRelease(v4);
    }

    v5 = copyValuesFromSet(0, Mutable);
    if (v5)
    {
      v6 = v5;
      Count = CFArrayGetCount(v5);
      v10.location = 0;
      v10.length = Count;
      CFArrayAppendArray(this[46], v6, v10);
      v9.location = 0;
      v9.length = Count;
      CFArraySortValues(this[46], v9, NetworkNode::sortProtocols, this);
      NetworkNode::preferSMB2WhenAvailable(this);
      CFRelease(v6);
    }

    CFRelease(Mutable);
  }

  return this[46];
}

uint64_t NetworkNode::supportsScreenSharing(CFSetRef *this)
{
  Protocols = NetworkNode::getProtocols(this);
  v2.length = CFArrayGetCount(Protocols);
  v2.location = 0;

  return CFArrayContainsValue(Protocols, v2, @"vnc");
}

const __CFNumber *NetworkNode::supportsAskToUse(NetworkNode *this)
{
  valuePtr = 0;
  result = *(this + 4);
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (result)
    {
      return ((valuePtr >> 9) & 1);
    }
  }

  return result;
}

const __CFNumber *NetworkNode::supportsPasses(NetworkNode *this)
{
  valuePtr = 0;
  result = *(this + 4);
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (result)
    {
      return ((valuePtr >> 4) & 1);
    }
  }

  return result;
}

BOOL NetworkNode::supportsFMF(NetworkNode *this)
{
  valuePtr = 0;
  v2 = *(this + 4);
  if (v2)
  {
    if (CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
    {
      if ((valuePtr & 0x20) != 0)
      {
        return 1;
      }
    }

    else
    {
      valuePtr = 0;
    }
  }

  return NetworkNode::supportsMixedTypes(this) == 0;
}

const __CFNumber *NetworkNode::supportsMixedTypes(NetworkNode *this)
{
  valuePtr = 0;
  result = *(this + 4);
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (result)
    {
      return ((valuePtr >> 3) & 1);
    }
  }

  return result;
}

const __CFNumber *NetworkNode::supportsUWB(NetworkNode *this)
{
  valuePtr = 0;
  result = *(this + 4);
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (result)
    {
      return ((valuePtr >> 10) & 1);
    }
  }

  return result;
}

BOOL NetworkNode::supportsIris(NetworkNode *this)
{
  valuePtr = 0;
  v2 = *(this + 4);
  if (v2)
  {
    if (CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
    {
      if ((valuePtr & 0x40) != 0)
      {
        return 1;
      }
    }

    else
    {
      valuePtr = 0;
    }
  }

  return NetworkNode::supportsMixedTypes(this) == 0;
}

const __CFNumber *NetworkNode::supportsCredentials(NetworkNode *this)
{
  valuePtr = 0;
  result = *(this + 4);
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    if (result)
    {
      return (BYTE1(valuePtr) & 1);
    }
  }

  return result;
}

BOOL NetworkNode::sortProtocols(NetworkNode *this, const void *a2, const void *a3, void *a4)
{
  OrderedProtocols = getOrderedProtocols(this, a2);
  Count = CFArrayGetCount(OrderedProtocols);
  v10.location = 0;
  v10.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(OrderedProtocols, v10, this);
  v11.location = 0;
  v11.length = Count;
  return FirstIndexOfValue > CFArrayGetFirstIndexOfValue(OrderedProtocols, v11, a2);
}

void NetworkNode::preferSMB2WhenAvailable(CFArrayRef *this)
{
  if (CFArrayGetCount(this[46]) >= 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(this[46], 0);
    v3 = CFArrayGetValueAtIndex(this[46], 1);
    if (CFEqual(ValueAtIndex, @"afp"))
    {
      if (CFEqual(v3, @"smb"))
      {
        valuePtr = 0;
        v4 = this[4];
        if (v4)
        {
          if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
          {
            if (valuePtr >= 13)
            {
              CFArraySetValueAtIndex(this[46], 0, @"smb");
              CFArraySetValueAtIndex(this[46], 1, @"afp");
            }
          }
        }
      }
    }
  }
}

CFStringRef NetworkNode::loadCurrentInfo(NetworkNode *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    v5 = SFCopyTypeIdentifierForColorArrayAndModelCode(*(this + 38), v4);
    *(this + 35) = v5;
    if (v5)
    {
      v6 = @"Mac";
      if (!UTTypeConformsTo(v5, @"com.apple.mac"))
      {
        if (UTTypeConformsTo(*(this + 35), @"com.apple.time-capsule"))
        {
          v6 = @"Time Capsule";
        }

        else if (UTTypeConformsTo(*(this + 35), @"com.apple.airport"))
        {
          v6 = @"AirPort Extreme";
        }

        else if (UTTypeConformsTo(*(this + 35), @"public.generic-pc"))
        {
          v6 = @"PC";
        }

        else if (UTTypeConformsTo(*(this + 35), @"com.apple.ipod"))
        {
          v6 = @"iPod";
        }

        else if (UTTypeConformsTo(*(this + 35), @"com.apple.ipad"))
        {
          v6 = @"iPad";
        }

        else if (UTTypeConformsTo(*(this + 35), @"com.apple.iphone"))
        {
          v6 = @"iPhone";
        }

        else if (UTTypeConformsTo(*(this + 35), @"com.apple.appletv"))
        {
          v6 = @"Apple TV";
        }
      }
    }

    else
    {
      *(this + 35) = CFStringCreateCopy(0, @"com.apple.mac");
      v6 = @"Mac";
    }

    v13 = v6;
    goto LABEL_19;
  }

  v7 = CFSetContainsValue(*(this + 42), @"Bonjour");
  v8 = *(this + 42);
  if (!v7)
  {
    if (CFSetContainsValue(v8, @"Windows"))
    {
      *(this + 20) = copyLocalizedStringForKey(@"PC");
      v14 = @"public.generic-pc";
LABEL_24:
      result = CFStringCreateCopy(0, v14);
      *(this + 35) = result;
      goto LABEL_20;
    }

    if (CFSetContainsValue(*(this + 42), @"AirDrop"))
    {
      *(this + 35) = CFStringCreateCopy(0, @"com.apple.airdrop");
      v15 = @"AirDrop";
      goto LABEL_30;
    }

    isNeighborhood = NetworkNode::isNeighborhood(this);
    v17 = *(this + 42);
    if (isNeighborhood)
    {
      if (!CFSetContainsValue(v17, @"Root") || !CFEqual(*(this + 32), @"Remote Disc"))
      {
        *(this + 20) = copyLocalizedStringForKey(@"Neighborhood");
        result = CFStringCreateCopy(0, @"com.apple.network-neighborhood");
        *(this + 35) = result;
        v12 = 10;
        goto LABEL_21;
      }

      *(this + 20) = copyLocalizedStringForKey(@"Volume");
      result = CFStringCreateCopy(0, @"public.optical-storage-media");
      *(this + 35) = result;
    }

    else
    {
      if (!CFSetContainsValue(v17, @"ODisk"))
      {
        if (CFSetContainsValue(*(this + 42), @"Volume") || CFSetContainsValue(*(this + 42), @"Printer"))
        {
          if (NetworkNode::isDropBox(this))
          {
            v19 = @"com.apple.drop-folder";
          }

          else
          {
            v19 = @"public.file-sharepoint";
          }

          *(this + 35) = CFStringCreateCopy(0, v19);
          result = copyLocalizedStringForKey(@"Sharepoint");
          *(this + 20) = result;
          v12 = 30;
          goto LABEL_21;
        }

        if (!CFSetContainsValue(*(this + 42), @"All"))
        {
          *(this + 20) = copyLocalizedStringForKey(@"Server");
          v14 = @"com.apple.mac";
          goto LABEL_24;
        }

        *(this + 35) = CFStringCreateCopy(0, @"com.apple.network-neighborhood");
        v15 = @"Neighborhood";
LABEL_30:
        result = copyLocalizedStringForKey(v15);
        *(this + 20) = result;
        v12 = 99;
        goto LABEL_21;
      }

      if (*(this + 10))
      {
        v18 = *(this + 10);
      }

      else
      {
        v18 = @"public.optical-storage-media";
      }

      *(this + 35) = CFStringCreateCopy(0, v18);
      result = copyLocalizedStringForKey(@"Remote Disc");
      *(this + 20) = result;
    }

    v12 = 25;
    goto LABEL_21;
  }

  if (!CFSetContainsValue(v8, @"Person"))
  {
    *(this + 35) = CFStringCreateCopy(0, @"com.apple.mac");
    v13 = @"Mac";
LABEL_19:
    result = copyLocalizedStringForKey(v13);
    *(this + 20) = result;
LABEL_20:
    v12 = 20;
    goto LABEL_21;
  }

  v9 = CFSetContainsValue(*(this + 42), @"Me");
  v10 = CFSetContainsValue(*(this + 42), @"Unknown");
  *(this + 35) = CFStringCreateCopy(0, @"com.apple.user");
  result = copyLocalizedStringForKey(@"User");
  *(this + 20) = result;
  if (v10)
  {
    v12 = 45;
  }

  else
  {
    v12 = 40;
  }

  if (v9)
  {
    v12 = 35;
  }

LABEL_21:
  *(this + 110) = v12;
  return result;
}

uint64_t NetworkNode::getKindString(NetworkNode *this)
{
  result = *(this + 20);
  if (!result)
  {
    NetworkNode::loadCurrentInfo(this);
    return *(this + 20);
  }

  return result;
}

uint64_t NetworkNode::getTypeIdentifier(NetworkNode *this)
{
  result = *(this + 35);
  if (!result)
  {
    NetworkNode::loadCurrentInfo(this);
    return *(this + 35);
  }

  return result;
}

uint64_t NetworkNode::getPriority(NetworkNode *this)
{
  result = *(this + 110);
  if (result == -1)
  {
    NetworkNode::loadCurrentInfo(this);
    return *(this + 110);
  }

  return result;
}

CFStringRef NetworkNode::copyDisplayName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 11);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyRealName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 32);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyContactIdentifier(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 30);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFSetRef NetworkNode::copyContactIdentifiers(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 31);
  if (v2)
  {
    Copy = CFSetCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyModel(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 22);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyModelIdentifier(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 23);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFArrayRef NetworkNode::copyColor(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 38);
  if (v2)
  {
    Copy = CFArrayCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFArrayRef NetworkNode::copySiblingNodes(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 40);
  if (v2)
  {
    Copy = CFArrayCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyParentIdentifier(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 25);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyDiskType(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 10);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyServiceName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 34);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyNetbiosName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 24);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyHostName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 17);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyComputerName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 9);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copySecondaryName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 33);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyDomain(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 12);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFSetRef NetworkNode::copyDomains(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 43);
  if (v2)
  {
    Copy = CFSetCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyWorkgroup(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 37);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFSetRef NetworkNode::copyWorkgroups(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 45);
  if (v2)
  {
    Copy = CFSetCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFBagRef NetworkNode::copyBonjourProtocols(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 47);
  if (v2)
  {
    Copy = CFBagCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFSetRef NetworkNode::copyKinds(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 42);
  if (v2)
  {
    Copy = CFSetCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyPath(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 29);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFTypeRef NetworkNode::copyAccessRights(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 6);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 464));
  return v3;
}

CFTypeRef NetworkNode::copyRangingData(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 7);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 464));
  return v3;
}

CFTypeRef NetworkNode::copyURL(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  if (*this)
  {
    URL = CFRetain(*this);
  }

  else
  {
    if (NetworkNode::isNeighborhood(this))
    {
      v3 = CFStringCreateWithFormat(0, 0, @"domain-%@", *(this + 32));
    }

    else
    {
      if (!NetworkNode::isServer(this) && !NetworkNode::isSharePoint(this))
      {
        URL = 0;
        goto LABEL_12;
      }

      v3 = CFStringCreateWithFormat(0, 0, @"server-%@", *(this + 32));
    }

    v4 = v3;
    v5 = *(this + 106);
    if (NetworkNode::isSharePoint(this))
    {
      v6 = *(this + 29);
    }

    else
    {
      v6 = 0;
    }

    isNeighborhood = NetworkNode::isNeighborhood(this);
    URL = createURL(@"nwnode", 0, 0, v4, v5, v6, 0, isNeighborhood);
    CFRelease(v4);
  }

LABEL_12:
  pthread_mutex_unlock((this + 464));
  return URL;
}

CFDictionaryRef NetworkNode::copyURLs(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 48);
  if (v2)
  {
    Copy = CFDictionaryCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

const void *NetworkNode::copyURLForProtocol(NetworkNode *this, const __CFString *a2)
{
  pthread_mutex_lock((this + 464));
  v4 = *(this + 48);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, a2);
    v6 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock((this + 464));
  return v6;
}

CFStringRef NetworkNode::copyUserName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 36);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyPassword(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 28);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFTypeRef NetworkNode::copyFlags(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 4);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 464));
  return v3;
}

CFTypeRef NetworkNode::copyRapportFlags(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 5);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 464));
  return v3;
}

CFTypeRef NetworkNode::copyMountPoint(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 1);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 464));
  return v3;
}

CFStringRef NetworkNode::copyKindString(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 20);
  if (!v2)
  {
    NetworkNode::loadCurrentInfo(this);
    v2 = *(this + 20);
  }

  Copy = CFStringCreateCopy(0, v2);
  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyTypeIdentifier(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 35);
  if (!v2)
  {
    NetworkNode::loadCurrentInfo(this);
    v2 = *(this + 35);
  }

  Copy = CFStringCreateCopy(0, v2);
  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFArrayRef NetworkNode::copyProtocols(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  Protocols = NetworkNode::getProtocols(this);
  Copy = CFArrayCreateCopy(0, Protocols);
  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFDataRef NetworkNode::copyIconData(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 2);
  if (v2)
  {
    Copy = CFDataCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFDataRef NetworkNode::copyMediaCapabilities(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 3);
  if (v2)
  {
    Copy = CFDataCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyEmailHash(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 13);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyPhoneHash(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 14);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyIconHash(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 18);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyNickName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 15);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyFirstName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 16);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyLastName(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 21);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyAppleID(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 8);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyTransportBundleID(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 27);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFSetRef NetworkNode::copyHandles(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 44);
  if (v2)
  {
    Copy = CFSetCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copySharePointBrowserID(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 26);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

CFStringRef NetworkNode::copyIDSDeviceIdentifier(NetworkNode *this)
{
  pthread_mutex_lock((this + 464));
  v2 = *(this + 19);
  if (v2)
  {
    Copy = CFStringCreateCopy(0, v2);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((this + 464));
  return Copy;
}

uint64_t SFBrowserGetTypeID(uint64_t a1, uint64_t a2)
{
  if (SFBrowserGetTypeID_once != -1)
  {
    SFBrowserGetTypeID_cold_1();
  }

  return _kSFBrowserTypeID;
}

void *__SFBrowserGetTypeID_block_invoke()
{
  result = malloc_type_calloc(1uLL, 0x60uLL, 0x10D00408820D60FuLL);
  _kSFBrowserClass = result;
  if (result)
  {
    *result = 0;
    result[1] = "SFBrowser";
    result[4] = _SFBrowserFinalize;
    result[5] = _SFBrowserEqual;
    result[6] = _SFBrowserHash;
    result[8] = _SFBrowserCopyDebugDesc;
    result = _CFRuntimeRegisterClass();
    _kSFBrowserTypeID = result;
  }

  return result;
}

uint64_t SFBrowserCreate(const __CFAllocator *a1, const void *a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserCreate_cold_1();
  }

  if (SFBrowserGetTypeID_once != -1)
  {
    SFBrowserCreate_cold_2();
  }

  if (!_kSFBrowserTypeID)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v6 = Instance;
  if (Instance)
  {
    *(Instance + 192) = 0u;
    *(Instance + 208) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    pthread_mutex_init((Instance + 88), 0);
    *(v6 + 56) = CFRetain(a2);
    if (CFEqual(a2, @"Network"))
    {
      v7 = copyLocalizedStringForKey(@"Network");
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"Network";
      }

      v10 = SFNodeCreate(a1, v9, @"Network");
      SFNodeAddKind(v10, @"Domain");
      v11 = kSFNodeKindWorkgroup;
    }

    else
    {
      if (!CFEqual(a2, @"AirDrop"))
      {
        if (!CFEqual(a2, @"Remote Disc"))
        {
          if (!CFEqual(a2, @"Printer"))
          {
            v10 = 0;
            goto LABEL_23;
          }

          v10 = SFNodeCreate(a1, @"Printer", @"Printer");
          if (!v10)
          {
            goto LABEL_23;
          }

LABEL_22:
          SFNodeAddKind(v10, @"Root");
LABEL_23:
          *(v6 + 208) = v10;
          v16 = MEMORY[0x1E695E9D8];
          v17 = MEMORY[0x1E695E9E8];
          *(v6 + 48) = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(v6 + 40) = CFDictionaryCreateMutable(a1, 0, v16, v17);
          *(v6 + 32) = CFDictionaryCreateMutable(a1, 0, v16, v17);
          CFDictionarySetValue(*(v6 + 40), *(v6 + 208), *(v6 + 208));
          return v6;
        }

        v19 = copyLocalizedStringForKey(@"Remote Disc");
        v8 = v19;
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = @"Remote Disc";
        }

        v15 = SFNodeCreate(a1, v20, @"Remote Disc");
        v10 = v15;
        v14 = @"Domain";
LABEL_19:
        SFNodeAddKind(v15, v14);
        SFNodeAddDomain(v10, @"local");
        if (v8)
        {
          CFRelease(v8);
        }

        if (!v10)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v12 = copyLocalizedStringForKey(@"AirDrop");
      v8 = v12;
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = @"AirDrop";
      }

      v10 = SFNodeCreate(a1, v13, @"AirDrop");
      SFNodeAddKind(v10, @"Domain");
      v11 = kSFNodeKindAirDrop;
    }

    v14 = *v11;
    v15 = v10;
    goto LABEL_19;
  }

  return v6;
}

uint64_t SFBrowserSetClient(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = browser_log(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    v13 = a1;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = a3;
    _os_log_debug_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEBUG, "SFBrowserSetClient (browser = %p, callback = %p, context = %p)", &v12, 0x20u);
  }

  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 168))
  {
    v7 = *(a1 + 184);
    if (v7)
    {
      v7();
    }
  }

  *(a1 + 152) = a2;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 192) = *(a3 + 4);
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  if (*(a1 + 168))
  {
    v10 = *(a1 + 176);
    if (v10)
    {
      *(a1 + 168) = v10();
    }
  }

  return pthread_mutex_unlock((a1 + 88));
}

uint64_t SFBrowserSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserSetDispatchQueue_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  v5 = *(a1 + 80);
  if (v5 != a2)
  {
    if (v5)
    {
      dispatch_release(v5);
    }

    if (a2)
    {
      dispatch_retain(a2);
    }

    *(a1 + 80) = a2;
  }

  return pthread_mutex_unlock((a1 + 88));
}

uint64_t SFBrowserSetMode(uint64_t a1, uint64_t a2)
{
  v4 = browser_log(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    SFBrowserSetMode_cold_1();
  }

  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 216) || (Connection = _SFBrowserCreateConnection(a1), (*(a1 + 216) = Connection) != 0))
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFBrowser/setMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9.opaque[0] = 0;
    v9.opaque[1] = 0;
    os_activity_scope_enter(v6, &v9);
    os_release(v6);
    *(a1 + 200) = a2;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "Object", "Browser");
    xpc_dictionary_set_string(v7, "Function", "SetMode");
    xpc_dictionary_set_uint64(v7, "Mode", a2);
    xpc_connection_send_message(*(a1 + 216), v7);
    xpc_release(v7);
    os_activity_scope_leave(&v9);
  }

  return pthread_mutex_unlock((a1 + 88));
}

_xpc_connection_s *_SFBrowserCreateConnection(void *a1)
{
  v2 = _os_activity_create(&dword_1A9662000, "Sharing/SFBrowser/createConnection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  os_release(v2);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = _SFNodeXPCObjectCreate(a1[26]);
  xpc_dictionary_set_value(v3, "Kind", v4);
  xpc_dictionary_set_value(v3, "Node", v5);
  xpc_dictionary_set_string(v3, "Object", "Browser");
  xpc_dictionary_set_string(v3, "Function", "Create");
  if (a1[10])
  {
    v6 = a1[10];
  }

  else
  {
    v6 = MEMORY[0x1E69E96A0];
  }

  mach_service = xpc_connection_create_mach_service("com.apple.sharingd", v6, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___SFBrowserCreateConnection_block_invoke;
  v10[3] = &__block_descriptor_tmp_75;
  v10[4] = a1;
  v10[5] = mach_service;
  xpc_connection_set_event_handler(mach_service, v10);
  xpc_connection_send_message(mach_service, v3);
  v8 = CFRetain(a1);
  xpc_connection_set_context(mach_service, v8);
  xpc_connection_set_finalizer_f(mach_service, MEMORY[0x1E695D7C0]);
  xpc_connection_resume(mach_service);
  xpc_release(v4);
  xpc_release(v5);
  xpc_release(v3);
  os_activity_scope_leave(&state);
  return mach_service;
}