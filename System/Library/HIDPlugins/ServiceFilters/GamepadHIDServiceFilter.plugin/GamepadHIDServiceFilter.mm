void sub_114C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = GamepadHIDServiceFilter;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);

  _Unwind_Resume(a1);
}

void sub_1350(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v2 - 32));

  _Unwind_Resume(a1);
}

void sub_1368(uint64_t a1)
{
  (*(*(*(a1 + 32) + 56) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

NSObject *sub_15C0(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2)
  {
    if ((a2[2] & 1) == 0)
    {
      v8 = v5;
LABEL_89:
      v6 = v8;
      v7 = v6;
      goto LABEL_90;
    }

    v9 = mach_absolute_time();
    v11 = sub_1DA0(v9);
    v12 = a2[2];
    v13 = (v12 & 6) != 0;
    if ((v12 & 0x18) != 0)
    {
      v13 = 2;
    }

    if ((v12 & 0x60) != 0)
    {
      v14 = 3;
    }

    else
    {
      v14 = v13;
    }

    if (v6)
    {
      v15 = [v6 integerValueForField:196610];
      v17 = sub_1DA0([v6 timestamp]);
      if (v15 && (*(a2 + 18) & 0xFE) == 2)
      {
        ++*(a2 + 10);
        *(a2 + 18) = 0;
        *(a2 + 8) = 0;
        *(a2 + 4) = 0;
        *(a2 + 5) = 0;
        *(a2 + 3) = 0;
        v18 = sub_34E0(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_3DC0();
        }
      }

      v19 = sub_1DFC(a2 + 2, v15 != 0, v14, v11, v17);
      v21 = v20;
      v22 = sub_34E0(v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *a2;
        v24 = *(a2 + 10);
        v25 = *(a2 + 18);
        v26 = *(a2 + 16);
        LODWORD(location) = 67110656;
        HIDWORD(location) = v23;
        v66 = 2048;
        v67 = v24;
        v68 = 2048;
        *v69 = v15;
        *&v69[8] = 1024;
        *&v69[10] = v14;
        *&v69[14] = 1024;
        *&v69[16] = v25;
        v70 = 1024;
        v71 = v26;
        v72 = 2048;
        v73 = v21;
        v27 = "-> [%#x] Press sequence [%zu] handle event (down: %zd, max:%d) -> State:%d Count:%d Next:%f";
        v28 = v22;
        v29 = 56;
LABEL_97:
        _os_log_debug_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, v27, &location, v29);
      }
    }

    else
    {
      v21 = 0.0;
      if (*(a2 + 18) == 1 && *(a2 + 16) && *(a2 + 4) != 0.0)
      {
        v30 = *(a2 + 5);
        if (v11 - v30 >= 0.4)
        {
          *(a2 + 18) = 3;
        }

        else
        {
          v21 = v30 + 0.4;
        }
      }

      v22 = sub_34E0(v10);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v56 = *a2;
        v57 = *(a2 + 10);
        v58 = *(a2 + 18);
        v59 = *(a2 + 16);
        LODWORD(location) = 67110144;
        HIDWORD(location) = v56;
        v66 = 2048;
        v67 = v57;
        v68 = 1024;
        *v69 = v58;
        *&v69[4] = 1024;
        *&v69[6] = v59;
        *&v69[10] = 2048;
        *&v69[12] = v21;
        v27 = "-> [%#x] Press sequence [%zu] handle tick -> State:%d Count:%d Next:%f";
        v28 = v22;
        v29 = 40;
        goto LABEL_97;
      }
    }

    v31 = *(a2 + 18);
    v32 = *(a2 + 16);
    v33 = *(a2 + 17);
    v34 = *(a2 + 6);
    if (v34)
    {
      dispatch_source_cancel(v34);
      v35 = *(a2 + 6);
      *(a2 + 6) = 0;
    }

    if (v31 == 1 && v21 > v11)
    {
      inited = objc_initWeak(&location, a1);
      v37 = sub_34E0(inited);
      v38 = v21 - v11;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_40B0();
      }

      v39 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 48));
      v40 = dispatch_time(0, (v38 * 1000000000.0));
      dispatch_source_set_timer(v39, v40, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
      v60 = _NSConcreteStackBlock;
      v61 = 3221225472;
      v62 = sub_1EA4;
      v63 = &unk_82E8;
      objc_copyWeak(v64, &location);
      v64[1] = a2;
      dispatch_source_set_event_handler(v39, &v60);
      dispatch_activate(v39);
      v41 = *(a2 + 6);
      *(a2 + 6) = v39;

      objc_destroyWeak(v64);
      objc_destroyWeak(&location);
    }

    else
    {
      if (v31 != 3)
      {
        goto LABEL_63;
      }

      switch(v32)
      {
        case 1u:
          v46 = a2[2];
          if (v33 == 1)
          {
            if ((v46 & 4) == 0)
            {
              goto LABEL_63;
            }

            v43 = sub_34E0(v34);
            v44 = 2;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_3EA8();
              v44 = 2;
            }
          }

          else
          {
            if ((v46 & 2) == 0)
            {
              goto LABEL_63;
            }

            v43 = sub_34E0(v34);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_3E40();
            }

            v44 = 1;
          }

          break;
        case 2u:
          v45 = a2[2];
          if (v33 == 1)
          {
            if ((v45 & 0x10) == 0)
            {
              goto LABEL_63;
            }

            v43 = sub_34E0(v34);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_3F78();
            }

            v44 = 4;
          }

          else
          {
            if ((v45 & 8) == 0)
            {
              goto LABEL_63;
            }

            v43 = sub_34E0(v34);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_3F10();
            }

            v44 = 3;
          }

          break;
        case 3u:
          v42 = a2[2];
          if (v33 == 1)
          {
            if ((v42 & 0x40) == 0)
            {
              goto LABEL_63;
            }

            v43 = sub_34E0(v34);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_4048();
            }

            v44 = 6;
          }

          else
          {
            if ((v42 & 0x20) == 0)
            {
              goto LABEL_63;
            }

            v43 = sub_34E0(v34);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_3FE0();
            }

            v44 = 5;
          }

          break;
        default:
          goto LABEL_63;
      }

      v34 = [*(a1 + 80) handleButton:*a2 gesture:v44];
    }

LABEL_63:
    if (!v6)
    {
      v8 = 0;
      goto LABEL_89;
    }

    v47 = a2[2];
    if ((v47 & 0x80) != 0)
    {
      if (v32 >= BYTE1(v47))
      {
        if ((v47 & 0x1000000) == 0)
        {
          goto LABEL_74;
        }

        v50 = (a2[2] & 6) != 0;
        if ((v47 & 0x18) != 0)
        {
          v50 = 2;
        }

        v51 = (v47 & 0x60) != 0 ? 3 : v50;
        if (v51 <= v32 && (v31 != 1 || v51 != v32 || !v51))
        {
LABEL_74:
          *(a2 + 64) = [v6 integerValueForField:196610, v60, v61, v62, v63]!= 0;
          v49 = [v6 timestamp];
          *(a2 + 9) = v49;
          if (*(a2 + 10))
          {
            v8 = [a1 updateGameControllerEvent:*(a1 + 88)];
          }

          else
          {
            v8 = v6;
          }

          v6 = sub_34E0(v49);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v53 = *a2;
            v54 = *(a2 + 10);
            v55 = *(a2 + 64);
            LODWORD(location) = 67109890;
            HIDWORD(location) = v53;
            v66 = 2048;
            v67 = v54;
            v68 = 1024;
            *v69 = v55;
            *&v69[4] = 2112;
            *&v69[6] = v8;
            _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "-> [%#x] Press sequence [%zu] pass event (down: %u)\n%@", &location, 0x22u);
          }

          goto LABEL_88;
        }

        v48 = sub_34E0(v34);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          sub_413C();
        }
      }

      else
      {
        v48 = sub_34E0(v34);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          sub_41A4();
        }
      }
    }

    else
    {
      v48 = sub_34E0(v34);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        sub_420C();
      }
    }

    v8 = 0;
LABEL_88:

    goto LABEL_89;
  }

LABEL_90:

  return v7;
}

double sub_1DA0(uint64_t a1)
{
  if (qword_D298 != -1)
  {
    sub_4274();
  }

  return (dword_D290 * a1 / *algn_D294) / 1000000000.0;
}

double *sub_1DFC(double *result, int a2, unsigned int a3, double a4, double a5)
{
  if (*(result + 2) <= 1u)
  {
    v5 = *result;
    if (v5 == 255)
    {
      goto LABEL_17;
    }

    if (v5 >= a3 && a2 != 0)
    {
      goto LABEL_17;
    }

    v7 = result[1];
    if (a2)
    {
      if (v7 == 0.0)
      {
        if (!*(result + 2))
        {
          *(result + 2) = 1;
        }

        result[1] = a5;
        result[2] = 0.0;
        result[3] = a4;
      }
    }

    else if (v7 != 0.0)
    {
      result[2] = a5;
      result[3] = a4;
      v8 = a5 - v7;
      if (v8 < 0.0)
      {
LABEL_17:
        *(result + 2) = 2;
        return result;
      }

      *(result + 1) = v8 >= 0.5;
      *result = v5 + 1;
    }
  }

  return result;
}

void sub_1EA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_15C0(WeakRetained, *(a1 + 40), 0);
  }
}

char *sub_2538(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 type] == 3)
    {
      v5 = [v4 integerValueForField:196608];
      v6 = [v4 integerValueForField:196609];
      if (v5 == &dword_C && v6 == &stru_1F8.size + 3)
      {
        v7 = 96;
      }

      else if (v5 == &dword_C && v6 == &stru_1F8.sectname[12])
      {
        v7 = 184;
      }

      else
      {
        if (v5 != &dword_C || v6 != &stru_1F8.segname[1])
        {
          goto LABEL_13;
        }

        v7 = 272;
      }

      v8 = sub_15C0(a1, &a1[v7], v4);

      v4 = v8;
    }

LABEL_13:
    v4 = v4;
    a1 = v4;
  }

  return a1;
}

id *sub_263C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 type] == 35)
    {
      v5 = [a1 updateGameControllerEvent:v4];

      objc_storeStrong(a1 + 11, v5);
      v4 = v5;
    }

    v4 = v4;
    a1 = v4;
  }

  return a1;
}

id sub_26DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 40) == 1 && ([v3 type] == 13 || objc_msgSend(v4, "type") == 20))
    {
      v5 = [[HIDEvent alloc] initWithType:1 timestamp:objc_msgSend(v4 senderID:{"timestamp"), *(a1 + 16)}];
      [v5 setIntegerValue:65280 forField:0x10000];
      [v5 setIntegerValue:59 forField:65537];
      [v5 setIntegerValue:1 forField:65538];
      if ([v4 type] == 13)
      {
        [v5 appendEvent:v4];
      }

      if ([v4 type] == 20)
      {
        [v4 doubleValueForField:1310720];
        v7 = v6;
        [v4 doubleValueForField:1310721];
        v9 = v8;
        [v4 doubleValueForField:1310722];
        v11 = v10;
        v12 = [[HIDEvent alloc] initWithType:20 timestamp:objc_msgSend(v4 senderID:{"timestamp"), *(a1 + 16)}];
        IOHIDEventSetEventFlags();
        [v12 setDoubleValue:1310720 forField:v7 * 3.14159265 / 180.0];
        [v12 setDoubleValue:1310721 forField:v9 * 3.14159265 / 180.0];
        [v12 setDoubleValue:1310722 forField:v11 * 3.14159265 / 180.0];
        [v5 appendEvent:v12];
      }

      WeakRetained = objc_loadWeakRetained((a1 + 64));

      if (WeakRetained)
      {
        v14 = objc_loadWeakRetained((a1 + 64));
        [v14 dispatchEvent:v5];
      }
    }

    v15 = v4;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_2E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2E64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_34E0(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_2F10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_34E0(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", buf, 2u);
  }

  v4 = dispatch_time(0, 500000000);
  v5 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3024;
  block[3] = &unk_82C0;
  v8 = WeakRetained;
  v6 = WeakRetained;
  dispatch_after(v4, v5, block);
}

void sub_3024(uint64_t a1)
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_30B4;
  activity_block[3] = &unk_82C0;
  v2 = *(a1 + 32);
  _os_activity_initiate(&dword_0, "Resume Connection To Game Controller Daemon", OS_ACTIVITY_FLAG_DETACHED, activity_block);
}

void sub_30B4(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteObjectProxy];
  [v1 driverCheckIn];
}

void sub_3204(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t sub_3220(uint64_t a1, uint64_t a2)
{
  if (qword_D2A8 != -1)
  {
    sub_4300();
  }

  return byte_D2A0;
}

id sub_3280(uint64_t a1)
{
  if (qword_D2B8 != -1)
  {
    sub_4314();
  }

  v2 = qword_D2B0;

  return v2;
}

void sub_32C4(id a1)
{
  qword_D2B0 = os_log_create("com.apple.GameController", "default");

  _objc_release_x1();
}

id sub_3308(uint64_t a1)
{
  if (qword_D2C8 != -1)
  {
    sub_4328();
  }

  v2 = qword_D2C0;

  return v2;
}

void sub_334C(id a1)
{
  qword_D2C0 = os_log_create("com.apple.GameController", "monitor");

  _objc_release_x1();
}

id sub_3390(uint64_t a1)
{
  if (qword_D2D8 != -1)
  {
    sub_433C();
  }

  v2 = qword_D2D0;

  return v2;
}

void sub_33D4(id a1)
{
  qword_D2D0 = os_log_create("com.apple.GameController", "analytics");

  _objc_release_x1();
}

id sub_3418(uint64_t a1)
{
  if (qword_D2E8 != -1)
  {
    sub_4350();
  }

  v2 = qword_D2E0;

  return v2;
}

void sub_345C(id a1)
{
  qword_D2E0 = os_log_create("com.apple.GameController.Daemon", "default");

  _objc_release_x1();
}

uint64_t sub_34A0(char *category)
{
  qword_D2F0 = os_log_create("com.apple.GameController.HID", category);

  return _objc_release_x1();
}

id sub_34E0(uint64_t a1)
{
  if (qword_D2F8 != -1)
  {
    sub_4364();
  }

  v2 = qword_D2F0;

  return v2;
}

void sub_3524(id a1)
{
  if (!qword_D2F0)
  {
    objc_storeStrong(&qword_D2F0, &_os_log_default);
  }
}

id sub_3548(uint64_t a1)
{
  if (qword_D308 != -1)
  {
    sub_4378();
  }

  v2 = qword_D300;

  return v2;
}

void sub_358C(id a1)
{
  qword_D300 = os_log_create("com.apple.GameController.Settings", "default");

  _objc_release_x1();
}

id sub_35D0(uint64_t a1)
{
  if (qword_D318 != -1)
  {
    sub_438C();
  }

  v2 = qword_D310;

  return v2;
}

void sub_3614(id a1)
{
  qword_D310 = os_log_create("com.apple.GameController.Haptics", "default");

  _objc_release_x1();
}

id sub_3658(uint64_t a1)
{
  if (qword_D328 != -1)
  {
    sub_43A0();
  }

  v2 = qword_D320;

  return v2;
}

void sub_369C(id a1)
{
  qword_D320 = os_log_create("com.apple.runtime-issues", "GameController");

  _objc_release_x1();
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
        v6 = &stru_8538;
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
  if (qword_D330 != -1)
  {
    sub_43B4();
  }

  return byte_D338;
}

void sub_3874(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  v2 = [v1 BOOLForKey:@"GCPartnersEnable"];
  byte_D338 = v2;
  v3 = sub_34E0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_D338;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v4, 8u);
  }
}

id sub_3A1C()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_39F4();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_3A08();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_397C();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_3990();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_3954();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_3968();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_39CC();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_39E0();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_36E0();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_36F4();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_3708();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_371C();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_39A4();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_39B8();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_3D44(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "-> [%#x] Apply configuration.", v3, 8u);
}

void sub_3E40()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] recognized 1x short press!", v2, v3, v4, v5);
}

void sub_3EA8()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] recognized 1x long press!", v2, v3, v4, v5);
}

void sub_3F10()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] recognized 2x short press!", v2, v3, v4, v5);
}

void sub_3F78()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] recognized 2x long press!", v2, v3, v4, v5);
}

void sub_3FE0()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] recognized 3x short press!", v2, v3, v4, v5);
}

void sub_4048()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] recognized 3x long press!", v2, v3, v4, v5);
}

void sub_40B0()
{
  sub_31F4(__stack_chk_guard);
  v4[0] = 67109632;
  v4[1] = v0;
  v5 = 2048;
  v6 = v1;
  v7 = 2048;
  v8 = v2;
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "-> [%#x] Press sequence [%zu] wakeup in %f seconds.", v4, 0x1Cu);
}

void sub_413C()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] not passing event: Pending gesture recognizer(s).", v2, v3, v4, v5);
}

void sub_41A4()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] not passing event: Press count threshold not met.", v2, v3, v4, v5);
}

void sub_420C()
{
  sub_31F4(__stack_chk_guard);
  sub_31DC();
  sub_3204(&dword_0, v0, v1, "-> [%#x] Press sequence [%zu] not passing event: Disabled.", v2, v3, v4, v5);
}

void sub_4288(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "connectToGameIntentServiceWithClient %@", &v2, 0xCu);
}