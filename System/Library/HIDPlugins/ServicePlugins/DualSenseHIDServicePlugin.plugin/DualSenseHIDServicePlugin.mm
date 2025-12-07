uint64_t sub_DE8(uint64_t a1, uint64_t a2)
{
  if (qword_1F168 != -1)
  {
    sub_B238();
  }

  return byte_1F160;
}

id sub_E48(uint64_t a1)
{
  if (qword_1F178 != -1)
  {
    sub_B24C();
  }

  v2 = qword_1F170;

  return v2;
}

void sub_E8C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_1F170;
  qword_1F170 = v1;
}

id sub_ED0(uint64_t a1)
{
  if (qword_1F188 != -1)
  {
    sub_B260();
  }

  v2 = qword_1F180;

  return v2;
}

void sub_F14(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_1F180;
  qword_1F180 = v1;
}

id sub_F58(uint64_t a1)
{
  if (qword_1F198 != -1)
  {
    sub_B274();
  }

  v2 = qword_1F190;

  return v2;
}

void sub_F9C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_1F190;
  qword_1F190 = v1;
}

id sub_FE0(uint64_t a1)
{
  if (qword_1F1A8 != -1)
  {
    sub_B288();
  }

  v2 = qword_1F1A0;

  return v2;
}

void sub_1024(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_1F1A0;
  qword_1F1A0 = v1;
}

void sub_1068(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_1F1B0;
  qword_1F1B0 = v1;
}

id sub_10A8(uint64_t a1)
{
  if (qword_1F1B8 != -1)
  {
    sub_B29C();
  }

  v2 = qword_1F1B0;

  return v2;
}

void sub_10EC(id a1)
{
  if (!qword_1F1B0)
  {
    objc_storeStrong(&qword_1F1B0, &_os_log_default);
  }
}

id sub_1110(uint64_t a1)
{
  if (qword_1F1C8 != -1)
  {
    sub_B2B0();
  }

  v2 = qword_1F1C0;

  return v2;
}

void sub_1154(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_1F1C0;
  qword_1F1C0 = v1;
}

id sub_1198(uint64_t a1)
{
  if (qword_1F1D8 != -1)
  {
    sub_B2C4();
  }

  v2 = qword_1F1D0;

  return v2;
}

void sub_11DC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_1F1D0;
  qword_1F1D0 = v1;
}

id sub_1220(uint64_t a1)
{
  if (qword_1F1E8 != -1)
  {
    sub_B2D8();
  }

  v2 = qword_1F1E0;

  return v2;
}

void sub_1264(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_1F1E0;
  qword_1F1E0 = v1;
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
        v6 = &stru_189A0;
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
  if (qword_1F1F0 != -1)
  {
    sub_B2EC();
  }

  return byte_1F1F8;
}

void sub_2020(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  v2 = [v1 BOOLForKey:@"GCPartnersEnable"];
  byte_1F1F8 = v2;
  v3 = sub_10A8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_1F1F8;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v4, 8u);
  }
}

id sub_2100()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_19B8();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_19CC();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_B1E8();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_B1FC();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_1EB4();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_1EC8();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_2428();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_243C();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_B1C0();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_B1D4();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_B210();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_B224();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_12A8();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_12BC();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

NSObject *sub_2450(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_26D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2700(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10A8(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_2798(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10A8(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_2F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2F2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2F44(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_10A8(v2);
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

BOOL sub_333C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_19698] || (objc_msgSend(v5, "isEqual:", &off_196B0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_19698) || (objc_msgSend(v5, "isEqual:", &off_196C8) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_19698) || (objc_msgSend(v5, "isEqual:", &off_19698) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_38EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_10A8(WeakRetained);
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

void sub_3B84(uint64_t a1)
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

void sub_4444(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_44EC;
  v7[3] = &unk_185B0;
  v7[4] = v2;
  v4 = sub_2450(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_59A0(uint64_t a1)
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
        v7[2] = sub_5A90;
        v7[3] = &unk_18520;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_2450(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_5A90(uint64_t a1)
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
      v4 = sub_10A8(v2);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        if (v5)
        {
          sub_B728(v4);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v5)
        {
          sub_B6E4(v4);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_6170(unsigned int a1)
{

  return kdebug_trace();
}

id sub_6198(uint64_t a1, void *a2)
{

  return [a2 timestamp];
}

void sub_61C0(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_6938(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v6 = a2;
  v8 = kdebug_trace();
  if (v6)
  {
    v9 = sub_10A8(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_B7DC();
    }
  }

  else
  {
    if (a4 >= 0x40)
    {
      v10 = 64;
    }

    else
    {
      v10 = a4;
    }

    v11 = memcpy((*(a1 + 32) + 904), a3, v10);
    v9 = sub_10A8(v11);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_6A84((*(a1 + 32) + 904));
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "(Async) Firmware Info = %@", &v13, 0xCu);
    }
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
}

id sub_6A84(const char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    __dst[11] = 0;
    strncpy(__dst, a1 + 1, 0xBuLL);
    v27[8] = 0;
    strncpy(v27, a1 + 12, 8uLL);
    v25[0] = @"ReportID";
    v24 = [NSNumber numberWithUnsignedChar:v1];
    v26[0] = v24;
    v25[1] = @"Build Date";
    v3 = [NSString stringWithUTF8String:__dst];
    v23 = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"<invalid>";
    }

    v26[1] = v4;
    v25[2] = @"Build Time";
    v5 = [NSString stringWithUTF8String:v27];
    v22 = v5;
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"<invalid>";
    }

    v26[2] = v6;
    v25[3] = @"Firmware Type";
    v21 = [NSNumber numberWithUnsignedShort:*(a1 + 10)];
    v26[3] = v21;
    v25[4] = @"Software Series";
    v20 = [NSNumber numberWithUnsignedShort:*(a1 + 11)];
    v26[4] = v20;
    v25[5] = @"Hardware Info";
    v19 = [NSNumber numberWithUnsignedInt:*(a1 + 6)];
    v26[5] = v19;
    v25[6] = @"Main Firmware Version";
    v18 = [NSNumber numberWithUnsignedInt:*(a1 + 7)];
    v26[6] = v18;
    v25[7] = @"Device Info [0]";
    v7 = [NSNumber numberWithUnsignedInt:*(a1 + 8)];
    v26[7] = v7;
    v25[8] = @"Device Info [1]";
    v8 = [NSNumber numberWithUnsignedInt:*(a1 + 9)];
    v26[8] = v8;
    v25[9] = @"Device Info [2]";
    v9 = [NSNumber numberWithUnsignedInt:*(a1 + 10)];
    v26[9] = v9;
    v25[10] = @"Device Info [3]";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 11)];
    v26[10] = v10;
    v25[11] = @"Update Version";
    v11 = [NSNumber numberWithUnsignedShort:*(a1 + 22)];
    v26[11] = v11;
    v25[12] = @"Update Capability Info";
    v12 = [NSNumber numberWithUnsignedChar:*(a1 + 46)];
    v26[12] = v12;
    v25[13] = @"Audio Sig Proc FW Version";
    v13 = [NSNumber numberWithUnsignedInt:*(a1 + 13)];
    v26[13] = v13;
    v25[14] = @"Audio Codec FW Version";
    v14 = [NSNumber numberWithUnsignedInt:*(a1 + 14)];
    v26[14] = v14;
    v25[15] = @"CRC 32";
    v15 = [NSNumber numberWithUnsignedInt:*(a1 + 15)];
    v26[15] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:16];
  }

  else
  {
    v16 = +[NSDictionary dictionary];
  }

  return v16;
}

void sub_706C(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v6 = a2;
  v8 = kdebug_trace();
  if (v6)
  {
    v9 = sub_10A8(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_B8BC();
    }

LABEL_4:

    goto LABEL_27;
  }

  v10 = a1 + 32;
  if (a4 >= 0x29)
  {
    v11 = 41;
  }

  else
  {
    v11 = a4;
  }

  v12 = memcpy((*(a1 + 32) + 727), a3, v11);
  v14 = sub_DE8(v12, v13);
  if (v14)
  {
    sub_B92C();
  }

  v16 = vcvtd_n_f64_s32(*(*v10 + 748) + *(*v10 + 746), 1uLL);
  *(*v10 + 768) = v16 / ((fabs((*(*v10 + 734) - *(*v10 + 728))) + fabs((*(*v10 + 736) - *(*v10 + 728)))) * 0.5);
  *(*v10 + 768) = *(*v10 + 768) * 0.0174532925;
  *(*v10 + 776) = v16 / ((fabs((*(*v10 + 738) - *(*v10 + 730))) + fabs((*(*v10 + 740) - *(*v10 + 730)))) * 0.5);
  *(*v10 + 776) = *(*v10 + 776) * 0.0174532925;
  *(*v10 + 784) = v16 / ((fabs((*(*v10 + 742) - *(*v10 + 732))) + fabs((*(*v10 + 744) - *(*v10 + 732)))) * 0.5);
  *(*v10 + 784) = *(*v10 + 784) * 0.0174532925;
  *(*v10 + 792) = vcvtd_n_f64_s32(*(*v10 + 752) + *(*v10 + 750), 1uLL);
  *(*v10 + 800) = vcvtd_n_f64_s32(*(*v10 + 756) + *(*v10 + 754), 1uLL);
  *(*v10 + 808) = vcvtd_n_f64_s32(*(*v10 + 760) + *(*v10 + 758), 1uLL);
  *(*v10 + 816) = 2.0 / (*(*v10 + 750) - *(*v10 + 752));
  *(*v10 + 824) = 2.0 / (*(*v10 + 754) - *(*v10 + 756));
  *(*v10 + 832) = 2.0 / (*(*v10 + 758) - *(*v10 + 760));
  v17 = sub_DE8(v14, v15);
  if (v17)
  {
    sub_B9F8();
  }

  v19 = sub_DE8(v17, v18);
  if (v19)
  {
    sub_BA94();
  }

  v21 = sub_DE8(v19, v20);
  if (v21)
  {
    sub_BB30();
  }

  v23 = sub_DE8(v21, v22);
  if (v23)
  {
    sub_BBCC();
  }

  v25 = sub_DE8(v23, v24);
  if (v25)
  {
    sub_BC68();
  }

  v27 = sub_DE8(v25, v26);
  if (v27)
  {
    sub_BD04();
  }

  v29 = sub_DE8(v27, v28);
  if (v29)
  {
    sub_BDA0();
  }

  v31 = sub_DE8(v29, v30);
  if (v31)
  {
    sub_BE3C();
  }

  v33 = sub_DE8(v31, v32);
  if (v33)
  {
    v9 = sub_10A8(v33);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v34 = *(*v10 + 832);
      *buf = 134217984;
      v36 = v34;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "(Async) Accelerometer Z Sensitivity = %f", buf, 0xCu);
    }

    goto LABEL_4;
  }

LABEL_27:
  free(*(a1 + 48));
  free(*(a1 + 56));
}

id sub_74B4(uint64_t a1)
{
  if (*a1)
  {
    v24[0] = @"ReportID";
    v23 = [NSNumber numberWithUnsignedChar:?];
    v25[0] = v23;
    v24[1] = @"gyroPitchBias";
    v22 = [NSNumber numberWithShort:*(a1 + 1)];
    v25[1] = v22;
    v24[2] = @"gyroYawBias";
    v21 = [NSNumber numberWithShort:*(a1 + 3)];
    v25[2] = v21;
    v24[3] = @"gyroRollBias";
    v20 = [NSNumber numberWithShort:*(a1 + 5)];
    v25[3] = v20;
    v24[4] = @"gyroRefPitchPlus";
    v19 = [NSNumber numberWithShort:*(a1 + 7)];
    v25[4] = v19;
    v24[5] = @"gyroRefPitchMinus";
    v18 = [NSNumber numberWithShort:*(a1 + 9)];
    v25[5] = v18;
    v24[6] = @"gyroRefYawPlus";
    v17 = [NSNumber numberWithShort:*(a1 + 11)];
    v25[6] = v17;
    v24[7] = @"gyroRefYawMinus";
    v16 = [NSNumber numberWithShort:*(a1 + 13)];
    v25[7] = v16;
    v24[8] = @"gyroRefRollPlus";
    v15 = [NSNumber numberWithShort:*(a1 + 15)];
    v25[8] = v15;
    v24[9] = @"gyroRefRollMinus";
    v14 = [NSNumber numberWithShort:*(a1 + 17)];
    v25[9] = v14;
    v24[10] = @"gyroRefSpeedPlus";
    v13 = [NSNumber numberWithShort:*(a1 + 19)];
    v25[10] = v13;
    v24[11] = @"gyroRefSpeedMinus";
    v2 = [NSNumber numberWithShort:*(a1 + 21)];
    v25[11] = v2;
    v24[12] = @"accelRefXPlus";
    v3 = [NSNumber numberWithShort:*(a1 + 23)];
    v25[12] = v3;
    v24[13] = @"accelRefXMinus";
    v4 = [NSNumber numberWithShort:*(a1 + 25)];
    v25[13] = v4;
    v24[14] = @"accelRefYPlus";
    v5 = [NSNumber numberWithShort:*(a1 + 27)];
    v25[14] = v5;
    v24[15] = @"accelRefYMinus";
    v6 = [NSNumber numberWithShort:*(a1 + 29)];
    v25[15] = v6;
    v24[16] = @"accelRefZPlus";
    v7 = [NSNumber numberWithShort:*(a1 + 31)];
    v25[16] = v7;
    v24[17] = @"accelRefZMinus";
    v8 = [NSNumber numberWithShort:*(a1 + 33)];
    v25[17] = v8;
    v24[18] = @"calibrationTemp";
    v9 = [NSNumber numberWithUnsignedShort:*(a1 + 35)];
    v25[18] = v9;
    v24[19] = @"CRC 32";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 37)];
    v25[19] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:20];
  }

  else
  {
    v11 = +[NSDictionary dictionary];
  }

  return v11;
}

void sub_7CA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_7CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v81 = a2;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    sub_B3B0(WeakRetained);
    kdebug_trace();
    v109 = 0u;
    memset(v110, 0, 28);
    memset(v108, 0, sizeof(v108));
    if (a5 == 49)
    {
      [v12 bytes];
      if ((*(v14 + 1029) & 1) == 0)
      {
        [(dispatch_once_t *)v14 setExtendedSupportEnabled:1];
      }

      [v12 length];
      __memcpy_chk();
LABEL_10:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_8854;
      block[3] = &unk_18648;
      v15 = v14;
      v83 = v15;
      objc_copyWeak(&v84, (a1 + 32));
      if (v14[87] != -1)
      {
        dispatch_once(v14 + 87, block);
      }

      [v15 updateBatteryLevel:v110[2] & 0xF chargeStatus:LOBYTE(v110[2]) >> 4];
      if (*(v15 + 721) == 1)
      {
        v75 = *(v15 + 97) * (*(&v108[1] + 1) - *(v15 + 365));
        v76 = *(v15 + 96) * (*(v108 + 15) - *(v15 + 364));
        v73 = -((*(&v108[1] + 5) - *(v15 + 99)) * *(v15 + 102));
        v74 = *(v15 + 98) * (*(v15 + 366) - *(&v108[1] + 3));
        v71 = -((*(&v108[1] + 7) - *(v15 + 100)) * *(v15 + 103));
        v72 = (*(&v108[1] + 9) - *(v15 + 101)) * *(v15 + 104);
        v70 = 1;
      }

      else
      {
        v70 = 0;
        v71 = 0.0;
        v72 = 0.0;
        v73 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        v76 = 0.0;
      }

      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      if ((v109 & 0x80000000) == 0)
      {
        v21 = (((*(&v109 + 1) & 0xFFF) / 1919.0) + ((*(&v109 + 1) & 0xFFF) / 1919.0)) + -1.0;
        v22 = (*(&v109 + 1) | (BYTE3(v109) << 16)) >> 12;
        v23 = ((v22 / 1079.0) + (v22 / 1079.0)) + -1.0;
        v17 = fmaxf(-v23, 0.0);
        v18 = fmaxf(v23, 0.0);
        if (v21 >= 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = -v21;
        }

        v20 = fmaxf(v21, 0.0);
      }

      v78 = v17;
      v77 = v12;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      if ((SBYTE4(v109) & 0x80000000) == 0)
      {
        v27 = (((*(&v109 + 5) & 0xFFF) / 1919.0) + ((*(&v109 + 5) & 0xFFF) / 1919.0)) + -1.0;
        v28 = (*(&v109 + 5) | (BYTE7(v109) << 16)) >> 12;
        v29 = ((v28 / 1079.0) + (v28 / 1079.0)) + -1.0;
        v16 = fmaxf(-v29, 0.0);
        v24 = fmaxf(v29, 0.0);
        if (v27 >= 0.0)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = -v27;
        }

        v26 = fmaxf(v27, 0.0);
      }

      v79 = v16;
      v30 = LOBYTE(v108[0]);
      v31 = BYTE2(v108[0]);
      v32 = BYTE1(v108[0]);
      v33 = BYTE3(v108[0]);
      v34 = BYTE9(v108[0]);
      v35 = *(v108 + 7);
      LOBYTE(v6) = BYTE5(v108[0]);
      LOBYTE(v7) = BYTE4(v108[0]);
      [v15 dispatchHomeButtonEventWithValue:BYTE9(v108[0]) & 1 timestamp:a3];
      [v15 dispatchMenuButtonEventWithValue:(*(v108 + 7) >> 13) & 1 timestamp:a3];
      [v15 dispatchOptionsButtonEventWithValue:(*(v108 + 7) >> 12) & 1 timestamp:a3];
      v36.i64[0] = v30;
      v36.i64[1] = v32;
      v37 = v36;
      v38 = vdupq_n_s64(0xC05FE00000000000);
      v39 = vdup_n_s32(v35 & 0xF);
      v36.i64[0] = v31;
      v36.i64[1] = v33;
      *v37.i8 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vcvtq_f64_u64(v37), v38), xmmword_13300));
      v40 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vcvtq_f64_u64(v36), v38), xmmword_13300));
      *&v38.f64[0] = vrev64_s32(*v37.i8);
      v41 = vrev64_s32(v40);
      __asm { FMOV            V7.4S, #1.0 }

      v46 = vdup_n_s32(v35);
      __asm { FMOV            V18.2S, #1.0 }

      v86 = vbslq_s8(vmovl_s16(vceq_s16(vdup_n_s16(v35 & 0xF), 0x2000600040000)), _Q7, vcvtq_f32_u32(vmovl_u16(vand_s8(vuzp1_s16(vorr_s8(vceq_s32(v39, 0x500000001), vceq_s32(v39, 0x300000007)), vceq_s32(vdup_n_s32(v35 & 0xD), 0x100000005)), 0x1000100010001))));
      *buf = 0;
      v87 = vcvt_f32_u32((*&vshl_u32((*&v46 & 0xFFFF00FFFFFF00FFLL), 0xFFFFFFFAFFFFFFFBLL) & 0xFFFFFFF1FFFFFFF1));
      *&v88 = ((v35 >> 4) & 1);
      *(&v88 + 1) = ((v35 >> 7) & 1);
      v89 = vbic_s8(_D18, vceqz_s32(vand_s8(v46, 0x20000000100)));
      LODWORD(v90) = fmaxf(*&v37.i32[1], 0.0);
      *(&v90 + 4) = vand_s8(vneg_f32(*&v38.f64[0]), vcltz_f32(*&v38.f64[0]));
      HIDWORD(v90) = fmaxf(*v37.i32, 0.0);
      LODWORD(v91) = fmaxf(*&v40.i32[1], 0.0);
      *(&v91 + 4) = vand_s8(vneg_f32(v41), vcltz_f32(v41));
      HIDWORD(v91) = fmaxf(*v40.i32, 0.0);
      *&v92 = v7 / 255.0;
      *(&v92 + 1) = v6 / 255.0;
      *(&v92 + 2) = ((v35 >> 14) & 1);
      *(&v92 + 3) = (v35 >> 15);
      v93 = 0;
      v94 = 0;
      v95 = v78;
      v96 = v18;
      v97 = v19;
      v98 = v20;
      v99 = v79;
      v100 = v24;
      v101 = v25;
      v102 = v26;
      v103 = ((v34 >> 1) & 1);
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      v48 = [v15 dispatchGameControllerExtendedEventWithState:buf timestamp:a3];
      if (*(v15 + 721) == 1)
      {
        buf[0] = v70;
        *&buf[1] = 0;
        *&buf[4] = 0;
        *v86.i64 = v76;
        *&v86.i64[1] = v74;
        v87 = *&v75;
        LOBYTE(v88) = v70;
        *(&v88 + 1) = 0;
        HIDWORD(v88) = 0;
        v89 = *&v73;
        *&v90 = v72;
        *(&v90 + 1) = v71;
        v91 = 0u;
        v92 = 0u;
        v93 = 0;
        v48 = [v15 dispatchMotionEventWithState:buf timestamp:a3];
      }

      v49 = HIBYTE(v109);
      v50 = HIBYTE(v109) & 0xF;
      v51 = BYTE9(v109);
      v80 = BYTE10(v109);
      v52 = *(v15 + 901);
      v53 = v50 != v52;
      v12 = v77;
      if (v50 != v52)
      {
        v54 = sub_10A8(v48);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v50;
          _os_log_impl(&dword_0, v54, OS_LOG_TYPE_INFO, "(Right Trigger) Working Mode = %d", buf, 8u);
        }

        *(v15 + 901) = v50;
      }

      if ((v51 & 0xF) != *(v15 + 902))
      {
        v55 = sub_10A8(v48);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v51 & 0xF;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "(Right Trigger) Arm Position = %d", buf, 8u);
        }

        *(v15 + 902) = v51 & 0xF;
        v53 = 1;
      }

      v57 = v50 == 1 || v50 == 4;
      v58 = *(v15 + 903);
      if (v51 >> 4 != v58 || v50 == 4 || v50 == 1)
      {
        if ((v51 >> 4) != 1)
        {
          v57 = 0;
        }

        if (v57 && BYTE5(v108[0]) == 0)
        {
          v59 = 0;
        }

        else
        {
          v59 = v51 >> 4;
        }

        if (v58 != v59)
        {
          v60 = sub_10A8(v48);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = v59;
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "(Right Trigger) AD-T Control Status = %d", buf, 8u);
          }

          v53 = 1;
        }

        *(v15 + 903) = v59;
      }

      v61 = v49 >> 4;
      if (v49 >> 4 != *(v15 + 869))
      {
        v62 = sub_10A8(v48);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v49 >> 4;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "(Left Trigger) Working Mode = %d", buf, 8u);
        }

        *(v15 + 869) = v61;
        v53 = 1;
      }

      v63 = v80 & 0xF;
      if (v63 != *(v15 + 870))
      {
        v64 = sub_10A8(v48);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v80 & 0xF;
          _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "(Left Trigger) Arm Position = %d", buf, 8u);
        }

        *(v15 + 870) = v63;
        v53 = 1;
      }

      v65 = v80 >> 4;
      v67 = v61 == 1 || v61 == 4;
      v68 = *(v15 + 871);
      if (v65 != v68 || v61 == 4 || v61 == 1)
      {
        if ((v80 >> 4) != 1)
        {
          v67 = 0;
        }

        if (v67 && BYTE4(v108[0]) == 0)
        {
          LOBYTE(v65) = 0;
        }

        if (v68 == v65)
        {
          if (!v53)
          {
LABEL_88:
            objc_destroyWeak(&v84);

            goto LABEL_89;
          }

          LOBYTE(v65) = *(v15 + 871);
        }

        else
        {
          v69 = sub_10A8(v48);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = v65;
            _os_log_impl(&dword_0, v69, OS_LOG_TYPE_INFO, "(Left Trigger) AD-T Control Status = %d", buf, 8u);
          }

          *(v15 + 871) = v65;
          v63 = *(v15 + 870);
        }
      }

      else if (!v53)
      {
        goto LABEL_88;
      }

      [v15[126] updateAdaptiveTriggerStatusWithLeftMode:*(v15 + 848) leftStatus:v65 leftArmPosition:v63 rightMode:*(v15 + 880) rightStatus:*(v15 + 903) rightArmPosition:*(v15 + 902)];
      goto LABEL_88;
    }

    if (a5 == 1)
    {
      [v12 bytes];
      if (-[dispatch_once_t isBluetoothClassic](v14, "isBluetoothClassic") && [v12 length] == &dword_8 + 2)
      {
        v86.i8[0] = 0;
        *buf = 0;
        [v12 length];
        __memcpy_chk();
        LODWORD(v108[0]) = 0;
        *(v108 + 7) = 0;
        BYTE9(v108[0]) = 0;
        WORD2(v108[0]) = 0;
LABEL_17:
        if (-[dispatch_once_t isBluetoothClassic](v14, "isBluetoothClassic") && [v12 length] == &dword_8 + 2)
        {
          v110[2] = v110[2] & 0xFFF0 | 0xA;
        }

        goto LABEL_10;
      }

      if ((-[dispatch_once_t isBluetoothClassic](v14, "isBluetoothClassic") & 1) == 0 && [v12 length] == &stru_20.vmsize)
      {
        [v12 length];
        __memcpy_chk();
        goto LABEL_17;
      }
    }
  }

LABEL_89:
}

void sub_8854(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  if (v2)
  {
    v3 = dispatch_time(0, 2500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_8930;
    block[3] = &unk_18520;
    objc_copyWeak(&v5, (a1 + 40));
    dispatch_after(v3, v2, block);
    objc_destroyWeak(&v5);
  }

  else
  {
    *(*(a1 + 32) + 708) = 1;
  }
}

void sub_8930(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v3[708] = 1;
    [v3 sendBatteryReport];
  }
}

void sub_90E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = kdebug_trace();
  if (v2)
  {
    v4 = sub_10A8(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_BF88();
    }
  }
}

void sub_9150(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = kdebug_trace();
  if (v2)
  {
    v4 = sub_10A8(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_BFF8();
    }
  }
}

id sub_99F0(uint64_t a1)
{
  v2 = sub_10A8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 41);
    v5 = *(a1 + 42);
    v6 = *(a1 + 43);
    v7 = *(a1 + 44);
    v11[0] = 67110144;
    v11[1] = v3;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "setPlayerLights: %d%d%d%d%d", v11, 0x20u);
  }

  v8 = *(a1 + 32) + 1024;
  v9 = *(a1 + 44);
  *v8 = *(a1 + 40);
  *(v8 + 4) = v9;
  result = [*(a1 + 32) isHapticsActive];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) dispatchOutputReport];
  }

  return result;
}

id sub_A0D4(uint64_t a1)
{
  v2 = sub_10A8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 44);
    v5 = *(a1 + 48);
    v8 = 134218496;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "updateLightWithRed:%f green:%f blue:%f", &v8, 0x20u);
  }

  v6 = *(a1 + 32);
  if ((v6[1029] & 1) == 0)
  {
    [v6 setExtendedSupportEnabled:1];
    v6 = *(a1 + 32);
  }

  v6[722] = (*(a1 + 40) * 255.0);
  *(*(a1 + 32) + 723) = (*(a1 + 44) * 255.0);
  *(*(a1 + 32) + 724) = (*(a1 + 48) * 255.0);
  result = [*(a1 + 32) isHapticsActive];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) dispatchOutputReport];
  }

  return result;
}

void sub_A4C0(void *a1)
{
  v1 = a1;
  if (*(a1 + 40) == 1)
  {
    a1 = a1[4];
    if ((*(a1 + 1029) & 1) == 0)
    {
      a1 = [a1 setExtendedSupportEnabled:1];
    }
  }

  v2 = sub_10A8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 40);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "updateSensorsEnabled %d", v4, 8u);
  }

  *(v1[4] + 721) = *(v1 + 40);
}

void sub_AF44(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = 872;
  }

  else
  {
    if (v2)
    {
LABEL_6:

      [v3 setAdaptiveTriggerWithMode:0 enabledPositions:0 resistiveStrengths:0 frequency:0 forIndex:0];
      return;
    }

    v4 = 840;
  }

  if (*&v3[v4 + 8])
  {
    goto LABEL_6;
  }

  v5 = sub_10A8(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Received request to turn off adaptive trigger at index %d, but it is already off. Ignoring.", v7, 8u);
  }
}

BOOL sub_B190(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_B300(uint64_t a1, void *a2, int a3)
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

uint64_t sub_B3B0(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_B464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10A8(a1);
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

void sub_B548(uint64_t a1, void *a2)
{
  sub_6198(a1, a2);
  sub_6170([v3 type]);
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_6150();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_47DC;
  *(v2 + 24) = &unk_185F8;
  *(v2 + 32) = v5;
  sub_61C0(v3);
}

void sub_B5F8(uint64_t a1, void *a2)
{
  sub_6198(a1, a2);
  sub_6170([v3 type]);
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_6150();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_485C;
  *(v2 + 24) = &unk_185F8;
  *(v2 + 32) = v5;
  sub_61C0(v3);
}

void sub_B76C()
{
  sub_B1B4();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B7DC()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_B84C()
{
  sub_B1B4();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_B8BC()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_B92C()
{
  sub_B16C();
  v4 = sub_10A8(v3);
  if (sub_B190(v4))
  {
    v5 = (*v2 + v1);
    v12 = *v5;
    v13[0] = v5[1];
    *(v13 + 9) = *(v5 + 25);
    v6 = sub_74B4(&v12);
    sub_B1B4();
    sub_B150();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }
}

void sub_B9F8()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BA94()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BB30()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BBCC()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BC68()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BD04()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BDA0()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BE3C()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B178();
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_BF18()
{
  sub_B1B4();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_BF88()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_BFF8()
{
  sub_B1A8();
  sub_B184();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_C068(uint64_t a1)
{
  v2 = sub_10A8(a1);
  if (sub_B190(v2))
  {
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_C110(uint64_t a1)
{
  v2 = sub_10A8(a1);
  if (sub_B190(v2))
  {
    sub_B160();
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_C1A4(uint64_t a1)
{
  v2 = sub_10A8(a1);
  if (sub_B190(v2))
  {
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void sub_C23C(uint64_t a1)
{
  v2 = sub_10A8(a1);
  if (sub_B190(v2))
  {
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void sub_C2D4()
{
  sub_B16C();
  v2 = sub_10A8(v1);
  if (sub_B190(v2))
  {
    sub_B150();
    _os_log_impl(v3, v4, v5, v6, v7, 0x3Eu);
  }
}