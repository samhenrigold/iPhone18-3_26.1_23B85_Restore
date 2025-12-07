uint64_t sub_E38(uint64_t a1, uint64_t a2)
{
  if (qword_179E8 != -1)
  {
    sub_7FC4();
  }

  return byte_179E0;
}

id sub_E98(uint64_t a1)
{
  if (qword_179F8 != -1)
  {
    sub_7FD8();
  }

  v2 = qword_179F0;

  return v2;
}

void sub_EDC(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_179F0;
  qword_179F0 = v1;
}

id sub_F20(uint64_t a1)
{
  if (qword_17A08 != -1)
  {
    sub_7FEC();
  }

  v2 = qword_17A00;

  return v2;
}

void sub_F64(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_17A00;
  qword_17A00 = v1;
}

id sub_FA8(uint64_t a1)
{
  if (qword_17A18 != -1)
  {
    sub_8000();
  }

  v2 = qword_17A10;

  return v2;
}

void sub_FEC(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_17A10;
  qword_17A10 = v1;
}

id sub_1030(uint64_t a1)
{
  if (qword_17A28 != -1)
  {
    sub_8014();
  }

  v2 = qword_17A20;

  return v2;
}

void sub_1074(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_17A20;
  qword_17A20 = v1;
}

void sub_10B8(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_17A30;
  qword_17A30 = v1;
}

id sub_10F8(uint64_t a1)
{
  if (qword_17A38 != -1)
  {
    sub_8028();
  }

  v2 = qword_17A30;

  return v2;
}

void sub_113C(id a1)
{
  if (!qword_17A30)
  {
    objc_storeStrong(&qword_17A30, &_os_log_default);
  }
}

id sub_1160(uint64_t a1)
{
  if (qword_17A48 != -1)
  {
    sub_803C();
  }

  v2 = qword_17A40;

  return v2;
}

void sub_11A4(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_17A40;
  qword_17A40 = v1;
}

id sub_11E8(uint64_t a1)
{
  if (qword_17A58 != -1)
  {
    sub_8050();
  }

  v2 = qword_17A50;

  return v2;
}

void sub_122C(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_17A50;
  qword_17A50 = v1;
}

id sub_1270(uint64_t a1)
{
  if (qword_17A68 != -1)
  {
    sub_8064();
  }

  v2 = qword_17A60;

  return v2;
}

void sub_12B4(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_17A60;
  qword_17A60 = v1;
}

id hexStringFromByteArray(uint64_t a1, unsigned int a2)
{
  v4 = [NSMutableString stringWithCapacity:(2 * a2)];
  if (a2 >= 1)
  {
    v5 = a2 - 1;
    do
    {
      if (v5)
      {
        v6 = @":";
      }

      else
      {
        v6 = &stru_108F8;
      }

      v7 = [NSString stringWithFormat:@"%02x%@", *(a1 + v5), v6];
      [v4 appendString:v7];

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  v9 = [NSString stringWithString:v4];
  v10 = [v9 uppercaseString];

  return v10;
}

uint64_t isPartnerSupportEnabled(uint64_t a1, uint64_t a2)
{
  if (qword_17A70 != -1)
  {
    sub_8078();
  }

  return byte_17A78;
}

void sub_1FF8(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  v2 = [v1 BOOLForKey:@"GCPartnersEnable"];
  byte_17A78 = v2;
  v3 = sub_10F8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_17A78;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v4, 8u);
  }
}

void sub_2380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    sub_86F4(WeakRetained);
    v13 = kdebug_trace();
    if (a5 == 32)
    {
      [v12 handleInputPayload:32 withData:v10 timestamp:a3];
    }

    else if (a5 == 7)
    {
      [v12 handleVirtualKeyPayload:7 withData:v10 timestamp:a3];
    }

    else
    {
      v14 = sub_10F8(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134218755;
        v16 = a4;
        v17 = 2048;
        v18 = a5;
        v19 = 1040;
        v20 = [v10 length];
        v21 = 2097;
        v22 = [v10 bytes];
        _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "Received unknown report: type = %li, reportID = %#lx, bytes = %{private}.*P", &v15, 0x26u);
      }
    }
  }
}

void sub_2608(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3);
  }

  else
  {
    v4 = [[NSString alloc] initWithFormat:@"Set output report failed."];
    v5 = [NSError alloc];
    v8 = NSLocalizedFailureErrorKey;
    v9 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [v5 initWithDomain:@"XboxWirelessGamepadError" code:1 userInfo:v6];

    (*(v1 + 16))(v1, v7);
  }
}

void sub_2F4C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_2F78(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_debug_impl(a1, v10, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

BOOL sub_2F98(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id sub_32D8()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_DE8();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_DFC();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_3628();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_363C();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_2FB0();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_2FC4();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_32B0();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_32C4();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_3600();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_3614();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_73E0();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_73F4();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_E10();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_E24();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

NSObject *sub_3650(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
{
  v7 = a4;
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  if (v8)
  {
    v9 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v8, v9, a1, a2);
    dispatch_source_set_event_handler(v8, v7);
    dispatch_resume(v8);
  }

  return v8;
}

void sub_38D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3900(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10F8(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_3998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10F8(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_412C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4144(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_10F8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Freeing HIDDevice on %@", &v6, 0xCu);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

BOOL sub_453C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_11040] || (objc_msgSend(v5, "isEqual:", &off_11058) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_11040) || (objc_msgSend(v5, "isEqual:", &off_11070) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_11040) || (objc_msgSend(v5, "isEqual:", &off_11040) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_4AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4B10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_10F8(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "calling cancel handler", v5, 2u);
    }

    (*(v2[1] + 16))();
    v4 = v2[1];
    v2[1] = 0;
  }
}

void sub_4D84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 528);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = 0;
  }
}

void sub_5644(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_56EC;
  v7[3] = &unk_10560;
  v7[4] = v2;
  v4 = sub_3650(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_6BA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[480] & 1) == 0)
    {
      WeakRetained[480] = 1;
      if (!*(WeakRetained + 66))
      {
        clock_gettime(_CLOCK_MONOTONIC_RAW, (WeakRetained + 504));
        v4 = v3[70];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_6C90;
        v7[3] = &unk_10600;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_3650(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_6C90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = 0uLL;
    clock_gettime(_CLOCK_MONOTONIC_RAW, &v6);
    if ((*(&v6 + 1) + v6 * 1000000000.0 - (*(WeakRetained + 64) + *(WeakRetained + 63) * 1000000000.0)) * 0.000000001 >= *(WeakRetained + 122))
    {
      *(WeakRetained + 504) = v6;
      v2 = [WeakRetained isAnyHapticMotorEnabled];
      v3 = v2;
      v4 = sub_10F8(v2);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        if (v5)
        {
          sub_8A6C(v4);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v5)
        {
          sub_8A28(v4);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_7370(unsigned int a1)
{

  return kdebug_trace();
}

id sub_7398(uint64_t a1, void *a2)
{

  return [a2 timestamp];
}

void sub_73C0(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_7830(uint64_t a1)
{
  v10 = 769;
  v2 = (a1 + 40);
  v11 = *(a1 + 40);
  v3 = sub_10F8(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_8AB0(v2, v3);
  }

  v4 = [*(a1 + 32) device];
  v9 = 0;
  v5 = [v4 setReport:&v10 reportLength:3 withIdentifier:1 forType:1 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v8 = sub_10F8(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8B2C(v6, v8);
    }
  }
}

void sub_79C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_79EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    sub_86F4(WeakRetained);
    v13 = kdebug_trace();
    if (a5)
    {
      v14 = sub_10F8(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134218755;
        v16 = a4;
        v17 = 2048;
        v18 = a5;
        v19 = 1040;
        v20 = [v10 length];
        v21 = 2097;
        v22 = [v10 bytes];
        _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "Received unknown report: type = %li, reportID = %#lx, bytes = %{private}.*P", &v15, 0x26u);
      }
    }

    else
    {
      [v12 handleControlSurfaceInputPayload:0 withData:v10 timestamp:a3];
    }
  }
}

void sub_808C(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  if (a1)
  {
    v9 = *a2;
    v10 = [a1 device];
    v23 = 0;
    v11 = [v10 setReport:a2 reportLength:a3 withIdentifier:v9 forType:1 error:&v23 timeout:0 callback:0];
    v12 = v23;

    if (v11)
    {
      if (!v8)
      {
LABEL_6:

        goto LABEL_7;
      }

      v14 = [a1 dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_274C;
      block[3] = &unk_105D8;
      v15 = &v19;
      v19 = v8;
      dispatch_async(v14, block);
    }

    else
    {
      v16 = sub_10F8(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        v25 = v9;
        v26 = 2114;
        v27 = v12;
        _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "Set output report %#0.2x failed: %{public}@", buf, 0x12u);
      }

      if (!v8)
      {
        goto LABEL_6;
      }

      v17 = [a1 dispatchQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_2608;
      v20[3] = &unk_105B0;
      v15 = &v22;
      v22 = v8;
      v21 = v12;
      dispatch_async(v17, v20);

      v14 = v21;
    }

    goto LABEL_6;
  }

LABEL_7:
}

void sub_8470()
{
  sub_2F6C();
  v2 = sub_10F8(v1);
  if (sub_2F98(v2))
  {
    sub_2F30();
    sub_2F4C(&dword_0, v3, v4, "Payload for input report [%#zx] has length [%{bytes}zu], which is less than the minimum expected length [%{bytes}zu]. Ignoring.", v5, v6, v7, v8);
  }
}

void sub_850C()
{
  sub_2F6C();
  v2 = sub_10F8(v1);
  if (sub_2F98(v2))
  {
    sub_2F30();
    sub_2F4C(&dword_0, v3, v4, "Payload for input report [%#zx] has length [%{bytes}zu], which is less than the minimum expected length [%{bytes}zu]. Ignoring.", v5, v6, v7, v8);
  }
}

void sub_85A8()
{
  sub_2F6C();
  v2 = sub_10F8(v1);
  if (sub_2F98(v2))
  {
    sub_2F30();
    sub_2F4C(&dword_0, v3, v4, "Payload for input report [%#zx] has length [%{bytes}zu], which is less than the minimum expected length [%{bytes}zu]. Ignoring.", v5, v6, v7, v8);
  }
}

void sub_8644(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v7 = v5;
    if (a3)
    {
      *(a1 + 664) = [v5 timestamp];
    }

    [v7 timestamp];
    [v7 type];
    kdebug_trace();
    WeakRetained = objc_loadWeakRetained((a1 + 624));
    [WeakRetained dispatchEvent:v7];

    v5 = v7;
  }
}

uint64_t sub_86F4(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_87A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10F8(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 656);
    v8 = 134218498;
    v9 = v7;
    v10 = 2112;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] setProperty: %@ forKey: %@", &v8, 0x20u);
  }
}

void sub_888C(uint64_t a1, void *a2)
{
  sub_7398(a1, a2);
  sub_7370([v3 type]);
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_7350();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_59DC;
  *(v2 + 24) = &unk_106B0;
  *(v2 + 32) = v5;
  sub_73C0(v3);
}

void sub_893C(uint64_t a1, void *a2)
{
  sub_7398(a1, a2);
  sub_7370([v3 type]);
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_7350();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_5A5C;
  *(v2 + 24) = &unk_106B0;
  *(v2 + 32) = v5;
  sub_73C0(v3);
}

void sub_8AB0(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Set LED mode: %d", v3, 8u);
}

void sub_8B2C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Set LED Mode Error: %{public}@", &v4, 0xCu);
}

void sub_8BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10F8(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134218496;
    v6 = a1;
    v7 = 2048;
    v8 = a2;
    v9 = 2048;
    v10 = 20;
    _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Payload for input report [%#zx] has length [%{bytes}zu], which is less than the minimum expected length [%{bytes}zu]. Ignoring.", &v5, 0x20u);
  }
}