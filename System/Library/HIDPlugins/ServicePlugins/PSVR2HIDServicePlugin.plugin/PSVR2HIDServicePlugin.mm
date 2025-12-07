uint64_t sub_E60(uint64_t a1, uint64_t a2)
{
  if (qword_1B038 != -1)
  {
    sub_9F1C();
  }

  return byte_1B030;
}

id sub_EC0(uint64_t a1)
{
  if (qword_1B048 != -1)
  {
    sub_9F30();
  }

  v2 = qword_1B040;

  return v2;
}

void sub_F04(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_1B040;
  qword_1B040 = v1;
}

id sub_F48(uint64_t a1)
{
  if (qword_1B058 != -1)
  {
    sub_9F44();
  }

  v2 = qword_1B050;

  return v2;
}

void sub_F8C(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_1B050;
  qword_1B050 = v1;
}

id sub_FD0(uint64_t a1)
{
  if (qword_1B068 != -1)
  {
    sub_9F58();
  }

  v2 = qword_1B060;

  return v2;
}

void sub_1014(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_1B060;
  qword_1B060 = v1;
}

id sub_1058(uint64_t a1)
{
  if (qword_1B078 != -1)
  {
    sub_9F6C();
  }

  v2 = qword_1B070;

  return v2;
}

void sub_109C(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_1B070;
  qword_1B070 = v1;
}

void sub_10E0(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_1B080;
  qword_1B080 = v1;
}

id sub_1120(uint64_t a1)
{
  if (qword_1B088 != -1)
  {
    sub_9F80();
  }

  v2 = qword_1B080;

  return v2;
}

void sub_1164(id a1)
{
  if (!qword_1B080)
  {
    objc_storeStrong(&qword_1B080, &_os_log_default);
  }
}

id sub_1188(uint64_t a1)
{
  if (qword_1B098 != -1)
  {
    sub_9F94();
  }

  v2 = qword_1B090;

  return v2;
}

void sub_11CC(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_1B090;
  qword_1B090 = v1;
}

id sub_1210(uint64_t a1)
{
  if (qword_1B0A8 != -1)
  {
    sub_9FA8();
  }

  v2 = qword_1B0A0;

  return v2;
}

void sub_1254(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_1B0A0;
  qword_1B0A0 = v1;
}

id sub_1298(uint64_t a1)
{
  if (qword_1B0B8 != -1)
  {
    sub_9FBC();
  }

  v2 = qword_1B0B0;

  return v2;
}

void sub_12DC(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_1B0B0;
  qword_1B0B0 = v1;
}

NSObject *sub_1348(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
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

void sub_15C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1120(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_1690(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1120(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_1E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E3C(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_1120(v2);
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

BOOL sub_2234(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_15070] || (objc_msgSend(v5, "isEqual:", &off_15088) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_15070) || (objc_msgSend(v5, "isEqual:", &off_150A0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_15070) || (objc_msgSend(v5, "isEqual:", &off_15070) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_27E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = sub_1120(WeakRetained);
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

void sub_2A7C(uint64_t a1)
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

void sub_333C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_33E4;
  v7[3] = &unk_14708;
  v7[4] = v2;
  v4 = sub_1348(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_4898(uint64_t a1)
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
        v7[2] = sub_4988;
        v7[3] = &unk_14678;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_1348(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_4988(uint64_t a1)
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
      v4 = sub_1120(v2);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        if (v5)
        {
          sub_A3F8(v4);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v5)
        {
          sub_A3B4(v4);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_5068(unsigned int a1)
{

  return kdebug_trace();
}

id sub_5090(uint64_t a1, void *a2)
{

  return [a2 timestamp];
}

void sub_50B8(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
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
        v6 = &stru_14C18;
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
  if (qword_1B0D0 != -1)
  {
    sub_A43C();
  }

  return byte_1B0D8;
}

void sub_5DC0(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  v2 = [v1 BOOLForKey:@"GCPartnersEnable"];
  byte_1B0D8 = v2;
  v3 = sub_1120(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_1B0D8;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v4, 8u);
  }
}

void sub_6788(void *a1, int a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if (a3 == -536870400 && a4 && v7[6] == a2)
  {
    v9 = sub_1120(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Received request to disconnect device: %lx", &v10, 0xCu);
    }

    sub_A5A4(v8);
  }
}

void sub_6874(void *a1)
{
  v1 = a1;
  v2 = 5;
  v153 = 0u;
  v154 = 0u;
  __asm { FMOV            V11.2S, #1.0 }

  while (1)
  {
    NextSample = IOGCFastPathReaderReadNextSample();
    if (NextSample <= -536870169)
    {
      if (NextSample != -536870184 && NextSample != -536870169)
      {
        goto LABEL_203;
      }

      goto LABEL_13;
    }

    if (NextSample != -536870165)
    {
      break;
    }

LABEL_13:
    v14 = IOGCFastPathReaderReset();
    v15 = v14;
    v16 = sub_1120(v14);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v17)
      {
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "Input reader reset failed: %{mach.errno}d", buf, 8u);
      }
    }

    else if (v17)
    {
      sub_AF88(&v151, v152);
    }

    if (v2 < 2)
    {
      goto LABEL_206;
    }

LABEL_25:
    --v2;
  }

  if (!NextSample)
  {
    v150 = 0;
    v149 = 0;
    v148 = 0;
    SequenceID = IOGCFastPathSampleGetSequenceID();
    if (SequenceID)
    {
      v9 = SequenceID;
      v10 = sub_1120(SequenceID);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        v11 = v10;
        v12 = "Could not read sequence ID: %{mach.errno}d";
        goto LABEL_39;
      }

LABEL_22:

      if (v9 == -536870165 || v9 == -536870168)
      {
        v122 = IOGCFastPathReaderReset();
        if (v122)
        {
          v123 = sub_1120(v122);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
          {
            sub_AEEC();
          }
        }

        goto LABEL_206;
      }

LABEL_24:
      if (v2 <= 1)
      {
        goto LABEL_206;
      }

      goto LABEL_25;
    }

    Flags = IOGCFastPathSampleGetFlags();
    if (Flags)
    {
      v9 = Flags;
      v10 = sub_1120(Flags);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 67109120;
      *&buf[4] = v9;
      v11 = v10;
      v12 = "Could not read flags: %{mach.errno}d";
LABEL_39:
      _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, v12, buf, 8u);
      goto LABEL_22;
    }

    if ((v149 & 1) == 0)
    {
      v19 = sub_1120(Flags);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_AF5C(&v146, v147);
      }

      goto LABEL_24;
    }

    Timestamp = IOGCFastPathSampleGetTimestamp();
    if (Timestamp)
    {
      v9 = Timestamp;
      v10 = sub_1120(Timestamp);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 67109120;
      *&buf[4] = v9;
      v11 = v10;
      v12 = "Could not read timestamp: %{mach.errno}d";
      goto LABEL_39;
    }

    kdebug_trace();
    v21 = v148;
    v22 = v1;
    v23 = v22;
    v24 = v1[104];
    if (v24 != 2)
    {
      if (v24 != 1)
      {
        goto LABEL_83;
      }

      v145 = v22;
      v160 = 0;
      v161 = 0;
      v158 = 0;
      v159 = 0;
      v156 = 0.0;
      v157 = -2;
      v155 = 0;
      Integer = IOGCFastPathSampleGetInteger();
      if (Integer)
      {
        v26 = Integer;
        sub_1120(Integer);
        *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

LABEL_82:

LABEL_83:
        v52 = v150;
        v53 = v148;
        v54 = v23;
        v55 = IOGCFastPathSampleGet3Double();
        if (v55)
        {
          v56 = v55;
          v57 = sub_1120(v55);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
LABEL_88:
            v187.i32[0] = 67109120;
            v187.i32[1] = v56;
            _os_log_error_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "Failed to get acceleration: %{mach.errno}d", &v187, 8u);
          }
        }

        else
        {
          v58 = IOGCFastPathSampleGet3Double();
          if (v58)
          {
            v56 = v58;
            v57 = sub_1120(v58);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_88;
            }
          }

          else
          {
            v57 = [[HIDEvent alloc] initWithType:1 timestamp:v53 senderID:*(v1 + 4)];
            [v57 setIntegerValue:65280 forField:0x10000];
            [v57 setIntegerValue:59 forField:65537];
            [v57 setIntegerValue:1 forField:65538];
            v59 = [[HIDEvent alloc] initWithType:13 timestamp:v53 senderID:*(v1 + 4)];
            IOHIDEventSetEventFlags();
            [v59 setDoubleValue:851968 forField:*buf];
            [v59 setDoubleValue:851969 forField:*&buf[8]];
            [v59 setDoubleValue:851970 forField:*&v163];
            [v59 setIntegerValue:v52 forField:851973];
            IOHIDEventAppendEvent();
            v60 = [[HIDEvent alloc] initWithType:20 timestamp:v53 senderID:*(v1 + 4)];
            IOHIDEventSetEventFlags();
            [v60 setDoubleValue:1310720 forField:v182];
            [v60 setDoubleValue:1310721 forField:v183];
            [v60 setDoubleValue:1310722 forField:v184];
            [v60 setIntegerValue:v52 forField:1310725];
            IOHIDEventAppendEvent();
            [v54 dispatchEvent:v57];
          }
        }

        v61 = v54;
        *buf = 0;
        v182 = 0.0;
        v62 = IOGCFastPathSampleGetInteger();
        if (v62)
        {
          v63 = v62;
          v64 = sub_1120(v62);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v187.i32[0] = 67109120;
            v187.i32[1] = v63;
            v65 = v64;
            v66 = "Failed to get power charge status: %{mach.errno}d";
            goto LABEL_101;
          }

          goto LABEL_95;
        }

        Double = IOGCFastPathSampleGetDouble();
        if (Double)
        {
          v68 = Double;
          v64 = sub_1120(Double);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v187.i32[0] = 67109120;
            v187.i32[1] = v68;
            v65 = v64;
            v66 = "Failed to get power battery level: %{mach.errno}d";
LABEL_101:
            _os_log_error_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, v66, &v187, 8u);
          }

LABEL_95:
        }

        else
        {
          v69 = *buf - 1;
          v70 = (*buf - 1) < 2;
          v71 = v182;
          if (v1[496] != v70 || v182 != *(v1 + 61))
          {
            *(v1 + 61) = v182;
            v1[496] = v70;
            [*(v1 + 16) updateBattery:(v71 * 100.0) isCharging:v69 < 2];
          }
        }

        kdebug_trace();
        goto LABEL_24;
      }

      v31 = IOGCFastPathSampleGetInteger();
      if (v31)
      {
        v32 = v31;
        sub_1120(v31);
        *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_45;
      }

      v34 = IOGCFastPathSampleGetInteger();
      if (v34)
      {
        v35 = v34;
        sub_1120(v34);
        *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_51;
      }

      v37 = IOGCFastPathSampleGetInteger();
      if (v37)
      {
        v38 = v37;
        sub_1120(v37);
        *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_57;
      }

      v144 = v21;
      v40 = IOGCFastPathSampleGetInteger();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1120(v40);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v41;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "Failed to get trigger press (raw): %{mach.errno}d", buf, 8u);
        }
      }

      v43 = IOGCFastPathSampleGetDouble();
      if (v43)
      {
        v44 = v43;
        sub_1120(v43);
        *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_67;
      }

      v49 = IOGCFastPathSampleGet2Double();
      if (v49)
      {
        v50 = v49;
        sub_1120(v49);
        *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      v72 = IOGCFastPathSampleGetInteger();
      if (v72)
      {
        v73 = v72;
        sub_1120(v72);
        *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_82;
        }

        goto LABEL_197;
      }

      v75 = v155 < 1;
      v76 = *(v1 + 86);
      if (v156 <= 0.0 || v76 > 0.0)
      {
        if (v156 > 0.0 || v76 <= 0.0)
        {
          if (v156 > 0.0)
          {
            kdebug_trace();
          }
        }

        else
        {
          kdebug_trace();
          v78 = *(v1 + 60);
          *(v1 + 60) = 0;
LABEL_119:
        }
      }

      else
      {
        kdebug_trace();
        if (os_variant_has_internal_diagnostics())
        {
          v77 = _os_activity_create(&dword_0, "[PSVR2 (L)] Trigger press", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
          v78 = *(v1 + 60);
          *(v1 + 60) = v77;
          goto LABEL_119;
        }
      }

      v143 = v75 << 15;
      if ((v160 & 0x10) != 0)
      {
        v83 = 1.0;
      }

      else
      {
        v83 = 0.0;
      }

      v127 = v160;
      if ((v160 & 0x40) != 0)
      {
        v85 = 1.0;
      }

      else
      {
        v85 = 0.0;
      }

      v84 = v156;
      v139 = v84;
      v141 = v85;
      if ((v161 & 4) != 0)
      {
        v86 = 1.0;
      }

      else
      {
        v86 = 0.0;
      }

      if ((v161 & 8) != 0)
      {
        v87 = 1.0;
      }

      else
      {
        v87 = 0.0;
      }

      v135 = v87;
      v137 = v86;
      if ((v161 & 0x10) != 0)
      {
        v88 = 1.0;
      }

      else
      {
        v88 = 0.0;
      }

      if ((v161 & 0x20) != 0)
      {
        v89 = 1.0;
      }

      else
      {
        v89 = 0.0;
      }

      v131 = v89;
      v133 = v88;
      if ((v161 & 0x40) != 0)
      {
        v90 = 1.0;
      }

      else
      {
        v90 = 0.0;
      }

      v129 = v90;
      v91 = vextq_s8(v187, v187, 8uLL);
      v92 = fmax(*&v187.i64[1], 0.0);
      v93 = vcvt_f32_f64(vandq_s8(vnegq_f64(v91), vcltzq_f64(v91)));
      v94 = fmax(*v187.i64, 0.0);
      [v145 dispatchMenuButtonEventWithValue:(v160 >> 7) & 1 timestamp:v144];
      [v145 dispatchHomeButtonEventWithValue:(v160 >> 8) & 1 timestamp:v144];
      [v145 createEvent:14 timestamp:v144];
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [v27 setOptions:[v27 options]| 1];
      [v27 setIntegerValue:0 forField:917506];
      if ((v161 & 4) != 0)
      {
        v95 = 7200;
      }

      else
      {
        v95 = 7168;
      }

      [v27 setIntegerValue:v95 forField:917504];
      v182 = *&v27;
      [v145 createEvent:14 timestamp:v144];
      v96 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v126 = v96;
      [*&v96 setOptions:{objc_msgSend(*&v96, "options") | 1}];
      [*&v96 setIntegerValue:0 forField:917506];
      if ((v161 & 8) != 0)
      {
        v97 = 8224;
      }

      else
      {
        v97 = 0x2000;
      }

      [*&v96 setIntegerValue:v97 forField:917504];
      v183 = v96;
      [v145 createEvent:14 timestamp:v144];
      v98 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v125 = v98;
      [*&v98 setOptions:{objc_msgSend(*&v98, "options") | 1}];
      [*&v98 setIntegerValue:0 forField:917506];
      if ((v161 & 0x40) != 0)
      {
        v99 = 17440;
      }

      else
      {
        v99 = 17408;
      }

      [*&v98 setIntegerValue:v99 forField:917504];
      v184 = v98;
      v100 = [v145 createEvent:14 timestamp:v144];
      [v100 setOptions:{objc_msgSend(v100, "options") | 1}];
      [v100 setIntegerValue:0 forField:917506];
      if ((v161 & 0x10) != 0)
      {
        v101 = 9264;
      }

      else
      {
        v101 = 9232;
      }

      [v100 setIntegerValue:v101 forField:917504];
      [v100 setIntegerValue:v159 forField:?];
      v185 = v100;
      v102 = [v145 createEvent:14 timestamp:v144];
      [v102 setOptions:{objc_msgSend(v102, "options") | 1}];
      [v102 setIntegerValue:0 forField:917506];
      [v102 setIntegerValue:v161 & 0x20 | 0x2C10 forField:917504];
      [v102 setIntegerValue:v158 forField:917505];
      v186 = v102;
      v103 = [NSArray arrayWithObjects:&v182 count:5];
      *buf = 0u;
      v163 = 0u;
      v164 = vbic_s8(_D11, vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s64(v127), xmmword_11290))));
      v165 = v83;
      v166 = 0.0;
      *(&v167 + 4) = v93;
      *&v167 = v92;
      *(&v167 + 3) = v94;
      v168 = 0u;
      v169 = v139;
      v170 = 0.0;
      *v172 = 0u;
      v171 = v141;
      *&v172[16] = v137;
      v173 = 0.0;
      v174 = v135;
      v175 = 0.0;
      v176 = v133;
      v177 = 0.0;
      v178 = v131;
      v179 = 0.0;
      v180 = v129;
      memset(v181, 0, sizeof(v181));
LABEL_192:
      [v145 dispatchGameControllerExtendedEventWithState:buf timestamp:v144 options:v143 children:v103];

      goto LABEL_82;
    }

    v145 = v22;
    v160 = 0;
    v161 = 0;
    v158 = 0;
    v159 = 0;
    v156 = 0.0;
    v157 = -2;
    v155 = 0;
    v30 = IOGCFastPathSampleGetInteger();
    if (v30)
    {
      v26 = v30;
      sub_1120(v30);
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_37:
      *buf = 67109120;
      *&buf[4] = v26;
      v28 = v27;
      v29 = "Failed to get button touch state: %{mach.errno}d";
      goto LABEL_81;
    }

    v33 = IOGCFastPathSampleGetInteger();
    if (v33)
    {
      v32 = v33;
      sub_1120(v33);
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_45:
      *buf = 67109120;
      *&buf[4] = v32;
      v28 = v27;
      v29 = "Failed to get button press state: %{mach.errno}d";
      goto LABEL_81;
    }

    v36 = IOGCFastPathSampleGetInteger();
    if (v36)
    {
      v35 = v36;
      sub_1120(v36);
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_51:
      *buf = 67109120;
      *&buf[4] = v35;
      v28 = v27;
      v29 = "Failed to get grip proximity: %{mach.errno}d";
      goto LABEL_81;
    }

    v39 = IOGCFastPathSampleGetInteger();
    if (v39)
    {
      v38 = v39;
      sub_1120(v39);
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_57:
      *buf = 67109120;
      *&buf[4] = v38;
      v28 = v27;
      v29 = "Failed to get trigger proximity: %{mach.errno}d";
      goto LABEL_81;
    }

    v144 = v21;
    v45 = IOGCFastPathSampleGetInteger();
    if (v45)
    {
      v46 = v45;
      v47 = sub_1120(v45);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v46;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "Failed to get trigger press (raw): %{mach.errno}d", buf, 8u);
      }
    }

    v48 = IOGCFastPathSampleGetDouble();
    if (v48)
    {
      v44 = v48;
      sub_1120(v48);
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_67:
      *buf = 67109120;
      *&buf[4] = v44;
      v28 = v27;
      v29 = "Failed to get trigger press: %{mach.errno}d";
      goto LABEL_81;
    }

    v51 = IOGCFastPathSampleGet2Double();
    if (v51)
    {
      v50 = v51;
      sub_1120(v51);
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_80:
      *buf = 67109120;
      *&buf[4] = v50;
      v28 = v27;
      v29 = "Failed to get thumbstick position: %{mach.errno}d";
      goto LABEL_81;
    }

    v74 = IOGCFastPathSampleGetInteger();
    if (v74)
    {
      v73 = v74;
      sub_1120(v74);
      *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

LABEL_197:
      *buf = 67109120;
      *&buf[4] = v73;
      v28 = v27;
      v29 = "Failed to get held state: %{mach.errno}d";
LABEL_81:
      _os_log_error_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, v29, buf, 8u);
      goto LABEL_82;
    }

    v79 = v155 == 0;
    v80 = *(v1 + 87);
    if (v156 <= 0.0 || v80 > 0.0)
    {
      if (v156 > 0.0 || v80 <= 0.0)
      {
        if (v156 > 0.0)
        {
          kdebug_trace();
        }
      }

      else
      {
        kdebug_trace();
        v82 = *(v1 + 60);
        *(v1 + 60) = 0;
LABEL_157:
      }
    }

    else
    {
      kdebug_trace();
      if (os_variant_has_internal_diagnostics())
      {
        v81 = _os_activity_create(&dword_0, "[PSVR2 (R)] Trigger press", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
        v82 = *(v1 + 60);
        *(v1 + 60) = v81;
        goto LABEL_157;
      }
    }

    v143 = v79 << 15;
    if ((v160 & 0x10) != 0)
    {
      v104 = 1.0;
    }

    else
    {
      v104 = 0.0;
    }

    v128 = v160;
    if ((v160 & 0x40) != 0)
    {
      v106 = 1.0;
    }

    else
    {
      v106 = 0.0;
    }

    v105 = v156;
    v140 = v105;
    v142 = v106;
    if (v161)
    {
      v107 = 1.0;
    }

    else
    {
      v107 = 0.0;
    }

    if ((v161 & 2) != 0)
    {
      v108 = 1.0;
    }

    else
    {
      v108 = 0.0;
    }

    v136 = v108;
    v138 = v107;
    if ((v161 & 0x10) != 0)
    {
      v109 = 1.0;
    }

    else
    {
      v109 = 0.0;
    }

    if ((v161 & 0x20) != 0)
    {
      v110 = 1.0;
    }

    else
    {
      v110 = 0.0;
    }

    v132 = v110;
    v134 = v109;
    if ((v161 & 0x40) != 0)
    {
      v111 = 1.0;
    }

    else
    {
      v111 = 0.0;
    }

    v130 = v111;
    v112 = vextq_s8(v187, v187, 8uLL);
    v113 = fmax(*&v187.i64[1], 0.0);
    v114 = vcvt_f32_f64(vandq_s8(vnegq_f64(v112), vcltzq_f64(v112)));
    v115 = fmax(*v187.i64, 0.0);
    [v145 dispatchMenuButtonEventWithValue:(v160 >> 7) & 1 timestamp:v144];
    [v145 dispatchHomeButtonEventWithValue:(v160 >> 8) & 1 timestamp:v144];
    [v145 createEvent:14 timestamp:v144];
    *&v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [v27 setOptions:[v27 options]| 1];
    [v27 setIntegerValue:0 forField:917506];
    if (v161)
    {
      v116 = 5152;
    }

    else
    {
      v116 = 5120;
    }

    [v27 setIntegerValue:v116 forField:917504];
    v182 = *&v27;
    [v145 createEvent:14 timestamp:v144];
    v117 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v126 = v117;
    [*&v117 setOptions:{objc_msgSend(*&v117, "options") | 1}];
    [*&v117 setIntegerValue:0 forField:917506];
    if ((v161 & 2) != 0)
    {
      v118 = 6176;
    }

    else
    {
      v118 = 6144;
    }

    [*&v117 setIntegerValue:v118 forField:917504];
    v183 = v117;
    [v145 createEvent:14 timestamp:v144];
    v119 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v125 = v119;
    [*&v119 setOptions:{objc_msgSend(*&v119, "options") | 1}];
    [*&v119 setIntegerValue:0 forField:917506];
    if ((v161 & 0x40) != 0)
    {
      v120 = 18464;
    }

    else
    {
      v120 = 18432;
    }

    [*&v119 setIntegerValue:v120 forField:917504];
    v184 = v119;
    v100 = [v145 createEvent:14 timestamp:v144];
    [v100 setOptions:{objc_msgSend(v100, "options") | 1}];
    [v100 setIntegerValue:0 forField:917506];
    if ((v161 & 0x10) != 0)
    {
      v121 = 10288;
    }

    else
    {
      v121 = 10256;
    }

    [v100 setIntegerValue:v121 forField:917504];
    [v100 setIntegerValue:v159 forField:?];
    v185 = v100;
    v102 = [v145 createEvent:14 timestamp:v144];
    [v102 setOptions:{objc_msgSend(v102, "options") | 1}];
    [v102 setIntegerValue:0 forField:917506];
    [v102 setIntegerValue:v161 & 0x20 | 0x3010 forField:917504];
    [v102 setIntegerValue:v158 forField:917505];
    v186 = v102;
    v103 = [NSArray arrayWithObjects:&v182 count:5];
    *&v163 = 0;
    *buf = 0u;
    *(&v163 + 1) = vbic_s8(_D11, vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s64(v128), xmmword_11280))));
    v164 = 0;
    v165 = 0.0;
    v167 = 0u;
    v166 = v104;
    *&v168 = v113;
    *(&v168 + 4) = v114;
    *(&v168 + 3) = v115;
    v169 = 0.0;
    v170 = v140;
    v171 = 0.0;
    *&v172[4] = 0u;
    *v172 = v142;
    v173 = v138;
    v174 = 0.0;
    v175 = v136;
    v176 = 0.0;
    v177 = v134;
    v178 = 0.0;
    v179 = v132;
    v180 = 0.0;
    *v181 = v130;
    memset(&v181[1], 0, 52);
    goto LABEL_192;
  }

  if (NextSample == -536870168)
  {
    goto LABEL_206;
  }

LABEL_203:
  v124 = sub_1120(NextSample);
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
  {
    sub_AFB4();
  }

LABEL_206:
  IOGCFastPathSampleDestory();
}

void sub_8048(uint64_t a1)
{
  v2 = _os_activity_create(&dword_0, "Finish", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v2, &v6);
  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;
  }

  IOGCFastPathClientClose();
  os_activity_scope_leave(&v6);
}

void sub_97AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_97DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1120(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_9874(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_1120(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", buf, 2u);
  }

  v4 = dispatch_time(0, 500000000);
  v5 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9978;
  block[3] = &unk_14708;
  v8 = WeakRetained;
  v6 = WeakRetained;
  dispatch_after(v4, v5, block);
}

void sub_9978(uint64_t a1)
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_9A08;
  activity_block[3] = &unk_14708;
  v2 = *(a1 + 32);
  _os_activity_initiate(&dword_0, "Resume Connection To Game Controller Daemon", OS_ACTIVITY_FLAG_DETACHED, activity_block);
}

void sub_9A08(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteObjectProxy];
  [v1 driverCheckIn];
}

_BYTE *sub_9B04(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_9B14(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id sub_9BCC()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_E38();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_E4C();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_9BA4();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_9BB8();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_5EA0();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_5EB4();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_9B54();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_9B68();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_9B7C();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_9B90();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_9EF4();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_9F08();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_1320();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_1334();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_9FD0(uint64_t a1, void *a2, int a3)
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

uint64_t sub_A080(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_A134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1120(a1);
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

void sub_A218(uint64_t a1, void *a2)
{
  sub_5090(a1, a2);
  sub_5068([v3 type]);
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_5048();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_36D4;
  *(v2 + 24) = &unk_14750;
  *(v2 + 32) = v5;
  sub_50B8(v3);
}

void sub_A2C8(uint64_t a1, void *a2)
{
  sub_5090(a1, a2);
  sub_5068([v3 type]);
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_5048();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_3754;
  *(v2 + 24) = &unk_14750;
  *(v2 + 32) = v5;
  sub_50B8(v3);
}

uint64_t sub_A450(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 3758097097;
  size = -3;
  address = 0;
  errorString = 0;
  v5 = IOCFSerialize(*a2, 0);
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v6);
    v10 = IOConnectCallMethod(v7, 1u, 0, 0, BytePtr, Length, 0, 0, &address, &size);
    if (v10)
    {
      v11 = 0;
      v4 = v10;
    }

    else
    {
      v11 = IOCFUnserializeBinary(address, size, kCFAllocatorDefault, 0, &errorString);
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(a2, v11);
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (address)
  {
    mach_vm_deallocate(mach_task_self_, address, size);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

void sub_A5A4(uint64_t a1)
{
  if (a1)
  {
    v2 = IORegistryEntrySearchCFProperty(*(a1 + 24), "IOService", @"SerialNumber", kCFAllocatorDefault, 3u);
    [*(a1 + 120) requestIdleDisconnect:v2];
  }
}

uint64_t sub_A620(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    size = -3;
    address = 0;
    errorString = 0;
    if (!v5)
    {
      v6 = &__NSArray0__struct;
    }

    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v6;
    v8 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = +[NSNull null];
          [v7 setObject:v13 forKey:v12];
        }

        v9 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v9);
    }

    v14 = 3758097097;

    v15 = IOCFSerialize(v7, 0);
    v16 = v15;
    if (v15)
    {
      v17 = *(a1 + 40);
      BytePtr = CFDataGetBytePtr(v15);
      Length = CFDataGetLength(v16);
      v20 = IOConnectCallMethod(v17, 0, 0, 0, BytePtr, Length, 0, 0, &address, &size);
      if (v20)
      {
        v21 = 0;
        v14 = v20;
      }

      else
      {
        v21 = IOCFUnserializeBinary(address, size, kCFAllocatorDefault, 0, &errorString);
        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(a3, v21);
            v14 = 0;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    if (address)
    {
      mach_vm_deallocate(mach_task_self_, address, size);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_A8A4(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (a1)
  {
    [v6 timestamp];
    [v6 type];
    kdebug_trace();
    if (a3)
    {
      *(a1 + 136) = [v6 timestamp];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [WeakRetained dispatchEvent:v6];
  }
}

void sub_A96C()
{
  sub_9AF8();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_A9DC()
{
  sub_9AF8();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_AA4C()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AA88()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AAC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = sub_1120(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to set 'Power' configuration: %{mach.errno}d", v7, 8u);
  }

  *a3 = *a2;
}

void sub_AB84(void *a1)
{
  v2 = sub_1120(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v7 = [a1 objectForKeyedSubscript:@"Power.Disconnect.OnBattery.NotHeldAfterTime"];
    sub_9AEC();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0xCu);
  }
}

void sub_AC44(uint64_t a1)
{
  v1 = sub_1120(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_9AEC();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 8u);
  }
}

void sub_ACEC()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AD28()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_AD64()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_ADA0()
{
  sub_9AE0();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_ADDC(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_9AEC();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 8u);
  }
}

void sub_AE7C()
{
  sub_9AF8();
  sub_9AD4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_AEEC()
{
  sub_9AF8();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_AFB4()
{
  sub_9AF8();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_B024(uint64_t a1)
{
  v1 = sub_1120(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_9AEC();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
  }
}

void sub_B0C8(uint64_t a1)
{
  v1 = sub_1120(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_9AEC();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
  }
}

void sub_B184(void *a1, NSObject **a2)
{
  v4 = sub_1120(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    [a1 unsignedIntValue];
    sub_9AF8();
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "setProperty failed: %{mach.errno}d", v5, 8u);
  }

  *a2 = v4;
}

void sub_B264()
{
  sub_9AE0();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_B2A0(uint64_t a1)
{
  v1 = sub_1120(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_9AEC();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 8u);
  }
}

void sub_B344()
{
  sub_9AE0();
  sub_9B30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}