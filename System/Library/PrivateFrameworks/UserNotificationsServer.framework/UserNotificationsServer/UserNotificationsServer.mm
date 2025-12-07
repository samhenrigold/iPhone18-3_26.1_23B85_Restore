uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t UNShowPreviewsSettingFromBBContentPreviewSetting(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

BOOL UNNotificationGroupingSettingFromBBBulletinGroupingSetting(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

id UNSLocalizedFormatStringForKey(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = UNSBundle(v2);
  v4 = [v3 localizedStringForKey:v2 value:&stru_288095958 table:0];

  return v4;
}

id UNSBundle(uint64_t a1)
{
  if (UNSBundle___onceToken != -1)
  {
    UNSBundle_cold_1();
  }

  v2 = UNSBundle___userNotificationBundle;

  return v2;
}

BOOL UNNotificationSettingFromBBAnnounceSetting(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

uint64_t UNNotificationAnnouncementCarPlaySettingFromBBAnnounceCarPlaySetting(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t UNNotificationSettingFromBBScheduledDeliverySetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_270AE6DE8[a1 + 1];
  }
}

uint64_t UNNotificationSettingFromBBSystemSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_270AE6E08[a1];
  }
}

uint64_t UNNotificationListDisplayStyleSettingFromBBNotificationListDisplayStyleSetting(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t sub_270AACD4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270AACD90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270AACDD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270AACE0C()
{
  v1 = sub_270AE3C1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_270AACEC4()
{
  MEMORY[0x2743B0720](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270AACEFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270AACF3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void UNSShowCriticalAlertAuthorizationAlert(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v21 = a3;
  v7 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Show critical alert user authorization prompt", buf, 0xCu);
  }

  if (![v6 length])
  {
    v8 = v5;

    v6 = v8;
  }

  v9 = UNSLocalizedFormatStringForKey(@"%@", @"CRITICAL_ALERT_PERMISSION_ALERT_TITLE");
  v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v9, v6];
  v12 = UNSDeviceClass(v10, v11) - 1;
  v20 = v5;
  if (v12 > 5)
  {
    v13 = @"CRITICAL_ALERT_PERMISSION_ALERT_BODY_DEFAULT";
  }

  else
  {
    v13 = off_279E101B8[v12];
  }

  v14 = UNSLocalizedStringForKey(v13);
  v15 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DENY");
  v16 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_ALLOW");
  v17 = UNSBundle(v16);
  v18 = [v17 bundlePath];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x277CBF188], v14, *MEMORY[0x277CBF198], v16, *MEMORY[0x277CBF218], v15, *MEMORY[0x277CBF1C0], MEMORY[0x277CBEC38], *MEMORY[0x277D67298], MEMORY[0x277CBEC38], *MEMORY[0x277D67320], MEMORY[0x277CBEC38], *MEMORY[0x277D673E0], @"critical-alert-40", *MEMORY[0x277D67370], v18, *MEMORY[0x277D67378], 0}];
  UNSShowAuthorizationAlert(v19, v21);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void UNSShowAuthorizationAlert(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, a1);
  if (v4)
  {
    v5 = v4;
    if (!error)
    {
      v6 = [MEMORY[0x277CCAE60] valueWithPointer:v4];
      v7 = _UNNotificationAlertResultBlockMap(v6);
      v8 = [v3 copy];
      v9 = _Block_copy(v8);
      [v7 setObject:v9 forKey:v6];

      CFRetain(v5);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v5, _UNSAuthorizationAlertResponseHandler, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
      CFRelease(RunLoopSource);
    }

    CFRelease(v5);
  }
}

id _UNNotificationAlertResultBlockMap(uint64_t a1)
{
  if (_UNNotificationAlertResultBlockMap_onceToken != -1)
  {
    _UNNotificationAlertResultBlockMap_cold_1();
  }

  v2 = _UNNotificationAlertResultBlockMap___map;

  return v2;
}

void _UNSAuthorizationAlertResponseHandler(const void *a1, uint64_t a2)
{
  v9 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v4 = _UNNotificationAlertResultBlockMap(v9);
  v5 = [v4 objectForKey:v9];
  v6 = v5;
  if (a2 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (a2 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  (*(v5 + 16))(v5, v8);
  [v4 removeObjectForKey:v9];
  CFRelease(a1);
}

void UNSShowDeliveryAuthorizationAlert(const __CFDictionary *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = CFUserNotificationCreate(0, 0.0, 0x20uLL, &error, a1);
  if (v4)
  {
    v5 = v4;
    if (!error)
    {
      v6 = [MEMORY[0x277CCAE60] valueWithPointer:v4];
      v7 = _UNNotificationAlertResultBlockMap(v6);
      v8 = [v3 copy];
      v9 = _Block_copy(v8);
      [v7 setObject:v9 forKey:v6];

      CFRetain(v5);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v5, _UNSDeliveryAuthorizationAlertResponseHandler, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
      CFRelease(RunLoopSource);
    }

    CFRelease(v5);
  }
}

void _UNSDeliveryAuthorizationAlertResponseHandler(const void *a1, unint64_t a2)
{
  v8 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v4 = _UNNotificationAlertResultBlockMap(v8);
  v5 = [v4 objectForKey:v8];
  v6 = v5;
  if (a2 >= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = a2;
  }

  (*(v5 + 16))(v5, v7);
  [v4 removeObjectForKey:v8];
  CFRelease(a1);
}

void __UNSBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = UNSBundle___userNotificationBundle;
  UNSBundle___userNotificationBundle = v0;
}

id UNSLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = UNSBundle(v1);
  v3 = [v2 localizedStringForKey:v1 value:&stru_288095958 table:0];

  return v3;
}

uint64_t UNSDeviceClass(uint64_t a1, uint64_t a2)
{
  if (UNSDeviceClass_once != -1)
  {
    UNSDeviceClass_cold_1();
  }

  return UNSDeviceClass_deviceClass;
}

uint64_t __UNSDeviceClass_block_invoke()
{
  result = MGGetSInt32Answer();
  UNSDeviceClass_deviceClass = result;
  return result;
}

void sub_270AAF9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AAFCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AAFF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AB03F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AB3BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AB4C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void UNSUserNotificationServerRun()
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_2);
}

void sub_270AB5D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void UNSTriggerLocationArrow(void *a1)
{
  v1 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v2 = +[UNSUserNotificationServer sharedInstance];
  [v2 _triggerLocationArrowForBundleIdentifier:v1];
}

void UNSBuildForegroundAction(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = +[UNSUserNotificationServer sharedInstance];
  [v8 _buildForegroundAction:v7 queue:v6 completionHandler:v5];
}

void UNSDidCompleteDeliveryOfForegroundAction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v4)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE20A8], OS_LOG_TYPE_ERROR))
    {
      UNSDidCompleteDeliveryOfForegroundAction_cold_1();
    }
  }

  else
  {
    UNCDecodeNotificationActionSelector();
  }
}

void __UNSDidCompleteDeliveryOfForegroundAction_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = *MEMORY[0x277CE20A8];
  if (v14)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE20A8], OS_LOG_TYPE_ERROR))
    {
      __UNSDidCompleteDeliveryOfForegroundAction_block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE20A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "UNSDidCompleteDeliveryOfForegroundAction removing notificationID: %@ bundleID: %@", buf, 0x16u);
    }

    v16 = +[UNSUserNotificationServer sharedInstance];
    v18 = v11;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v16 _removeNotificationRecordsForIdentifiers:v17 bundleIdentifier:v10];
  }
}

uint64_t _IsTelephonyDevice(uint64_t a1, uint64_t a2)
{
  if (_IsTelephonyDevice_once != -1)
  {
    _IsTelephonyDevice_cold_1();
  }

  return _IsTelephonyDevice_telephonyDevice;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void UNSExampleUserNotificationCenterRegister(uint64_t result, uint64_t a2)
{
  if (UNSExampleUserNotificationCenterRegister_onceToken != -1)
  {
    UNSExampleUserNotificationCenterRegister_cold_1();
  }
}

void __UNSExampleUserNotificationCenterRegister_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(UNSExampleUserNotificationCenter);
  v2 = __sharedInstance;
  __sharedInstance = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_270ABC748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270ABCB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270ABD314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270ABD9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UNSShowNotificationDeliveryAuthorizationAlert(void *a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v7;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Show notification delivery user authorization prompt", buf, 0xCu);
  }

  if (![v8 length])
  {
    v12 = v7;

    v8 = v12;
  }

  v13 = UNSLocalizedFormatStringForKey(@"%@", @"USER_NOTIFICATION_PERMISSION_ALERT_TITLE");
  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v8];
  if (![v9 length])
  {
    v15 = UNSLocalizedStringForKey(@"USER_NOTIFICATION_PERMISSION_ALERT_BODY");

    v9 = v15;
  }

  v16 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DENY");
  v17 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_ALLOW");
  v18 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DELIVERY_SCHEDULED");
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, *MEMORY[0x277CBF188], v9, *MEMORY[0x277CBF198], v17, *MEMORY[0x277CBF1C0], v18, *MEMORY[0x277CBF218], v16, *MEMORY[0x277CBF1E8], MEMORY[0x277CBEC38], *MEMORY[0x277D67298], 0}];
  UNSShowDeliveryAuthorizationAlert(v19, v10);
}

void sub_270AC4F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AC55E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AC5B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_270AC98E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270AC9EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_270ACAEA8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_270ACD6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_270ACE584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v31 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_270ACF204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  objc_destroyWeak((v42 + 88));
  objc_destroyWeak((v42 + 80));
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v43 - 256), 8);
  objc_destroyWeak((v43 - 216));
  _Block_object_dispose((v43 - 208), 8);
  objc_destroyWeak((v43 - 160));
  objc_destroyWeak((v43 - 152));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_270AD00EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD0A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD2134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD282C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270AD2DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UNSShowNotificationAuthorizationAlert(void *a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x277CE20B0];
  if (os_log_type_enabled(*MEMORY[0x277CE20B0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Show notification user authorization prompt", buf, 0xCu);
  }

  if (![v8 length])
  {
    v12 = v7;

    v8 = v12;
  }

  v13 = UNSLocalizedFormatStringForKey(@"%@", @"USER_NOTIFICATION_PERMISSION_ALERT_TITLE");
  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v13, v8];
  if (![v9 length])
  {
    v15 = UNSLocalizedStringForKey(@"USER_NOTIFICATION_PERMISSION_ALERT_BODY");

    v9 = v15;
  }

  v16 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_DENY");
  v17 = UNSLocalizedStringForKey(@"PERMISSION_ALERT_ALLOW");
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, *MEMORY[0x277CBF188], v9, *MEMORY[0x277CBF198], v17, *MEMORY[0x277CBF218], v16, *MEMORY[0x277CBF1C0], MEMORY[0x277CBEC38], *MEMORY[0x277D67298], 0}];
  UNSShowAuthorizationAlert(v18, v10);
}

uint64_t BBContentPreviewSettingFromUNShowPreviewsSetting(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t BBAnnounceSettingFromUNNotificationSetting(uint64_t result)
{
  if (result == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (result != 2)
  {
    return v1;
  }

  return result;
}

uint64_t BBAnnounceCarPlaySettingFromUNNotificationAnnouncementCarPlaySetting(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return -1;
  }

  return result;
}

BOOL BBBulletinGroupingSettingFromUNNotificationGroupingSetting(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

uint64_t BBScheduledDeliverySettingFromUNNotificationSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_270AE6E08[a1];
  }
}

uint64_t BBSystemSettingFromUNNotificationSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_270AE6E08[a1];
  }
}

uint64_t BBNotificationListDisplayStyleSettingFromUNNotificationListDisplayStyleSetting(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_270AD7178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_270AE3C6C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_270AE3C5C();
}

uint64_t static Logger.daemon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2808438F8 != -1)
  {
    swift_once();
  }

  v2 = sub_270AE3C6C();
  v3 = __swift_project_value_buffer(v2, qword_280843900);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void type metadata accessor for BBPublisherDestinations()
{
  if (!qword_2808439E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2808439E0);
    }
  }
}

id UNSSummaryServiceAdapter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *UNSSummaryServiceAdapter.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = v19 - v3;
  v21 = sub_270AE3E1C();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_270AE3E0C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_270AE3C9C();
  MEMORY[0x28223BE20](v8 - 8);
  v20 = OBJC_IVAR___UNSSummaryServiceAdapter_queue;
  v9 = sub_270ADB120(0, &qword_281257B90, 0x277D85C78);
  v19[0] = "com.apple.usernotificationsd";
  v19[1] = v9;
  sub_270AE3C8C();
  v24 = MEMORY[0x277D84F90];
  sub_270ADAFBC(&qword_281257B98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280843A60, &qword_270AE6EC8);
  sub_270ADB004(&qword_281257BB8, &unk_280843A60, &qword_270AE6EC8);
  sub_270AE3E6C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v21);
  *&v0[v20] = sub_270AE3E4C();
  v10 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_observers;
  v11 = MEMORY[0x277D84F90];
  *&v1[v10] = sub_270ADB7A0(MEMORY[0x277D84F90], &qword_280843AE8, &unk_270AE6F90);
  v12 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_summaryBundlesByBundleId;
  *&v1[v12] = sub_270ADB6A4(v11, &qword_280843AD8, &qword_270AE6F80);
  sub_270AE399C();
  *&v1[OBJC_IVAR___UNSSummaryServiceAdapter_summaryService] = sub_270AE397C();
  type metadata accessor for SummaryServiceHelper();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___UNSSummaryServiceAdapter_summaryServiceHelper] = v13;
  v23.receiver = v1;
  v23.super_class = UNSSummaryServiceAdapter;
  v14 = objc_msgSendSuper2(&v23, sel_init);

  sub_270AE398C();

  swift_unknownObjectWeakAssign();

  v15 = sub_270AE3DAC();
  v16 = v22;
  (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  sub_270AD8A0C(0, 0, v16, &unk_270AE6ED8, v17);

  return v14;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_270AD78FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 queue_observers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
  v8 = sub_270AE3CBC();

  if (*(v8 + 16) && (v9 = sub_270ADD478(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = swift_unknownObjectRetain();
  MEMORY[0x2743AFA50](v12);
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_270AE3D6C();
  }

  sub_270AE3D7C();

  v13 = [a1 queue_observers];
  sub_270AE3CBC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_270ADA2AC(v11, a2, a3, isUniquelyReferenced_nonNull_native);

  v15 = sub_270AE3CAC();

  [a1 setQueue:v15 observers:?];
}

uint64_t sub_270AD7B00(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_270AD7B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v7 = v6;
  v11 = sub_270AE3C7C();
  v26 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_270AE3C9C();
  v14 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v7 queue];
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a1;
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270AD7B00;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);
  v20 = v7;

  swift_unknownObjectRetain();
  sub_270AE3C8C();
  v27 = MEMORY[0x277D84F90];
  sub_270ADAFBC(&qword_281257BD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280843A98, &qword_270AE6EE8);
  sub_270ADB004(&unk_281257BC0, &unk_280843A98, &qword_270AE6EE8);
  sub_270AE3E6C();
  MEMORY[0x2743AFB50](0, v16, v13, v19);
  _Block_release(v19);

  (*(v26 + 8))(v13, v11);
  (*(v14 + 8))(v16, v25);
}

void sub_270AD7E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 queue_observers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
  v9 = sub_270AE3CBC();

  v16[4] = v9;
  v11 = sub_270AD8014(v16, a2, a3);
  if (!*v10)
  {
    (v11)(v16, 0);
    goto LABEL_6;
  }

  v12 = v10;
  swift_unknownObjectRetain();
  v13 = sub_270ADB278(v12, a4);
  swift_unknownObjectRelease();
  if (*v12 >> 62)
  {
    v14 = sub_270AE3ECC();
    if (v14 >= v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v13)
    {
LABEL_4:
      sub_270ADB5CC(v13, v14);
      (v11)(v16, 0);
LABEL_6:
      v15 = sub_270AE3CAC();

      [a1 setQueue:v15 observers:?];

      return;
    }
  }

  __break(1u);
}

uint64_t (*sub_270AD8014(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_270ADA8AC(v6, a2, a3);
  return sub_270AD809C;
}

void sub_270AD809C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_270AD8100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_270AE3CDC();
  v10 = v9;
  swift_unknownObjectRetain();
  v11 = a1;
  a5(a3, v8, v10);
  swift_unknownObjectRelease();
}

uint64_t UNSSummaryServiceAdapter.groupSummaries(forNotificationIdentifier:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [v4 queue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AA8, &qword_270AE6EF0);
  sub_270AE3E2C();

  return v7;
}

void sub_270AD8240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_summaryBundlesByBundleId;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (!*(v13 + 16) || (v14 = sub_270ADD478(a2, a3), (v15 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_8;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();
  swift_beginAccess();
  v17 = *(v16 + 16);
  if (!*(v17 + 16))
  {
LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  v18 = sub_270ADD478(a4, a5);
  if ((v19 & 1) == 0)
  {

    goto LABEL_8;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 16);
  if (*(v20 + 32))
  {
    v22 = v21;

    v23 = sub_270AE3CCC();
  }

  else
  {
    v22 = v21;
    v23 = 0;
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D77D08]) initWithSpotlightIdentifier:v23 threadSummary:v22];

LABEL_9:
  *a6 = v24;
}

uint64_t sub_270AD84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_270AE39BC();
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_270AD856C;

  return MEMORY[0x2821DEF50]();
}

uint64_t sub_270AD856C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_270AD86B8, 0, 0);
  }
}

uint64_t sub_270AD86B8()
{
  sub_270AD872C(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_270AD872C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_270AE3C7C();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_270AE3C9C();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_270ADB168;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_270AD7B00;
  aBlock[3] = &block_descriptor_43;
  v12 = _Block_copy(aBlock);
  v13 = v2;

  sub_270AE3C8C();
  v18 = MEMORY[0x277D84F90];
  sub_270ADAFBC(&qword_281257BD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280843A98, &qword_270AE6EE8);
  sub_270ADB004(&unk_281257BC0, &unk_280843A98, &qword_270AE6EE8);
  sub_270AE3E6C();
  MEMORY[0x2743AFB50](0, v9, v6, v12);
  _Block_release(v12);

  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_270AD8A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_270ADB960(a3, v22 - v9);
  v11 = sub_270AE3DAC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_270ADB9D0(v10);
  }

  else
  {
    sub_270AE3D9C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_270AE3D8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_270AE3CFC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_270ADB9D0(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270ADB9D0(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_270AD8C78(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = sub_270ADB7A0(MEMORY[0x277D84F90], &qword_280843AC8, &qword_270AE6F70);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_270AE3ECC())
  {
    if (i < 1)
    {
      goto LABEL_95;
    }

    v5 = 0;
    v111 = OBJC_IVAR___UNSSummaryServiceAdapter_queue_summaryBundlesByBundleId;
    v113 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    *&v3 = 136315138;
    v106 = v3;
    v108 = isUniquelyReferenced_nonNull_native;
    v112 = i;
    while (1)
    {
      if (v113)
      {
        v6 = MEMORY[0x2743AFBB0](v5, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v6 = *(isUniquelyReferenced_nonNull_native + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 bundleIdentifier];
      v9 = sub_270AE3CDC();
      v11 = v10;

      v12 = [v7 notificationIdentifier];
      if (!v12)
      {

        goto LABEL_6;
      }

      v13 = v12;
      v14 = sub_270AE3CDC();
      v16 = v15;

      if (*(v2 + 16) && (v17 = sub_270ADD478(v9, v11), (v18 & 1) != 0))
      {
        v19 = *(*(v2 + 56) + 8 * v17);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_270ADD194(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_270ADD194((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[16 * v21];
      v114 = v14;
      v116 = v16;
      *(v22 + 4) = v14;
      *(v22 + 5) = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121[0] = v2;
      v24 = sub_270ADD478(v9, v11);
      v25 = *(v2 + 16);
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (*(v2 + 24) >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_270ADA74C(&qword_280843AC8, &qword_270AE6F70);
        }
      }

      else
      {
        sub_270AD9E5C(v27, isUniquelyReferenced_nonNull_native, &qword_280843AC8, &qword_270AE6F70);
        v29 = sub_270ADD478(v9, v11);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_96;
        }

        v24 = v29;
      }

      isUniquelyReferenced_nonNull_native = v108;
      v2 = v121[0];
      if (v28)
      {
        *(*(v121[0] + 56) + 8 * v24) = v19;
      }

      else
      {
        *(v121[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v31 = (*(v2 + 48) + 16 * v24);
        *v31 = v9;
        v31[1] = v11;
        *(*(v2 + 56) + 8 * v24) = v19;
        v32 = *(v2 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_67;
        }

        *(v2 + 16) = v34;
      }

      v35 = [v7 content];
      i = v112;
      if (v35)
      {
        v109 = v35;
        swift_beginAccess();
        v36 = *&v118[v111];
        if (*(v36 + 16) && (v37 = sub_270ADD478(v9, v11), (v38 & 1) != 0))
        {
          v39 = *(*(v36 + 56) + 8 * v37);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          _s13SummaryBundleCMa();
          v39 = swift_allocObject();
          *(v39 + 16) = sub_270ADB6A4(MEMORY[0x277D84F90], &qword_280843AD0, &qword_270AE6F78);
          swift_beginAccess();

          v40 = swift_isUniquelyReferenced_nonNull_native();
          v119 = *&v118[v111];
          *&v118[v111] = 0x8000000000000000;
          sub_270ADA44C(v39, v9, v11, v40, &qword_280843AD8, &qword_270AE6F80);

          *&v118[v111] = v119;
          swift_endAccess();
        }

        swift_beginAccess();
        v41 = *(v39 + 16);
        if (*(v41 + 16))
        {

          v42 = sub_270ADD478(v114, v116);
          if (v43)
          {
            v44 = *(*(v41 + 56) + 8 * v42);

            goto LABEL_49;
          }
        }

        _s11SummaryItemCMa();
        v44 = swift_allocObject();
        v44[3] = 0;
        v44[4] = 0;
        v44[2] = 0;
        swift_beginAccess();

        v54 = swift_isUniquelyReferenced_nonNull_native();
        v120 = *(v39 + 16);
        *(v39 + 16) = 0x8000000000000000;
        sub_270ADA44C(v44, v114, v116, v54, &qword_280843AD0, &qword_270AE6F78);

        *(v39 + 16) = v120;
        swift_endAccess();
LABEL_49:
        if (![v7 isGroupSummary])
        {
          v117 = v2;
          if (qword_2808438F0 != -1)
          {
            swift_once();
          }

          v61 = sub_270AE3C6C();
          __swift_project_value_buffer(v61, qword_280843BD0);
          v62 = v7;
          v63 = sub_270AE3C4C();
          v64 = sub_270AE3DFC();

          v65 = v63;
          if (os_log_type_enabled(v63, v64))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v121[0] = v67;
            *v66 = v106;
            v68 = [v62 spotlightIdentifier];
            v69 = sub_270AE3CDC();
            v115 = v62;
            v71 = v70;

            i = v112;
            v72 = sub_270AE08F8(v69, v71, v121);

            *(v66 + 4) = v72;
            _os_log_impl(&dword_270AA8000, v65, v64, "[SummaryServiceAdapter] Did not expect non group summary for spotlightIdentifier: %s", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v67);
            MEMORY[0x2743B06A0](v67, -1, -1);
            v73 = v66;
            isUniquelyReferenced_nonNull_native = v108;
            MEMORY[0x2743B06A0](v73, -1, -1);
          }

          else
          {
          }

          v2 = v117;
          goto LABEL_7;
        }

        v55 = v44[2];
        v44[2] = v109;
        v56 = v109;

        v57 = [v7 spotlightIdentifier];
        v58 = sub_270AE3CDC();
        v60 = v59;

        v44[3] = v58;
        v44[4] = v60;
        i = v112;

LABEL_6:

        goto LABEL_7;
      }

      swift_beginAccess();
      v45 = *&v118[v111];
      if (*(v45 + 16) && (v46 = sub_270ADD478(v9, v11), (v47 & 1) != 0))
      {
        v48 = *(*(v45 + 56) + 8 * v46);
        swift_endAccess();

        swift_beginAccess();
        v49 = *(v48 + 16);
        if (!*(v49 + 16))
        {
          goto LABEL_59;
        }

        v50 = sub_270ADD478(v114, v116);
        if ((v51 & 1) == 0)
        {

LABEL_59:

          goto LABEL_7;
        }

        v52 = *(*(v49 + 56) + 8 * v50);

        if ([v7 isGroupSummary])
        {
          v53 = *(v52 + 16);
          *(v52 + 16) = 0;

          if (!*(v52 + 16))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (qword_2808438F0 != -1)
          {
            swift_once();
          }

          v74 = sub_270AE3C6C();
          __swift_project_value_buffer(v74, qword_280843BD0);
          v75 = v7;
          v76 = sub_270AE3C4C();
          v77 = sub_270AE3DFC();

          if (os_log_type_enabled(v76, v77))
          {
            v110 = v77;
            v78 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v121[0] = v107;
            *v78 = v106;
            v79 = [v75 spotlightIdentifier];
            v80 = sub_270AE3CDC();
            v82 = v81;

            v83 = v80;
            isUniquelyReferenced_nonNull_native = v108;
            v84 = sub_270AE08F8(v83, v82, v121);
            i = v112;

            *(v78 + 4) = v84;
            _os_log_impl(&dword_270AA8000, v76, v110, "[SummaryServiceAdapter] Did not expect non group summary for spotlightIdentifier: %s", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v107);
            MEMORY[0x2743B06A0](v107, -1, -1);
            MEMORY[0x2743B06A0](v78, -1, -1);
          }

          if (!*(v52 + 16))
          {
LABEL_65:
            swift_beginAccess();
            sub_270AD9B14(v114, v116);
            swift_endAccess();

            goto LABEL_7;
          }
        }
      }

      else
      {
        swift_endAccess();
      }

LABEL_7:
      if (i == ++v5)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:
  v85 = v2 + 64;
  v86 = 1 << *(v2 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & *(v2 + 64);
  v89 = (v86 + 63) >> 6;

  for (j = 0; v88; v85 = v2 + 64)
  {
LABEL_76:
    v92 = (*(v2 + 48) + 16 * (__clz(__rbit64(v88)) | (j << 6)));
    v94 = *v92;
    v93 = v92[1];

    v95 = [v118 queue_observers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AC0, &qword_270AE6F68);
    v96 = sub_270AE3CBC();

    if (*(v96 + 16))
    {
      v97 = sub_270ADD478(v94, v93);
      v99 = v98;

      if (v99)
      {
        v100 = *(*(v96 + 56) + 8 * v97);

        if (v100 >> 62)
        {
          v101 = sub_270AE3ECC();
          if (!v101)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v101)
          {
            goto LABEL_87;
          }
        }

        if (v101 < 1)
        {
          goto LABEL_94;
        }

        v102 = 0;
        do
        {
          if ((v100 & 0xC000000000000001) != 0)
          {
            v103 = MEMORY[0x2743AFBB0](v102, v100);
          }

          else
          {
            v103 = *(v100 + 8 * v102 + 32);
            swift_unknownObjectRetain();
          }

          ++v102;
          v104 = sub_270AE3D4C();
          [v103 summaryServiceAdapter:v118 didReceiveGroupSummariesForNotificationIdentifiers:v104];
          swift_unknownObjectRelease();
        }

        while (v101 != v102);
      }
    }

    else
    {
    }

LABEL_87:

    v88 &= v88 - 1;
  }

  while (1)
  {
    v91 = j + 1;
    if (__OFADD__(j, 1))
    {
      break;
    }

    if (v91 >= v89)
    {
    }

    v88 = *(v85 + 8 * v91);
    ++j;
    if (v88)
    {
      j = v91;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result = sub_270AE3F1C();
  __break(1u);
  return result;
}

uint64_t sub_270AD9954()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_270AD998C()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_270AD9ADC()
{
  MEMORY[0x2743B0720](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_270AD9B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_270ADD478(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_270ADA5EC(&qword_280843AD0, &qword_270AE6F78);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_270ADA0FC(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_270AD9BBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_270AE3EEC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_270AE3F3C();
      sub_270AE3D1C();
      result = sub_270AE3F4C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_270AD9E5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_270AE3EEC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_270AE3F3C();
      sub_270AE3D1C();
      result = sub_270AE3F4C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_270ADA0FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_270AE3E7C() + 1) & ~v5;
    do
    {
      sub_270AE3F3C();

      sub_270AE3D1C();
      v9 = sub_270AE3F4C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_270ADA2AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_270ADD478(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_270AD9E5C(v16, a4 & 1, &qword_280843AE8, &unk_270AE6F90);
      v11 = sub_270ADD478(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_270AE3F1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_270ADA74C(&qword_280843AE8, &unk_270AE6F90);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_270ADA44C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_270ADD478(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_270AD9BBC(v20, a4 & 1, a5, a6);
      v15 = sub_270ADD478(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_270AE3F1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_270ADA5EC(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

void *sub_270ADA5EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_270AE3EDC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_270ADA74C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_270AE3EDC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void (*sub_270ADA8AC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_270ADAC78(v7);
  v7[9] = sub_270ADA9B8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_270ADA958;
}

void sub_270ADA958(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_270ADA9B8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_270ADD478(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_270ADA74C(&qword_280843AE8, &unk_270AE6F90);
      v13 = v21;
      goto LABEL_11;
    }

    sub_270AD9E5C(v18, a4 & 1, &qword_280843AE8, &unk_270AE6F90);
    v13 = sub_270ADD478(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_270AE3F1C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_270ADAB34;
}

void sub_270ADAB34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_270ADB90C(*(v13 + 48) + 16 * v12);
      sub_270ADA0FC(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_270ADAC78(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_270ADACA0;
}

unint64_t sub_270ADACAC(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_270AE3ECC();
    }

    result = sub_270AE3EAC();
    *v2 = result;
  }

  return result;
}

uint64_t sub_270ADAD68(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_270AE3ECC();
  }

  return sub_270AE3EAC();
}

uint64_t sub_270ADADF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270ADAEA4;

  return sub_270AD84CC(a1, v4, v5, v6);
}

uint64_t sub_270ADAEA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_270ADAFBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_270ADB004(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_270ADB120(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_270ADB190(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_270AE3ECC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2743AFBB0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_270ADB278(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_270ADB190(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_270AE3ECC();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_270AE3ECC())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2743AFBB0](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v13 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v13 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x2743AFBB0](v10, v7);
          v14 = MEMORY[0x2743AFBB0](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          if (v11 >= v15)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v14 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_270ADAD68(v7);
          v16 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v16)
        {
          v7 = sub_270ADAD68(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return sub_270AE3ECC();
}

uint64_t sub_270ADB4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843AE0, &qword_270AE6F88);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_270AE3ECC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_270AE3ECC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_270ADB5CC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_270AE3ECC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_270AE3ECC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_270ADACAC(result, 1);

  return sub_270ADB4C0(v5, v3, 0);
}

unint64_t sub_270ADB6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_270AE3EFC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_270ADD478(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_270ADB7A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_270AE3EFC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_270ADD478(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_270ADB960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270ADB9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270ADBAB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_270AE3C6C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_270AE3C5C();
}

uint64_t sub_270ADBB30()
{
  sub_270AE3A0C();
  result = sub_270AE39FC();
  qword_280843AF0 = result;
  return result;
}

uint64_t sub_270ADBD34(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, uint64_t, uint64_t))
{
  v81 = a4;
  v82 = a8;
  v86 = a7;
  v83 = a3;
  v84 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v68 - v14;
  v15 = sub_270AE3BFC();
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8);
  MEMORY[0x28223BE20](v18 - 8);
  v72 = &v68 - v19;
  v20 = sub_270AE3B5C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v87 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_270AE3C1C();
  v80 = *(v74 - 8);
  v23 = MEMORY[0x28223BE20](v74);
  v76 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  v75 = v28;
  MEMORY[0x28223BE20](v25);
  v88 = &v68 - v29;
  v30 = [objc_opt_self() notificationForBulletin_];
  v31 = a2;
  sub_270AE3ADC();
  v32 = a5;
  sub_270AE3C0C();
  v33 = [a1 title];
  if (v33)
  {
    v34 = v33;
    v35 = sub_270AE3CDC();
    v68 = v36;
    v69 = v35;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  v77 = v17;
  v37 = [a1 subtitle];
  if (v37)
  {
    v38 = v37;
    sub_270AE3CDC();
  }

  v39 = [a1 message];
  if (v39)
  {
    v40 = v39;
    sub_270AE3CDC();
  }

  v70 = a9;
  v71 = a10;
  v41 = [a1 summary];
  [a1 isHighlight];
  v42 = v87;
  sub_270AE3B3C();
  v43 = v72;
  (*(v21 + 16))(v72, v42, v20);
  (*(v21 + 56))(v43, 0, 1, v20);
  sub_270AE3B7C();
  if ([a1 hasCriticalIcon])
  {
    [a1 interruptionLevel];
  }

  [a1 interruptionLevel];
  [a1 ignoresQuietMode];
  v44 = v77;
  sub_270AE3BEC();
  v46 = v78;
  v45 = v79;
  v47 = v73;
  (*(v78 + 16))(v73, v44, v79);
  (*(v46 + 56))(v47, 0, 1, v45);
  sub_270AE3B1C();
  [v81 allowPrivateProperties];
  sub_270AE3B8C();
  v81 = a1;
  v48 = [a1 communicationContext];
  if (v48)
  {
    v49 = v48;
    v50 = UNCommunicationContextFromBBCommunicationContext();
    sub_270AE3B9C();
  }

  (*(v46 + 8))(v44, v45);
  (*(v21 + 8))(v87, v20);
  v51 = v80;
  v79 = *(v80 + 32);
  v52 = v88;
  v53 = v74;
  v79(v88, v27, v74);
  sub_270AE3A8C();
  v87 = sub_270AE3A7C();
  v54 = v76;
  (*(v51 + 16))(v76, v52, v53);
  v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v56 = (v75 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = v53;
  v60 = swift_allocObject();
  v79(v60 + v55, v54, v59);
  v61 = v84;
  *(v60 + v56) = v83;
  v62 = v81;
  *(v60 + v57) = v81;
  v63 = (v60 + v58);
  v64 = v86;
  *v63 = v61;
  v63[1] = v64;
  *(v60 + ((v58 + 23) & 0xFFFFFFFFFFFFFFF8)) = v85;
  v65 = v62;

  v66 = v88;
  v71(v88, v70, v60);

  return (*(v51 + 8))(v66, v59);
}

uint64_t sub_270ADC540(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v66 = a3;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v52 - v6;
  v7 = sub_270AE3BFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_270AE3B5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v69 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_270AE3C1C();
  v57 = *(v65 - 8);
  v16 = MEMORY[0x28223BE20](v65);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v58 = v21;
  MEMORY[0x28223BE20](v18);
  v62 = &v52 - v22;
  v23 = [objc_opt_self() notificationForBulletin_];
  sub_270AE3ADC();
  sub_270AE3C0C();
  v24 = [a1 title];
  if (v24)
  {
    v25 = v24;
    v26 = sub_270AE3CDC();
    v53 = v27;
    v54 = v26;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v63 = v8;
  v64 = v7;
  v28 = [a1 subtitle];
  v55 = v14;
  if (v28)
  {
    v29 = v28;
    sub_270AE3CDC();
  }

  v30 = [a1 message];
  if (v30)
  {
    v31 = v30;
    sub_270AE3CDC();
  }

  v32 = [a1 summary];
  [a1 isHighlight];
  v33 = v69;
  sub_270AE3B3C();
  v34 = v55;
  (*(v55 + 16))(v12, v33, v13);
  (*(v34 + 56))(v12, 0, 1, v13);
  sub_270AE3B7C();
  if ([a1 hasCriticalIcon])
  {
    [a1 interruptionLevel];
  }

  [a1 interruptionLevel];
  [a1 ignoresQuietMode];
  v35 = v61;
  sub_270AE3BEC();
  v37 = v63;
  v36 = v64;
  v38 = v56;
  (*(v63 + 16))(v56, v35, v64);
  (*(v37 + 56))(v38, 0, 1, v36);
  sub_270AE3B1C();
  [v60 allowPrivateProperties];
  sub_270AE3B8C();
  v39 = [a1 communicationContext];
  if (v39)
  {
    v40 = v39;
    v41 = UNCommunicationContextFromBBCommunicationContext();
    sub_270AE3B9C();
  }

  (*(v37 + 8))(v35, v36);
  (*(v34 + 8))(v69, v13);
  v42 = v57;
  v69 = *(v57 + 32);
  v43 = v62;
  v44 = v65;
  (v69)(v62, v20, v65);
  sub_270AE3A8C();
  sub_270AE3A7C();
  v45 = v59;
  (*(v42 + 16))(v59, v43, v44);
  v46 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v47 = (v58 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (v69)(v48 + v46, v45, v44);
  v49 = (v48 + v47);
  v50 = v68;
  *v49 = v66;
  v49[1] = v50;
  *(v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8)) = v67;

  sub_270AE3A6C();

  return (*(v42 + 8))(v43, v44);
}

UNSNotificationPipelineAdapter __swiftcall UNSNotificationPipelineAdapter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_270ADCE38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id, uint64_t, uint64_t), uint64_t a6)
{
  v12 = sub_270AE3ABC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!UNCUseGroupService())
  {
    goto LABEL_6;
  }

  v22 = a6;
  v23 = a2;
  v21 = a5;
  if (qword_280843918 != -1)
  {
    swift_once();
  }

  v20 = qword_280843AF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B30, &qword_270AE6FD0);
  v16 = sub_270AE3C1C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_270AE6FA0;
  (*(v17 + 16))(v19 + v18, v23, v16);
  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_270AE3AAC();
    sub_270AE39DC();

    (*(v13 + 8))(v15, v12);
    a5 = v21;
    a6 = v22;
LABEL_6:
    sub_270ADE5A8(a4, a3, a1, a5, a6);
    return;
  }

  __break(1u);
}

uint64_t sub_270ADD068(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = UNCUseGroupService();
  if (v4)
  {
    if (qword_280843918 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B38, &qword_270AE6FD8);
    sub_270AE3ACC();
    *(swift_allocObject() + 16) = xmmword_270AE6FA0;
    sub_270AE3BAC();
    sub_270AE39EC();
  }

  return a3(v4);
}

char *sub_270ADD194(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B60, &qword_270AE7000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_270ADD2A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B30, &qword_270AE6FD0);
  v10 = *(sub_270AE3C1C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_270AE3C1C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_270ADD478(uint64_t a1, uint64_t a2)
{
  sub_270AE3F3C();
  sub_270AE3D1C();
  v4 = sub_270AE3F4C();

  return sub_270ADD4F0(a1, a2, v4);
}

unint64_t sub_270ADD4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_270AE3F0C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_270ADD5A8(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v93 = a3;
  v94 = a4;
  v75 = a2;
  v5 = sub_270AE3ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v72 - v10;
  v11 = sub_270AE3BFC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8);
  MEMORY[0x28223BE20](v15 - 8);
  v91 = &v72 - v16;
  v102 = sub_270AE3B5C();
  v17 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_270AE3C1C();
  v95 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v100 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v103 = &v72 - v23;
  MEMORY[0x28223BE20](v22);
  v99 = &v72 - v24;
  if (a1 >> 62)
  {
    v25 = sub_270AE3ECC();
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v5;
  v73 = v6;
  v72 = v8;
  if (v25)
  {
    v90 = objc_opt_self();
    if (v25 >= 1)
    {
      v85 = v25;
      v26 = 0;
      v84 = a1 & 0xC000000000000001;
      v83 = (v17 + 16);
      v82 = (v17 + 56);
      v81 = (v12 + 16);
      v80 = (v12 + 56);
      v79 = (v12 + 8);
      v78 = (v17 + 8);
      v98 = (v95 + 32);
      v77 = (v95 + 16);
      v76 = v95 + 8;
      v88 = v14;
      v89 = a1;
      v86 = v19;
      v87 = v11;
      v27 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v84)
        {
          v28 = MEMORY[0x2743AFBB0](v26, a1);
        }

        else
        {
          v28 = *(a1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 categoryID];
        if (v30)
        {
          v31 = v30;
          v32 = sub_270AE3CDC();
          v34 = v33;

          if (!*(v75 + 16))
          {

LABEL_15:
            v40 = 0;
            goto LABEL_16;
          }

          v35 = v32;
          v36 = v75;
          v37 = sub_270ADD478(v35, v34);
          v39 = v38;

          if ((v39 & 1) == 0)
          {
            goto LABEL_15;
          }

          v40 = *(*(v36 + 56) + 8 * v37);
          v41 = v40;
        }

        else
        {
          v40 = 0;
        }

LABEL_16:
        v42 = [v90 notificationForBulletin_];
        v96 = v40;
        sub_270AE3ADC();
        v43 = v94;
        sub_270AE3C0C();
        v44 = [v29 title];
        if (v44)
        {
          v45 = v44;
          sub_270AE3CDC();
        }

        v46 = [v29 subtitle];
        if (v46)
        {
          v47 = v46;
          sub_270AE3CDC();
        }

        v48 = [v29 message];
        v97 = v27;
        if (v48)
        {
          v49 = v48;
          sub_270AE3CDC();
        }

        v50 = [v29 summary];
        [v29 isHighlight];
        v51 = v101;
        sub_270AE3B3C();
        v52 = v91;
        v53 = v102;
        (*v83)(v91, v51, v102);
        (*v82)(v52, 0, 1, v53);
        v54 = v103;
        sub_270AE3B7C();
        if ([v29 hasCriticalIcon])
        {
          [v29 interruptionLevel];
        }

        [v29 interruptionLevel];
        [v29 ignoresQuietMode];
        v55 = v88;
        sub_270AE3BEC();
        v56 = v92;
        v57 = v87;
        (*v81)(v92, v55, v87);
        (*v80)(v56, 0, 1, v57);
        sub_270AE3B1C();
        [v93 allowPrivateProperties];
        sub_270AE3B8C();
        v58 = [v29 communicationContext];
        a1 = v89;
        v59 = v86;
        v27 = v97;
        if (v58)
        {
          v60 = v58;
          v61 = UNCommunicationContextFromBBCommunicationContext();
          sub_270AE3B9C();
        }

        (*v79)(v55, v57);
        (*v78)(v101, v102);
        v62 = v99;
        v63 = *v98;
        (*v98)(v99, v54, v59);
        (*v77)(v100, v62, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_270ADD2A0(0, v27[2] + 1, 1, v27);
        }

        v65 = v27[2];
        v64 = v27[3];
        if (v65 >= v64 >> 1)
        {
          v27 = sub_270ADD2A0((v64 > 1), v65 + 1, 1, v27);
        }

        ++v26;

        v66 = v95;
        (*(v95 + 8))(v99, v59);
        v27[2] = v65 + 1;
        v63(v27 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v65, v100, v59);
        if (v85 == v26)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  if (UNCUseGroupService())
  {
    if (qword_280843918 == -1)
    {
LABEL_33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B10, &qword_270AE6FC0);
      v67 = v73;
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_270AE6FA0;
      sub_270AE3A9C();
      v104 = v68;
      sub_270ADDFD0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B20, &qword_270AE6FC8);
      sub_270ADE028();
      v69 = v72;
      v70 = v74;
      sub_270AE3E6C();
      sub_270AE39DC();

      return (*(v67 + 8))(v69, v70);
    }

LABEL_37:
    swift_once();
    goto LABEL_33;
  }
}

unint64_t sub_270ADDFD0()
{
  result = qword_280843B18;
  if (!qword_280843B18)
  {
    sub_270AE3ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280843B18);
  }

  return result;
}

unint64_t sub_270ADE028()
{
  result = qword_280843B28;
  if (!qword_280843B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280843B20, &qword_270AE6FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280843B28);
  }

  return result;
}

uint64_t sub_270ADE0A0(uint64_t a1)
{
  v3 = *(sub_270AE3C1C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_270ADD068(a1, v1 + v4, v5);
}

uint64_t sub_270ADE16C(uint64_t a1)
{
  v2 = sub_270AE3C3C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_270ADF050(a1, &qword_280843B50, &qword_270AE6FF0);
  }

  else
  {
    v9 = *(v3 + 32);
    v9(v8, a1, v2);
    v9(v6, v8, v2);
    v10 = (*(v3 + 88))(v6, v2);
    if (v10 != *MEMORY[0x277D77EE0])
    {
      if (v10 == *MEMORY[0x277D77EB8])
      {
        return 1;
      }

      if (v10 == *MEMORY[0x277D77EC0])
      {
        return 2;
      }

      if (v10 == *MEMORY[0x277D77ED0])
      {
        return 3;
      }

      if (v10 == *MEMORY[0x277D77ED8])
      {
        return 4;
      }

      if (v10 == *MEMORY[0x277D77EC8])
      {
        return 5;
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  return 0;
}

uint64_t sub_270ADE398(uint64_t a1)
{
  v2 = sub_270AE3C2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_270ADF050(a1, &qword_280843B48, &qword_270AE6FE8);
  }

  else
  {
    v9 = *(v3 + 32);
    v9(v8, a1, v2);
    v9(v6, v8, v2);
    v10 = (*(v3 + 88))(v6, v2);
    if (v10 != *MEMORY[0x277D77EB0])
    {
      if (v10 == *MEMORY[0x277D77E98])
      {
        return 1;
      }

      if (v10 == *MEMORY[0x277D77EA0])
      {
        return 2;
      }

      if (v10 == *MEMORY[0x277D77EA8])
      {
        return 3;
      }

      if (v10 == *MEMORY[0x277D77E90])
      {
        return 4;
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  return 0;
}

void sub_270ADE5A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t, uint64_t), uint64_t a5)
{
  v83 = a5;
  v84 = a4;
  v81 = a3;
  v82 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B00, &qword_270AE6FB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v73 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B08, &qword_270AE6FB8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v78 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B40, &qword_270AE6FE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v70 - v16;
  v80 = sub_270AE393C();
  v76 = *(v80 - 8);
  v18 = MEMORY[0x28223BE20](v80);
  v74 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v75 = v70 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B48, &qword_270AE6FE8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B50, &qword_270AE6FF0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v70 - v25;
  v27 = sub_270AE3C1C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B58, &qword_270AE6FF8);
  MEMORY[0x28223BE20](v31);
  v33 = (v70 - v32);
  sub_270ADEFE0(v81, v70 - v32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v72 = v28;
    v44 = *(v28 + 32);
    v81 = v27;
    v44(v30, v33, v27);
    sub_270AE3AFC();
    [a1 setPriorityNotificationStatus_];
    sub_270AE3AEC();
    [a1 setNotificationSummaryStatus_];
    v45 = sub_270AE39CC();
    v46 = a1;
    v47 = v77;
    v48 = v80;
    if (v45)
    {
      sub_270AE3BBC();
      if (v49)
      {
        v50 = sub_270AE3CCC();
      }

      else
      {
        v50 = 0;
      }

      [v46 setMessage_];
    }

    sub_270AE3B6C();
    v51 = sub_270AE3B5C();
    v52 = *(v51 - 8);
    v71 = *(v52 + 48);
    v53 = v71(v14, 1, v51);
    v79 = v46;
    if (v53 == 1)
    {
      sub_270ADF050(v14, &qword_280843B08, &qword_270AE6FB8);
      (*(v76 + 56))(v17, 1, 1, v48);
    }

    else
    {
      sub_270AE3B4C();
      (*(v52 + 8))(v14, v51);
      v54 = v76;
      if ((*(v76 + 48))(v17, 1, v48) != 1)
      {
        v55 = v48;
        v56 = v75;
        (*(v54 + 32))(v75, v17, v55);
        v70[1] = sub_270ADB120(0, &qword_281257B88, 0x277CCA898);
        (*(v54 + 16))(v74, v56, v55);
        v57 = sub_270AE3E5C();
        [v46 setSummary_];

        (*(v54 + 8))(v56, v80);
LABEL_17:
        sub_270AE3B0C();
        v58 = sub_270AE3BFC();
        v59 = *(v58 - 8);
        v60 = *(v59 + 48);
        if (v60(v47, 1, v58) == 1)
        {
          sub_270ADF050(v47, &qword_280843B00, &qword_270AE6FB0);
          v61 = 0;
        }

        else
        {
          v61 = sub_270AE3BCC();
          (*(v59 + 8))(v47, v58);
        }

        [v79 setEventBehavior_];

        v62 = v78;
        sub_270AE3B6C();
        if (v71(v62, 1, v51) == 1)
        {
          sub_270ADF050(v62, &qword_280843B08, &qword_270AE6FB8);
        }

        else
        {
          v63 = sub_270AE3B2C();
          (*(v52 + 8))(v62, v51);
          if (v63 != 2 && (v63 & 1) != 0)
          {
            v64 = v73;
            sub_270AE3B0C();
            if (v60(v64, 1, v58) == 1)
            {
              sub_270ADF050(v64, &qword_280843B00, &qword_270AE6FB0);
              v65 = v79;
              v66 = v81;
              v67 = v72;
            }

            else
            {
              v69 = sub_270AE3BDC();
              (*(v59 + 8))(v64, v58);
              v65 = v79;
              v66 = v81;
              v67 = v72;
              if (v69 != 2 && (v69 & 1) != 0)
              {
                [v79 setIsHighlight_];
                v68 = v82;
                goto LABEL_27;
              }
            }

            [v65 setIsHighlight_];
            v68 = v82 | 0x200;
            goto LABEL_27;
          }
        }

        v65 = v79;
        [v79 setIsHighlight_];
        v66 = v81;
        v68 = v82;
        v67 = v72;
LABEL_27:
        v84(v65, v68, 0);
        (*(v67 + 8))(v30, v66);
        return;
      }
    }

    sub_270ADF050(v17, &qword_280843B40, &qword_270AE6FE0);
    [v46 setSummary_];
    goto LABEL_17;
  }

  v34 = *v33;
  if (qword_281257BD8 != -1)
  {
    swift_once();
  }

  v35 = sub_270AE3C6C();
  __swift_project_value_buffer(v35, qword_281257D10);
  v36 = v34;
  v37 = sub_270AE3C4C();
  v38 = sub_270AE3DFC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v85 = v40;
    *v39 = 136315138;
    swift_getErrorValue();
    v41 = sub_270AE3F2C();
    v43 = sub_270AE08F8(v41, v42, &v85);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_270AA8000, v37, v38, "Failed to update notification via adapter: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x2743B06A0](v40, -1, -1);
    MEMORY[0x2743B06A0](v39, -1, -1);
  }

  [a1 setPriorityNotificationStatus_];
  [a1 setNotificationSummaryStatus_];
  v84(a1, v82, 1);
}

uint64_t sub_270ADEFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B58, &qword_270AE6FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270ADF050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_270AE3C1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_270ADF17C(uint64_t a1)
{
  v3 = *(sub_270AE3C1C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_270ADCE38(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

id UNSServerActionHandler.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *UNSServerActionHandler.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___UNSServerActionHandler_vendor;
  v6 = v0;
  sub_270AE3D0C();
  sub_270AE396C();
  swift_allocObject();
  *&v0[v5] = sub_270AE394C();
  *&v6[OBJC_IVAR___UNSServerActionHandler_fetchTask] = 0;
  if (qword_281257BE0 != -1)
  {
    swift_once();
  }

  v7 = sub_270AE3C6C();
  __swift_project_value_buffer(v7, qword_281257D28);
  v8 = v6;
  v9 = sub_270AE3C4C();
  v10 = sub_270AE3DFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v23 = *&v1[v5];

    v13 = sub_270AE3CEC();
    v15 = v14;

    v16 = sub_270AE08F8(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_270AA8000, v9, v10, "ServerActionHandler init(): vendor: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2743B06A0](v12, -1, -1);
    MEMORY[0x2743B06A0](v11, -1, -1);
  }

  else
  {
  }

  v25.receiver = v8;
  v25.super_class = UNSServerActionHandler;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  v18 = sub_270AE3DAC();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v19;
  v21 = v17;
  *&v21[OBJC_IVAR___UNSServerActionHandler_fetchTask] = sub_270AE0100(0, 0, v4, &unk_270AE7018, v20);

  return v21;
}

uint64_t sub_270ADF5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_270AE3A5C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BA0, &qword_270AE7048);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BA8, &qword_270AE7050);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BB0, &unk_270AE7058);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_270ADF7D4, 0, 0);
}

uint64_t sub_270ADF7D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  v2 = v0[15];
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[14];
    sub_270AE395C();
    sub_270AE3DBC();
    (*(v4 + 8))(v2, v3);
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_270ADF96C;
    v6 = v0[16];
    v7 = v0[12];

    return MEMORY[0x2822003E8](v7, 0, 0, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_270ADF96C()
{

  return MEMORY[0x2822009F8](sub_270ADFA68, 0, 0);
}

uint64_t sub_270ADFA68()
{
  v60 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 152);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

LABEL_13:

    v41 = *(v0 + 8);

    return v41();
  }

  (*(v3 + 32))(*(v0 + 88), v1, v2);
  if (sub_270AE3DEC())
  {
    if (qword_281257BE0 != -1)
    {
      swift_once();
    }

    v5 = sub_270AE3C6C();
    __swift_project_value_buffer(v5, qword_281257D28);
    v6 = sub_270AE3C4C();
    v7 = sub_270AE3DFC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 88);
    v14 = *(v0 + 56);
    v15 = *(v0 + 64);
    if (v8)
    {
      v57 = *(v0 + 144);
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_270AA8000, v6, v7, "ServerActionHandler init() task cancelled", v16, 2u);
      MEMORY[0x2743B06A0](v16, -1, -1);

      (*(v15 + 8))(v13, v14);
      (*(v12 + 8))(v57, v11);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
      (*(v12 + 8))(v10, v11);
    }

    goto LABEL_13;
  }

  if (qword_281257BE0 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 56);
  v21 = *(v0 + 64);
  v22 = sub_270AE3C6C();
  __swift_project_value_buffer(v22, qword_281257D28);
  v23 = *(v21 + 16);
  v23(v18, v19, v20);
  v24 = v17;
  v25 = sub_270AE3C4C();
  v26 = sub_270AE3DFC();

  if (os_log_type_enabled(v25, v26))
  {
    v56 = *(v0 + 152);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v58;
    *v31 = 136315394;
    v23(v28, v27, v30);
    v32 = sub_270AE3CEC();
    v34 = v33;
    v35 = v30;
    v36 = *(v29 + 8);
    v36(v27, v35);
    v37 = sub_270AE08F8(v32, v34, &v59);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    *(v0 + 40) = [v56 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843BB8, qword_270AE7068);
    v38 = sub_270AE3CEC();
    v40 = sub_270AE08F8(v38, v39, &v59);

    *(v31 + 14) = v40;
    _os_log_impl(&dword_270AA8000, v25, v26, "ServerActionHandler init() vendor returned: %s sending to delegate: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743B06A0](v58, -1, -1);
    MEMORY[0x2743B06A0](v31, -1, -1);
  }

  else
  {
    v43 = *(v0 + 80);
    v44 = *(v0 + 56);
    v45 = *(v0 + 64);

    v36 = *(v45 + 8);
    v36(v43, v44);
  }

  v46 = [*(v0 + 152) delegate];
  if (v46)
  {
    v47 = v46;
    sub_270AE3A1C();
    v48 = sub_270AE3CCC();

    sub_270AE3A3C();
    v49 = sub_270AE3CCC();

    sub_270AE3A2C();
    v50 = sub_270AE3CCC();

    sub_270AE3A4C();
    if (v51)
    {
      v52 = sub_270AE3CCC();
    }

    else
    {
      v52 = 0;
    }

    [v47 performAction:v48 forNotification:v49 inApp:v50 withUserText:v52];

    swift_unknownObjectRelease();
  }

  v36(*(v0 + 88), *(v0 + 56));
  v53 = swift_task_alloc();
  *(v0 + 160) = v53;
  *v53 = v0;
  v53[1] = sub_270ADF96C;
  v54 = *(v0 + 128);
  v55 = *(v0 + 96);

  return MEMORY[0x2822003E8](v55, 0, 0, v54);
}

uint64_t sub_270AE004C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_270ADAEA4;

  return sub_270ADF5F4(a1, v4, v5, v6);
}

uint64_t sub_270AE0100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843A50, &qword_270AE6EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_270ADB960(a3, v25 - v10);
  v12 = sub_270AE3DAC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_270ADF050(v11, &qword_280843A50, &qword_270AE6EC0);
  }

  else
  {
    sub_270AE3D9C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_270AE3D8C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_270AE3CFC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_270ADF050(a3, &qword_280843A50, &qword_270AE6EC0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_270ADF050(a3, &qword_280843A50, &qword_270AE6EC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_270AE0414()
{
  if (qword_281257BE0 != -1)
  {
    swift_once();
  }

  v1 = sub_270AE3C6C();
  __swift_project_value_buffer(v1, qword_281257D28);
  v2 = v0;
  v3 = sub_270AE3C4C();
  v4 = sub_270AE3DFC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_270AA8000, v3, v4, "ServerActionHandler deinit %@ - cancelling task", v5, 0xCu);
    sub_270ADF050(v6, &qword_280843B90, &qword_270AE7020);
    MEMORY[0x2743B06A0](v6, -1, -1);
    MEMORY[0x2743B06A0](v5, -1, -1);
  }

  if (*&v2[OBJC_IVAR___UNSServerActionHandler_fetchTask])
  {

    sub_270AE3DDC();
  }

  v9.receiver = v2;
  v9.super_class = UNSServerActionHandler;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_270AE0638(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_270AE0684(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_270AE077C;

  return v6(a1);
}

uint64_t sub_270AE077C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_270AE089C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_270AE08F8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_270AE08F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270AE09C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_270AE0F24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_270AE09C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_270AE0AD0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_270AE3EBC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_270AE0AD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_270AE0B1C(a1, a2);
  sub_270AE0C4C(&unk_2880954A0);
  return v3;
}

void *sub_270AE0B1C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_270AE0D38(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_270AE3EBC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_270AE3D2C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270AE0D38(v10, 0);
        result = sub_270AE3E8C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_270AE0C4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_270AE0DAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_270AE0D38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B98, &qword_270AE7028);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270AE0DAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843B98, &qword_270AE7028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_270AE0EA0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t type metadata accessor for UNSServerActionHandler()
{
  result = qword_280843B88;
  if (!qword_280843B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280843B88);
  }

  return result;
}

uint64_t sub_270AE0F24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_270AE0F80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270AE10F0;

  return sub_270AE0684(a1, v4);
}

uint64_t sub_270AE1038(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_270ADAEA4;

  return sub_270AE0684(a1, v4);
}

void UNSDidCompleteDeliveryOfForegroundAction_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}