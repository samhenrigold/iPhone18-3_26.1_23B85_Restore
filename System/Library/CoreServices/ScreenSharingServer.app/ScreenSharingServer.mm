void sub_10000320C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 count] != 1)
  {
    v12 = sub_1000423E0();
    if (v12)
    {
      v13 = sub_100042E68(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 description];
        *buf = 136315906;
        v20 = "[NWConnectionManager startRead:]_block_invoke";
        v21 = 1024;
        v22 = 190;
        v23 = 2080;
        v24 = [v14 UTF8String];
        v25 = 2048;
        v26 = [v5 count];
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d]  read failed with error %s, , datagrams count %lu ", buf, 0x26u);
      }
    }

    v11 = [v6 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 190, "-[NWConnectionManager startRead:]_block_invoke", 7, 0, " read failed with error %s, , datagrams count %lu ", [v11 UTF8String], objc_msgSend(v5, "count"));
  }

  else
  {
    v7 = v5;
    v8 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000342C;
    block[3] = &unk_100068B18;
    v16 = v7;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v17 = v9;
    v18 = v10;
    dispatch_async(v8, block);

    v11 = v16;
  }
}

void sub_10000342C(uint64_t a1)
{
  v4 = [*(a1 + 32) objectAtIndex:0];
  v2 = *(a1 + 40);
  v3 = v4;
  [v2 handleIncomingData:objc_msgSend(v4 dataSize:{"bytes"), objc_msgSend(v4, "length")}];
  if (([*(a1 + 48) stopConnection] & 1) == 0)
  {
    [*(a1 + 48) startRead:*(a1 + 40)];
  }
}

void sub_1000036C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 description];
        *buf = 136315650;
        v9 = "[NWConnectionManager writeData:size:]_block_invoke";
        v10 = 1024;
        v11 = 234;
        v12 = 2080;
        v13 = [v6 UTF8String];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] error when writing %s", buf, 0x1Cu);
      }
    }

    v7 = [v3 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/NWConnectionManager.m", 98, 234, "-[NWConnectionManager writeData:size:]_block_invoke", 7, 0, "error when writing %s", [v7 UTF8String]);
  }

  [*(a1 + 32) removeAllObjects];
  dispatch_semaphore_signal(*(*(a1 + 40) + 16));
}

uint64_t sub_1000038DC(void *(__cdecl *a1)(void *), void *a2, pthread_t *a3)
{
  memset(&v17, 0, sizeof(v17));
  v10 = 0;
  pthread_attr_init(&v17);
  pthread_attr_setdetachstate(&v17, 2);
  v6 = pthread_create(&v10, &v17, a1, a2);
  pthread_attr_destroy(&v17);
  if (v6)
  {
    v7 = sub_1000423E0();
    if (v7)
    {
      v8 = sub_100042E68(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v12 = "RDCreateTask";
        v13 = 1024;
        v14 = 29;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%s:%d] error from pthread_create: %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/common/RDThread.c", 84, 29, "RDCreateTask", 3, 0, "error from pthread_create: %d", v6);
  }

  else if (a3)
  {
    *a3 = v10;
  }

  return v6;
}

uint64_t sub_100003A3C(char *a1, uint64_t a2)
{
  LODWORD(v2) = a2;
  v4 = dword_1000707C0;
  if (!dword_1000707C0)
  {
    v4 = open("/dev/random", 0);
    dword_1000707C0 = v4;
    if (v4 != -1)
    {
      goto LABEL_8;
    }

    v4 = open("/dev/urandom", 0);
    dword_1000707C0 = v4;
  }

  if (v4 == -1)
  {
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "AuthGetRandomBytes";
        v17 = 1024;
        v18 = 40;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%s:%d] FATAL ERROR - unable to open /dev/random", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/AuthRandom.c", 89, 40, "AuthGetRandomBytes", 3, 0, "FATAL ERROR - unable to open /dev/random");
    goto LABEL_19;
  }

LABEL_8:
  if (v2)
  {
    v7 = v2;
    v8 = a1;
    while (1)
    {
      v9 = read(v4, v8, v7);
      if (v9 < 0)
      {
        break;
      }

      v2 = (v2 - v9);
      if (!v2)
      {
        return 0;
      }

      a1 += v9;
      usleep(0xF4240u);
      v4 = dword_1000707C0;
      v8 = a1;
      v7 = v2;
    }

    v11 = v9;
    v12 = sub_1000423E0();
    if (v12)
    {
      v13 = sub_100042E68(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *__error();
        *buf = 136315906;
        v16 = "AuthGetRandomBytes";
        v17 = 1024;
        v18 = 51;
        v19 = 2048;
        v20 = v11;
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%s:%d] FATAL ERROR - read returned %zd  errno %d", buf, 0x22u);
      }
    }

    __error();
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/AuthRandom.c", 89, 51, "AuthGetRandomBytes", 3, 0, "FATAL ERROR - read returned %zd  errno %d", v11);
LABEL_19:
    exit(1);
  }

  return 0;
}

uint64_t sub_100003D18(uint64_t a1)
{
  qword_1000707C8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000427C(id a1)
{
  v1 = +[TouchEventMonitor sharedTouchEventMonitor];
  v2 = [v1 hidEventClient];

  if (v2)
  {
    +[TouchEventMonitor sharedTouchEventMonitor];
    IOHIDEventSystemClientUnregisterEventFilterCallback();
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    v3 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v3 setMonitoringEvents:0];

    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke";
        v10 = 1024;
        v11 = 82;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] no longer monitoring touch events", &v8, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 82, "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke", 7, 0, "no longer monitoring touch events");
  }

  else
  {
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke";
        v10 = 1024;
        v11 = 85;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] no HID event client", &v8, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 85, "+[TouchEventMonitor stopMonitoringTouchEvents]_block_invoke", 7, 0, "no HID event client");
  }
}

void sub_100004910(id a1)
{
  v1 = +[TouchEventMonitor sharedTouchEventMonitor];
  v2 = [v1 hidEventClient];

  if (v2)
  {
    CFRunLoopGetCurrent();
    IOHIDEventSystemClientScheduleWithRunLoop();
    +[TouchEventMonitor sharedTouchEventMonitor];
    IOHIDEventSystemClientRegisterEventFilterCallback();
    v3 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v3 setMonitoringEvents:1];

    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke";
        v10 = 1024;
        v11 = 117;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] monitoring touch events", &v8, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 117, "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke", 7, 0, "monitoring touch events");
  }

  else
  {
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke";
        v10 = 1024;
        v11 = 120;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] no HID event client", &v8, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 120, "+[TouchEventMonitor startMonitoringTouchEvents]_block_invoke", 7, 0, "no HID event client");
  }
}

void sub_100004B1C(id a1)
{
  if (byte_1000707D8 == 1)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"TouchEventUpdate" object:0];
  }
}

CFIndex sub_100004D80(uint64_t a1)
{
  result = IOHIDEventGetType();
  if (result == 14 || result == 11)
  {
    if (!IOHIDEventGetIntegerValue())
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      if (IntegerValue > 0x13)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100043968(IntegerValue);
        }
      }

      else if (IOHIDEventGetIntegerValue() == 1)
      {
        IOHIDEventGetFloatValue();
        v3 = &dword_1000707E0[8 * IntegerValue];
        *v3 = v4;
        IOHIDEventGetFloatValue();
        *(v3 + 1) = v5;
        IOHIDEventGetFloatValue();
        *(v3 + 2) = v6;
        v3[6] = 1;
      }

      else
      {
        dword_1000707E0[8 * IntegerValue + 6] = 0;
      }

      byte_1000707D8 = 1;
    }

    result = IOHIDEventGetChildren();
    if (result)
    {
      v7 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
          sub_100004D80(ValueAtIndex);
          v8 = ++v9;
          result = CFArrayGetCount(v7);
        }

        while (result > v9);
      }
    }
  }

  return result;
}

void sub_10000528C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000052BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000052D4(uint64_t a1, void *a2)
{
  v3 = [a2 arrayForJSON];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

id sub_100005668()
{
  v0 = [RDMutex alloc];

  return [(RDMutex *)v0 initWithoutTracking];
}

void sub_10000D1C0(id a1)
{
  qword_100070AF8 = +[NSMutableSet set];

  _objc_release_x1();
}

void sub_10000D844(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  [v1 performSelector:"userFinishedTermsAndConditions:" withObject:v2];
}

void sub_10000E5EC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke";
      v7 = 1024;
      v8 = 326;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] activated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 326, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke", 7, 0, "activated:%d", v2);
}

void sub_10000E6E8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke_2";
      v9 = 1024;
      v10 = 329;
      v11 = 1024;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] deactivated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerShareSettings.m", 134, 329, "[IDSSessionEmbeddedControllerShareSettings showUserTermsAndConditions]_block_invoke", 7, 0, "deactivated:%d", v2);
  v6 = [*(a1 + 32) vsSemaphore];
  dispatch_semaphore_signal(v6);
}

void sub_10000F5D8(id a1)
{
  qword_100070AF8 = +[NSMutableSet set];

  _objc_release_x1();
}

void sub_1000101EC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke";
      v7 = 1024;
      v8 = 308;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] activated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 308, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke", 7, 0, "activated:%d", v2);
}

void sub_1000102E8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke_2";
      v9 = 1024;
      v10 = 311;
      v11 = 1024;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] deactivated:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerAppleCare.m", 130, 311, "[IDSSessionEmbeddedControllerAppleCare showUserTermsAndConditions]_block_invoke", 7, 0, "deactivated:%d", v2);
  v6 = [*(a1 + 32) vsSemaphore];
  dispatch_semaphore_signal(v6);
}

void sub_100010708(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  [v1 performSelector:"userFinishedTermsAndConditions:" withObject:v2];
}

uint64_t sub_100010868(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  for (i = 0; a3; --a3)
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    i = i | v6 ^ v4;
  }

  return i;
}

void sub_100010C20(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(OS_xpc_object *)v2 description];
      *buf = 136315650;
      v8 = "[IDSServiceEmbeddedController initScreenSharingIDSService]_block_invoke";
      v9 = 1024;
      v10 = 231;
      v11 = 2080;
      v12 = [v5 UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] xpc_set_event_stream_handler: xpcEvent: %s", buf, 0x1Cu);
    }
  }

  v6 = [(OS_xpc_object *)v2 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 231, "-[IDSServiceEmbeddedController initScreenSharingIDSService]_block_invoke", 7, 0, "xpc_set_event_stream_handler: xpcEvent: %s", [v6 UTF8String]);
}

void sub_10001622C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setWallpaperSuspensionAssertion:a2];
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) wallpaperSuspensionAssertion];
      *buf = 136315650;
      v8 = "[IDSServiceEmbeddedController addActiveSession:]_block_invoke";
      v9 = 1024;
      v10 = 964;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] wallpaper assertion %p", buf, 0x1Cu);
    }
  }

  v6 = [*(a1 + 32) wallpaperSuspensionAssertion];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 964, "[IDSServiceEmbeddedController addActiveSession:]_block_invoke", 7, 0, "wallpaper assertion %p", v6);
}

void sub_100016CDC(uint64_t a1)
{
  v2 = [*(a1 + 32) exitTimer];

  if (!v2)
  {
    v3 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"exitTimerCallback:" selector:0 userInfo:0 repeats:30.0];
    [*(a1 + 32) setExitTimer:v3];
  }

  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[IDSServiceEmbeddedController checkIfNoSessions]_block_invoke";
      v8 = 1024;
      v9 = 1076;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v6, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1076, "[IDSServiceEmbeddedController checkIfNoSessions]_block_invoke", 7, 0, "created timer");
}

void sub_10001711C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = "[IDSServiceEmbeddedController createStatusBar]_block_invoke";
      v7 = 1024;
      v8 = 1128;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] acquired:%d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1128, "[IDSServiceEmbeddedController createStatusBar]_block_invoke", 7, 0, "acquired:%d", v2);
}

void sub_100017218(id a1)
{
  v1 = sub_1000423E0();
  if (v1)
  {
    v2 = sub_100042E68(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "[IDSServiceEmbeddedController createStatusBar]_block_invoke_2";
      v5 = 1024;
      v6 = 1131;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalidationHandler", &v3, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1131, "[IDSServiceEmbeddedController createStatusBar]_block_invoke", 7, 0, "invalidationHandler");
}

id sub_10001737C()
{
  [qword_100070A78 setScreenLocked:sub_100027378()];
  v0 = sub_1000423E0();
  if (v0)
  {
    v1 = sub_100042E68(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "LockStatusChangedCFNotification";
      v13 = 1024;
      v14 = 163;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification called screen is locked", &v11, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 163, "LockStatusChangedCFNotification", 7, 0, "notification called screen is locked");
  v2 = [qword_100070A78 screenLocked];
  v3 = [qword_100070A78 screenPausedBeforeLock];
  v4 = v3;
  if (v2)
  {
    v5 = sub_1000423E0();
    if (v4)
    {
      if (v5)
      {
        v6 = sub_100042E68(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "LockStatusChangedCFNotification";
          v13 = 1024;
          v14 = 168;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was already paused", &v11, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 168, "LockStatusChangedCFNotification", 7, 0, "screen was already paused");
    }

    else
    {
      if (v5)
      {
        v9 = sub_100042E68(v5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "LockStatusChangedCFNotification";
          v13 = 1024;
          v14 = 173;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to pause since locked screen", &v11, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 173, "LockStatusChangedCFNotification", 7, 0, "going to pause since locked screen");
      [qword_100070A78 pauseScreenSharing:1 pausingDueToScreenLock:1];
    }
  }

  else if ((v3 & 1) == 0)
  {
    v7 = sub_1000423E0();
    if (v7)
    {
      v8 = sub_100042E68(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "LockStatusChangedCFNotification";
        v13 = 1024;
        v14 = 188;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to unpause since unlocked screen", &v11, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 188, "LockStatusChangedCFNotification", 7, 0, "going to unpause since unlocked screen");
    [qword_100070A78 pauseScreenSharing:0];
  }

  return [qword_100070A78 sendLockScreenChangeMessageToAllSessions:v2];
}

id sub_100017FB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = "AskToCopyToPasteboardCallback";
      v31 = 1024;
      v32 = 1259;
      v33 = 2048;
      v34 = [qword_100070AF8 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] AskToToCopyToPasteboarCallback  called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1259, "AskToCopyToPasteboardCallback", 7, 0, "AskToToCopyToPasteboarCallback  called  count %ld", [qword_100070AF8 count]);
  if ([qword_100070A78 askToCopyToPasteboardNotification])
  {
    CFRelease([qword_100070A78 askToCopyToPasteboardNotification]);
    [qword_100070A78 setAskToCopyToPasteboardNotification:0];
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "AskToCopyToPasteboardCallback";
        v31 = 1024;
        v32 = 1265;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1265, "AskToCopyToPasteboardCallback", 7, 0, "cleared notification");
  }

  v7 = [qword_100070A78 askToCopyToPasteboardTimeoutTimer];

  if (v7)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "AskToCopyToPasteboardCallback";
        v31 = 1024;
        v32 = 1270;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1270, "AskToCopyToPasteboardCallback", 7, 0, "get rid of timer");
    v10 = [qword_100070A78 askToCopyToPasteboardTimeoutTimer];
    [v10 invalidate];

    [qword_100070A78 setAskToCopyToPasteboardTimeoutTimer:0];
  }

  v11 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v11)
      {
        v22 = sub_100042E68(v11);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToCopyToPasteboardCallback";
          v31 = 1024;
          v32 = 1285;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1285, "AskToCopyToPasteboardCallback", 7, 0, "alternate response - user declined");
      v13 = [qword_100070A78 askToCopyToPasteboardDelegate];
      v19 = [qword_100070A78 askToCopyToPasteboardToken];
      v20 = v13;
      v21 = 0;
      goto LABEL_40;
    case 3:
      if (v11)
      {
        v16 = sub_100042E68(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToCopyToPasteboardCallback";
          v31 = 1024;
          v32 = 1290;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1290, "AskToCopyToPasteboardCallback", 7, 0, "notification was cancelled");
      if (![qword_100070A78 askToCopyToPasteboardTimedOut])
      {
        v25 = sub_100027378();
        v26 = sub_1000423E0();
        if (v25)
        {
          if (v26)
          {
            v27 = sub_100042E68(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v30 = "AskToCopyToPasteboardCallback";
              v31 = 1024;
              v32 = 1300;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1300, "AskToCopyToPasteboardCallback", 7, 0, "screen is still locked?");
        }

        else
        {
          if (v26)
          {
            v28 = sub_100042E68(v26);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v30 = "AskToCopyToPasteboardCallback";
              v31 = 1024;
              v32 = 1304;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1304, "AskToCopyToPasteboardCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
          [qword_100070A78 postAskToCopyToPasteboardNotification];
        }

        return [qword_100070A78 setAskToCopyToPasteboardUserMessage:0];
      }

      v17 = sub_1000423E0();
      if (v17)
      {
        v18 = sub_100042E68(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToCopyToPasteboardCallback";
          v31 = 1024;
          v32 = 1293;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1293, "AskToCopyToPasteboardCallback", 7, 0, "notification timed out");
      v13 = [qword_100070A78 askToCopyToPasteboardDelegate];
      v19 = [qword_100070A78 askToCopyToPasteboardToken];
      v20 = v13;
      v21 = 2;
LABEL_40:
      [v20 userRequestResult:v21 senderToken:v19];
LABEL_41:

      return [qword_100070A78 setAskToCopyToPasteboardUserMessage:0];
    case 2:
      if (v11)
      {
        v12 = sub_100042E68(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v30 = "AskToCopyToPasteboardCallback";
          v31 = 1024;
          v32 = 1277;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1277, "AskToCopyToPasteboardCallback", 7, 0, "other response - user accepted");
      v13 = +[UIPasteboard generalPasteboard];
      v14 = [qword_100070A78 askToCopyToPasteboardUserMessage];
      [v13 setString:v14];

      v15 = [qword_100070A78 askToCopyToPasteboardDelegate];
      [v15 userRequestResult:1 senderToken:{objc_msgSend(qword_100070A78, "askToCopyToPasteboardToken")}];

      goto LABEL_41;
  }

  if (v11)
  {
    v23 = sub_100042E68(v11);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "AskToCopyToPasteboardCallback";
      v31 = 1024;
      v32 = 1310;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1310, "AskToCopyToPasteboardCallback", 7, 0, "unexpected response");
  return [qword_100070A78 setAskToCopyToPasteboardUserMessage:0];
}

void sub_100018754(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"askToToCopyToPasteboardTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setAskToCopyToPasteboardTimeoutTimer:v2];

  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]_block_invoke";
      v7 = 1024;
      v8 = 1251;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1251, "[IDSServiceEmbeddedController postAskToCopyToPasteboardNotification]_block_invoke", 7, 0, "created timer");
}

void sub_100019584(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v35 = "AskToOpenURLCallback";
      v36 = 1024;
      v37 = 1450;
      v38 = 2048;
      v39 = [qword_100070AF8 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] AskToOpenURLCallback  called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1450, "AskToOpenURLCallback", 7, 0, "AskToOpenURLCallback  called  count %ld", [qword_100070AF8 count]);
  if ([qword_100070A78 askToOpenURLNotification])
  {
    CFRelease([qword_100070A78 askToOpenURLNotification]);
    [qword_100070A78 setAskToOpenURLNotification:0];
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "AskToOpenURLCallback";
        v36 = 1024;
        v37 = 1456;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1456, "AskToOpenURLCallback", 7, 0, "cleared notification");
  }

  v7 = [qword_100070A78 askToOpenURLTimeoutTimer];

  if (v7)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "AskToOpenURLCallback";
        v36 = 1024;
        v37 = 1461;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1461, "AskToOpenURLCallback", 7, 0, "get rid of timer");
    v10 = [qword_100070A78 askToOpenURLTimeoutTimer];
    [v10 invalidate];

    [qword_100070A78 setAskToOpenURLTimeoutTimer:0];
  }

  v11 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v11)
      {
        v28 = sub_100042E68(v11);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "AskToOpenURLCallback";
          v36 = 1024;
          v37 = 1477;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1477, "AskToOpenURLCallback", 7, 0, "alternate response - user declined");
      v21 = [qword_100070A78 askToOpenURLDelegate];
      v22 = [qword_100070A78 askToOpenURLToken];
      v23 = v21;
      v24 = 0;
      goto LABEL_44;
    case 3:
      if (v11)
      {
        v25 = sub_100042E68(v11);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "AskToOpenURLCallback";
          v36 = 1024;
          v37 = 1482;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1482, "AskToOpenURLCallback", 7, 0, "notification was cancelled");
      if ([qword_100070A78 askToOpenURLTimedOut])
      {
        v26 = sub_1000423E0();
        if (v26)
        {
          v27 = sub_100042E68(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "AskToOpenURLCallback";
            v36 = 1024;
            v37 = 1485;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1485, "AskToOpenURLCallback", 7, 0, "notification timed out");
        v21 = [qword_100070A78 askToOpenURLDelegate];
        v22 = [qword_100070A78 askToOpenURLToken];
        v23 = v21;
        v24 = 2;
        goto LABEL_44;
      }

      v30 = sub_100027378();
      v31 = sub_1000423E0();
      if (v30)
      {
        if (v31)
        {
          v32 = sub_100042E68(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "AskToOpenURLCallback";
            v36 = 1024;
            v37 = 1492;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1492, "AskToOpenURLCallback", 7, 0, "screen is still locked?");
      }

      else
      {
        if (v31)
        {
          v33 = sub_100042E68(v31);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v35 = "AskToOpenURLCallback";
            v36 = 1024;
            v37 = 1496;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1496, "AskToOpenURLCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
        [qword_100070A78 postAskToOpenURLNotification];
      }

      break;
    case 2:
      if (v11)
      {
        v12 = sub_100042E68(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "AskToOpenURLCallback";
          v36 = 1024;
          v37 = 1468;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user said open*", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1468, "AskToOpenURLCallback", 7, 0, "other response - user said open*");
      v13 = sub_1000423E0();
      if (v13)
      {
        v14 = sub_100042E68(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [qword_100070A78 urlToOpen];
          v16 = [v15 UTF8String];
          *buf = 136315650;
          v35 = "AskToOpenURLCallback";
          v36 = 1024;
          v37 = 1469;
          v38 = 2080;
          v39 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] url string is %s", buf, 0x1Cu);
        }
      }

      v17 = [qword_100070A78 urlToOpen];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1469, "AskToOpenURLCallback", 7, 0, "url string is %s", [v17 UTF8String]);

      v18 = +[LSApplicationWorkspace defaultWorkspace];
      v19 = [qword_100070A78 urlToOpen];
      v20 = [NSURL URLWithString:v19];
      [v18 openURL:v20];

      v21 = [qword_100070A78 askToOpenURLDelegate];
      v22 = [qword_100070A78 askToOpenURLToken];
      v23 = v21;
      v24 = 1;
LABEL_44:
      [v23 userRequestResult:v24 senderToken:v22];

      return;
    default:
      if (v11)
      {
        v29 = sub_100042E68(v11);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v35 = "AskToOpenURLCallback";
          v36 = 1024;
          v37 = 1502;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1502, "AskToOpenURLCallback", 7, 0, "unexpected response");
      break;
  }
}

void sub_100019E1C(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"askToOpenURLTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setAskToOpenURLTimeoutTimer:v2];

  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController postAskToOpenURLNotification]_block_invoke";
      v7 = 1024;
      v8 = 1443;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1443, "[IDSServiceEmbeddedController postAskToOpenURLNotification]_block_invoke", 7, 0, "created timer");
}

void sub_10001AB4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = "AskToResumeCallback";
      v32 = 1024;
      v33 = 1640;
      v34 = 2048;
      v35 = COERCE_DOUBLE([qword_100070AF8 count]);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] AskToResumeCallback callback called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1640, "AskToResumeCallback", 7, 0, "AskToResumeCallback callback called  count %ld", [qword_100070AF8 count]);
  if ([qword_100070A78 askToResumeNotification])
  {
    CFRelease([qword_100070A78 askToResumeNotification]);
    [qword_100070A78 setAskToResumeNotification:0];
  }

  v5 = [qword_100070A78 askToResumeTimeoutTimer];

  if (v5)
  {
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v31 = "AskToResumeCallback";
        v32 = 1024;
        v33 = 1650;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1650, "AskToResumeCallback", 7, 0, "get rid of timer");
    v8 = [qword_100070A78 askToResumeTimeoutTimer];
    [v8 invalidate];

    [qword_100070A78 setAskToResumeTimeoutTimer:0];
  }

  v9 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v9)
      {
        v24 = sub_100042E68(v9);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "AskToResumeCallback";
          v32 = 1024;
          v33 = 1663;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1663, "AskToResumeCallback", 7, 0, "alternate response - user declined");
      v11 = [qword_100070A78 askToResumeDelegate];
      v12 = [qword_100070A78 askToResumeToken];
      v13 = v11;
      v14 = 0;
      goto LABEL_40;
    case 3:
      if (v9)
      {
        v15 = sub_100042E68(v9);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "AskToResumeCallback";
          v32 = 1024;
          v33 = 1668;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1668, "AskToResumeCallback", 7, 0, "notification was cancelled");
      v16 = +[NSDate date];
      v17 = [qword_100070A78 notificationStartTime];
      [v16 timeIntervalSinceDate:v17];
      v19 = v18;

      v20 = sub_1000423E0();
      if (v20)
      {
        v21 = sub_100042E68(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v31 = "AskToResumeCallback";
          v32 = 1024;
          v33 = 1670;
          v34 = 2048;
          v35 = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] timeUsed = %f", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1670, "AskToResumeCallback", 7, 0, "timeUsed = %f", v19);
      if ([qword_100070A78 askToResumeTimedOut])
      {
        v22 = sub_1000423E0();
        if (v22)
        {
          v23 = sub_100042E68(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v31 = "AskToResumeCallback";
            v32 = 1024;
            v33 = 1674;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1674, "AskToResumeCallback", 7, 0, "notification timed out");
        v11 = [qword_100070A78 askToResumeDelegate];
        v12 = [qword_100070A78 askToResumeToken];
        v13 = v11;
        v14 = 2;
        goto LABEL_40;
      }

      v26 = sub_100027378();
      v27 = sub_1000423E0();
      if (v26)
      {
        if (v27)
        {
          v28 = sub_100042E68(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v31 = "AskToResumeCallback";
            v32 = 1024;
            v33 = 1681;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1681, "AskToResumeCallback", 7, 0, "screen is still locked?");
      }

      else
      {
        if (v27)
        {
          v29 = sub_100042E68(v27);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v31 = "AskToResumeCallback";
            v32 = 1024;
            v33 = 1685;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1685, "AskToResumeCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
        [qword_100070A78 postAskToResumeNotification];
      }

      break;
    case 2:
      if (v9)
      {
        v10 = sub_100042E68(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "AskToResumeCallback";
          v32 = 1024;
          v33 = 1657;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1657, "AskToResumeCallback", 7, 0, "other response - user accepted");
      [qword_100070A78 pauseScreenSharing:0];
      v11 = [qword_100070A78 askToResumeDelegate];
      v12 = [qword_100070A78 askToResumeToken];
      v13 = v11;
      v14 = 1;
LABEL_40:
      [v13 userRequestResult:v14 senderToken:v12];

      return;
    default:
      if (v9)
      {
        v25 = sub_100042E68(v9);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "AskToResumeCallback";
          v32 = 1024;
          v33 = 1691;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1691, "AskToResumeCallback", 7, 0, "unexpected response");
      break;
  }
}

void sub_10001B304(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"askToResumeTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setAskToResumeTimeoutTimer:v2];

  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController postAskToResumeNotification]_block_invoke";
      v7 = 1024;
      v8 = 1632;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1632, "[IDSServiceEmbeddedController postAskToResumeNotification]_block_invoke", 7, 0, "created timer");
}

void sub_10001BEB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "ShowUserMessageCallback";
      v24 = 1024;
      v25 = 1808;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] ShowUserMessageCallback", &v22, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1808, "ShowUserMessageCallback", 7, 0, "ShowUserMessageCallback");
  if ([qword_100070A78 showUserMessageNotification])
  {
    CFRelease([qword_100070A78 showUserMessageNotification]);
    [qword_100070A78 setShowUserMessageNotification:0];
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315394;
        v23 = "ShowUserMessageCallback";
        v24 = 1024;
        v25 = 1814;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", &v22, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1814, "ShowUserMessageCallback", 7, 0, "cleared notification");
  }

  v7 = [qword_100070A78 showUserMessageTimeoutTimer];

  if (v7)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315394;
        v23 = "ShowUserMessageCallback";
        v24 = 1024;
        v25 = 1819;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] get rid of timer", &v22, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1819, "ShowUserMessageCallback", 7, 0, "get rid of timer");
    v10 = [qword_100070A78 showUserMessageTimeoutTimer];
    [v10 invalidate];

    [qword_100070A78 setShowUserMessageTimeoutTimer:0];
  }

  v11 = sub_1000423E0();
  switch(a2)
  {
    case 1:
      if (v11)
      {
        v16 = sub_100042E68(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = "ShowUserMessageCallback";
          v24 = 1024;
          v25 = 1830;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", &v22, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1830, "ShowUserMessageCallback", 7, 0, "alternate response - user declined");
      break;
    case 3:
      if (v11)
      {
        v13 = sub_100042E68(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = "ShowUserMessageCallback";
          v24 = 1024;
          v25 = 1834;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", &v22, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1834, "ShowUserMessageCallback", 7, 0, "notification was cancelled");
      if ([qword_100070A78 showUserMessageTimedOut])
      {
        v14 = sub_1000423E0();
        if (v14)
        {
          v15 = sub_100042E68(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136315394;
            v23 = "ShowUserMessageCallback";
            v24 = 1024;
            v25 = 1837;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", &v22, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1837, "ShowUserMessageCallback", 7, 0, "notification timed out");
      }

      else
      {
        v18 = sub_100027378();
        v19 = sub_1000423E0();
        if (v18)
        {
          if (v19)
          {
            v20 = sub_100042E68(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 136315394;
              v23 = "ShowUserMessageCallback";
              v24 = 1024;
              v25 = 1843;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", &v22, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1843, "ShowUserMessageCallback", 7, 0, "screen is still locked?");
        }

        else
        {
          if (v19)
          {
            v21 = sub_100042E68(v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = 136315394;
              v23 = "ShowUserMessageCallback";
              v24 = 1024;
              v25 = 1847;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", &v22, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1847, "ShowUserMessageCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
          [qword_100070A78 postShowUserMessageNotification];
        }
      }

      break;
    case 2:
      if (v11)
      {
        v12 = sub_100042E68(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = "ShowUserMessageCallback";
          v24 = 1024;
          v25 = 1826;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", &v22, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1826, "ShowUserMessageCallback", 7, 0, "other response - user accepted");
      break;
    default:
      if (v11)
      {
        v17 = sub_100042E68(v11);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315394;
          v23 = "ShowUserMessageCallback";
          v24 = 1024;
          v25 = 1853;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", &v22, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1853, "ShowUserMessageCallback", 7, 0, "unexpected response");
      break;
  }
}

void sub_10001C550(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"showUserMessageTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setShowUserMessageTimeoutTimer:v2];

  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController postShowUserMessageNotification]_block_invoke";
      v7 = 1024;
      v8 = 1800;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1800, "[IDSServiceEmbeddedController postShowUserMessageNotification]_block_invoke", 7, 0, "created timer");
}

void sub_10001D03C(uint64_t a1)
{
  v1 = sub_1000423E0();
  if (v1)
  {
    v2 = sub_100042E68(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "ShowViewerPausedMessageCallback";
      v7 = 1024;
      v8 = 1962;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] ShowUserMessageCallback", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1962, "ShowViewerPausedMessageCallback", 7, 0, "ShowUserMessageCallback");
  if ([qword_100070A78 showViewerPausedNotification])
  {
    CFRelease([qword_100070A78 showViewerPausedNotification]);
    [qword_100070A78 setShowViewerPausedNotification:0];
    v3 = sub_1000423E0();
    if (v3)
    {
      v4 = sub_100042E68(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "ShowViewerPausedMessageCallback";
        v7 = 1024;
        v8 = 1968;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] cleared notification", &v5, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1968, "ShowViewerPausedMessageCallback", 7, 0, "cleared notification");
  }
}

void sub_10001D1E8(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"showViewerPausedTimeout:" selector:0 userInfo:0 repeats:28.0];
  [*(a1 + 32) setShowViewerPausedTimeoutTimer:v2];

  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[IDSServiceEmbeddedController postViewerPausedMessageNotification]_block_invoke";
      v7 = 1024;
      v8 = 1954;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] created timer", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 1954, "[IDSServiceEmbeddedController postViewerPausedMessageNotification]_block_invoke", 7, 0, "created timer");
}

void sub_100020F30(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setVsHelper:v2];

  v3 = *(a1 + 32);
  v4 = [v3 vsHelper];
  [v4 setDelegate:v3];

  v5 = [*(a1 + 32) vsHelper];
  [v5 run];

  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IDSServiceEmbeddedController initViewServiceHelper]_block_invoke";
      v10 = 1024;
      v11 = 2490;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] setup viewservice helper", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2490, "[IDSServiceEmbeddedController initViewServiceHelper]_block_invoke", 7, 0, "setup viewservice helper");
}

uint64_t sub_100022828()
{
  if ((byte_100070A89 & 1) == 0)
  {
    v0 = MGCopyAnswer();
    if (v0)
    {
      v1 = v0;
      byte_100070A88 = CFEqual(v0, @"Internal") != 0;
      v2 = sub_1000423E0();
      if (v2)
      {
        v3 = sub_100042E68(v2);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v6 = "InternalBuildInstalled";
          v7 = 1024;
          v8 = 2594;
          v9 = 1024;
          v10 = byte_100070A88;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] build is %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSServiceEmbeddedController.m", 121, 2594, "InternalBuildInstalled", 7, 0, "build is %d", byte_100070A88);
      CFRelease(v1);
    }

    byte_100070A89 = 1;
  }

  return byte_100070A88;
}

void sub_100022984(uint64_t a1)
{
  if (sub_1000398E4(1, 0, (a1 + 24)))
  {
    v2 = sub_1000423E0();
    if (v2)
    {
      v3 = sub_100042E68(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "InitializeUDPSendThread";
        v23 = 1024;
        v24 = 64;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->sendSemaphoreUDP", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 64, "InitializeUDPSendThread", 7, 0, "Unable to create s->sendSemaphoreUDP");
  }

  v4 = sub_100005668();
  *(a1 + 32) = v4;
  if (!v4)
  {
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "InitializeUDPSendThread";
        v23 = 1024;
        v24 = 68;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->bufferPtrCRUDP", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 68, "InitializeUDPSendThread", 7, 0, "Unable to create s->bufferPtrCRUDP");
  }

  v7 = sub_100005668();
  *(a1 + 64) = v7;
  if (!v7)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "InitializeUDPSendThread";
        v23 = 1024;
        v24 = 72;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->UDPSendCR", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 72, "InitializeUDPSendThread", 7, 0, "Unable to create s->UDPSendCR");
  }

  v10 = sub_100005668();
  *(a1 + 56) = v10;
  if (!v10)
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "InitializeUDPSendThread";
        v23 = 1024;
        v24 = 76;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->sendInfoCR", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 76, "InitializeUDPSendThread", 7, 0, "Unable to create s->sendInfoCR");
  }

  if (sub_1000398E4(1, 0, (a1 + 40)))
  {
    v13 = sub_1000423E0();
    if (v13)
    {
      v14 = sub_100042E68(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "InitializeUDPSendThread";
        v23 = 1024;
        v24 = 80;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create s->statusSempahore", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 80, "InitializeUDPSendThread", 7, 0, "Unable to create s->statusSempahore");
  }

  v15 = sub_1000038DC(sub_100022E60, a1, (a1 + 72));
  if (v15)
  {
    v16 = v15;
    v17 = sub_1000423E0();
    if (v17)
    {
      v18 = sub_100042E68(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "InitializeUDPSendThread";
        v23 = 1024;
        v24 = 90;
        v25 = 1024;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to create server send thread %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 90, "InitializeUDPSendThread", 7, 0, "Unable to create server send thread %d", v16);
  }

  v19 = sub_1000423E0();
  if (v19)
  {
    v20 = sub_100042E68(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "InitializeUDPSendThread";
      v23 = 1024;
      v24 = 92;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] INITAILIALIZED UDP SEND INFO", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 92, "InitializeUDPSendThread", 7, 0, "INITAILIALIZED UDP SEND INFO");
}

void sub_100022E60(uint64_t a1)
{
  v2 = sub_1000423E0();
  if (v2)
  {
    v3 = sub_100042E68(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v118 = "UDPSend_ScreenSharing";
      v119 = 1024;
      v120 = 188;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] ***UDPSend_ScreenSharing", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 188, "UDPSend_ScreenSharing", 7, 0, "***UDPSend_ScreenSharing");
  [*(a1 + 64) lock];
  *(a1 + 104) = sub_100035FAC();
  if (*(a1 + 114) - 1 <= 1)
  {
    v4 = *(a1 + 2702) * *(a1 + 2708) + 30;
    v5 = malloc_type_calloc(1uLL, v4, 0xDC98F95FuLL);
    v6 = sub_1000423E0();
    if (!v5)
    {
      if (v6)
      {
        v7 = sub_100042E68(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v118 = "SendMachineIndex";
          v119 = 1024;
          v120 = 1325;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to allocate memory", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1325, "SendMachineIndex", 7, 0, "Unable to allocate memory");
      exit(1);
    }

    if (v6)
    {
      v8 = sub_100042E68(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v118 = "SendMachineIndex";
        v119 = 1024;
        v120 = 1328;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] send macine index", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1328, "SendMachineIndex", 7, 0, "send macine index");
    *v5 = 50331904;
    v5[3] = bswap32(*a1);
    *(v5 + 9) = 0;
    v5[2] = bswap32(*(a1 + 84) + 1);
    *(v5 + 8) = bswap32(*(a1 + 112)) >> 16;
    v9 = *(a1 + 2702);
    v10 = __rev16(v9);
    *(v5 + 10) = v10;
    *(v5 + 11) = 256;
    *(v5 + 12) = v10;
    *(v5 + 13) = bswap32(*(a1 + 2706)) >> 16;
    if (v9)
    {
      v11 = 0;
      v12 = *(a1 + 3248);
      v13 = (v5 + 7);
      do
      {
        if (*v12 != 2)
        {
          memcpy(v13, v12 + 38, *(a1 + 2708));
          v13 += *(a1 + 2708);
          LOWORD(v9) = *(a1 + 2702);
        }

        v12 += 60;
        ++v11;
      }

      while (v11 < v9);
    }

    if (!sub_100024520(a1, 0))
    {
      sub_100025D40(a1, v5, v4);
      sub_100026438(a1, v5, v4, 0);
      ++*(a1 + 84);
    }
  }

  v114 = sub_100040318();
  if (*(a1 + 3173))
  {
    v115 = 0;
    goto LABEL_92;
  }

  v115 = 0;
LABEL_22:
  v14 = sub_100039D00(*(a1 + 24), 0xBB8u);
  if (*(a1 + 3173))
  {
    v104 = sub_1000423E0();
    if (v104)
    {
      v105 = sub_100042E68(v104);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v118 = "UDPSend_ScreenSharing";
        v119 = 1024;
        v120 = 210;
        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%s:%d] UDPSend stop", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 210, "UDPSend_ScreenSharing", 7, 0, "UDPSend stop");
    goto LABEL_92;
  }

  v15 = v14;
  [*(a1 + 32) lock];
  v16 = *(a1 + 8);
  if (!v16)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    [*(a1 + 32) unlock];
    if (v15)
    {
      sub_100025268(a1);
      sub_100025AFC(a1);
    }

    goto LABEL_84;
  }

  v17 = *(v16 + 6);
  v18 = *(a1 + 16);
  if (v16 == v18 || (v17 & 1) != 0)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v20 = v16;
    goto LABEL_46;
  }

  LODWORD(v21) = 0;
  v22 = v115 + 1;
  LOWORD(v23) = *(v16 + 6);
  v24 = *(a1 + 8);
  while (1)
  {
    v25 = v22;
    v21 = (v24[2] + v21);
    if (!*v24)
    {
      break;
    }

    if ((v23 & 1) == 0)
    {
      v23 = *(*v24 + 12);
      ++v22;
      v24 = *v24;
      if (((v23 ^ v17) & 0x10) == 0)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (v18 == v24)
  {
LABEL_37:
    v115 = v25;
    v20 = malloc_type_malloc(v21 + 14, 0x108004043D1B9D8uLL);
    *v20 = 0;
    v20[2] = 0;
    *(v20 + 6) = 0;
    while (*v16 || *(a1 + 16) == v16)
    {
      memcpy(v20 + v20[2] + 14, v16 + 14, *(v16 + 2));
      *(v20 + 6) |= *(v16 + 6);
      v20[2] += *(v16 + 2);
      v26 = *v16;
      v27 = *(v16 + 6);
      free(v16);
      if (v26)
      {
        v16 = v26;
        if ((v27 & 1) == 0)
        {
          continue;
        }
      }

      if ((v27 & 1) != 0 && v26)
      {
        *(a1 + 8) = v26;
      }

      else
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

LABEL_46:
      [*(a1 + 32) unlock];
      if (*(a1 + 3173))
      {
        v106 = sub_1000423E0();
        if (v106)
        {
          v107 = sub_100042E68(v106);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v118 = "UDPSend_ScreenSharing";
            v119 = 1024;
            v120 = 304;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[%s:%d] terminate flag set", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 304, "UDPSend_ScreenSharing", 7, 0, "terminate flag set");
        goto LABEL_92;
      }

      v28 = *(v20 + 6);
      v29 = v20[2];
      if (v29)
      {
        v30 = v20 + 14;
        v116 = *(v20 + 6);
        v31 = (v28 << 30 >> 31) & 0x600;
        v32 = v20[2];
        while (1)
        {
          if (v32 >= 0x44C)
          {
            v33 = 1100;
          }

          else
          {
            v33 = v32;
          }

          v34 = v33 + 20;
          v35 = malloc_type_malloc((v33 + 20), 0xE17DA7E9uLL);
          if (!v35)
          {
            goto LABEL_91;
          }

          v36 = v35;
          *v35 = 256;
          v35[3] = bswap32(*a1);
          *(v35 + 9) = 0;
          *(v35 + 1) = v31;
          v35[2] = bswap32(*(a1 + 84) + 1);
          *(v35 + 8) = bswap32(*(a1 + 112)) >> 16;
          if (*(a1 + 114) - 3 <= 1)
          {
            v35[3] = bswap32(*(a1 + 3164));
          }

          memcpy(v35 + 5, v30, v33);
          v37 = sub_100024520(a1, 0);
          if (v37)
          {
            break;
          }

          *(v36 + 18) = 0;
          sub_100025D40(a1, v36, (v33 + 20));
          sub_100026438(a1, v36, v34, v33);
          ++*(a1 + 84);
          sub_100025268(a1);
          if (*(a1 + 114) - 3 <= 1)
          {
            *(a1 + 3164) += v34;
          }

          v30 += v33;
          v32 -= v33;
          if (!v32)
          {
            *(a1 + 3200) += v29;
            LOBYTE(v28) = v116;
            goto LABEL_64;
          }
        }

        v49 = v37;
        v50 = sub_1000423E0();
        if (v50)
        {
          v51 = sub_100042E68(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v118 = "SendBufferToUDPReceivers";
            v119 = 1024;
            v120 = 589;
            v121 = 1024;
            LODWORD(v122) = v49;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] error from validatepackets %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 589, "SendBufferToUDPReceivers", 7, 0, "error from validatepackets %d", v49);
        free(v36);
LABEL_91:
        *(a1 + 3173) = 1;
LABEL_92:
        [*(a1 + 56) lock];
        v52 = sub_1000423E0();
        if (v52)
        {
          v53 = sub_100042E68(v52);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = *(a1 + 3173);
            *buf = 136315650;
            v118 = "UDPSend_ScreenSharing";
            v119 = 1024;
            v120 = 455;
            v121 = 1024;
            LODWORD(v122) = v54;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%s:%d] s->terminateThreadFlag = %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 455, "UDPSend_ScreenSharing", 7, 0, "s->terminateThreadFlag = %d", *(a1 + 3173));
        if (sub_100039B0C(*(a1 + 24)))
        {
          v55 = sub_1000423E0();
          if (v55)
          {
            v56 = sub_100042E68(v55);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v118 = "UDPSend_ScreenSharing";
              v119 = 1024;
              v120 = 459;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to delete s->sendSemaphoreUDP", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 459, "UDPSend_ScreenSharing", 7, 0, "Unable to delete s->sendSemaphoreUDP");
        }

        v57 = sub_1000423E0();
        if (v57)
        {
          v58 = sub_100042E68(v57);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v118 = "UDPSend_ScreenSharing";
            v119 = 1024;
            v120 = 461;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%s:%d] terminate udp send thread - delete s->sendSemaphoreUDP", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 461, "UDPSend_ScreenSharing", 7, 0, "terminate udp send thread - delete s->sendSemaphoreUDP");
        *(a1 + 24) = 0;

        *(a1 + 32) = 0;
        *(a1 + 56) = 0;
        v59 = *(a1 + 8);
        if (v59)
        {
          do
          {
            v60 = *v59;
            free(v59);
            v59 = v60;
          }

          while (v60);
        }

        v61 = 0;
        while (1)
        {
          v62 = *(a1 + 120 + v61);
          if (v62)
          {
            free(v62);
          }

          v61 += 8;
          if (v61 == 1024)
          {
            if (!*(a1 + 3272) && !*(a1 + 3240))
            {
              v63 = sub_1000423E0();
              if (v63)
              {
                v64 = sub_100042E68(v63);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  v65 = *(a1 + 2696);
                  *buf = 136315650;
                  v118 = "UDPSend_ScreenSharing";
                  v119 = 1024;
                  v120 = 496;
                  v121 = 1024;
                  LODWORD(v122) = v65;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[%s:%d] close %d", buf, 0x18u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 496, "UDPSend_ScreenSharing", 7, 0, "close %d", *(a1 + 2696));
              if (close(*(a1 + 2696)))
              {
                v66 = sub_1000423E0();
                if (v66)
                {
                  v67 = sub_100042E68(v66);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    v68 = __error();
                    v69 = strerror(*v68);
                    *buf = 136315650;
                    v118 = "UDPSend_ScreenSharing";
                    v119 = 1024;
                    v120 = 499;
                    v121 = 2080;
                    v122 = v69;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "[%s:%d] error closing socket %s", buf, 0x1Cu);
                  }
                }

                v70 = __error();
                v71 = strerror(*v70);
                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 499, "UDPSend_ScreenSharing", 3, 0, "error closing socket %s", v71);
              }
            }

            v72 = *(a1 + 48);
            if (v72)
            {
              sub_100039C0C(v72);
            }

            v73 = sub_1000423E0();
            if (v73)
            {
              v74 = sub_100042E68(v73);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                v75 = sub_100040318();
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 506;
                v121 = 1024;
                LODWORD(v122) = v75 - v114;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[%s:%d] TOTAL TIME UDPSend Thread %u", buf, 0x18u);
              }
            }

            v76 = sub_100040318();
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 506, "UDPSend_ScreenSharing", 7, 0, "TOTAL TIME UDPSend Thread %u", v76 - v114);
            v77 = sub_1000423E0();
            if (v77)
            {
              v78 = sub_100042E68(v77);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v79 = *(a1 + 112);
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 507;
                v121 = 1024;
                LODWORD(v122) = v79;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%s:%d] Ending RetryInterval: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 507, "UDPSend_ScreenSharing", 7, 0, "Ending RetryInterval: %u", *(a1 + 112));
            v80 = sub_1000423E0();
            if (v80)
            {
              v81 = sub_100042E68(v80);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = *(a1 + 3176);
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 508;
                v121 = 1024;
                LODWORD(v122) = v82;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[%s:%d] Missed Packets Sent: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 508, "UDPSend_ScreenSharing", 7, 0, "Missed Packets Sent: %u", *(a1 + 3176));
            v83 = sub_1000423E0();
            if (v83)
            {
              v84 = sub_100042E68(v83);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                v85 = *(a1 + 96);
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 509;
                v121 = 1024;
                LODWORD(v122) = v85;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "[%s:%d] Last Validated Packet: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 509, "UDPSend_ScreenSharing", 7, 0, "Last Validated Packet: %u", *(a1 + 96));
            v86 = sub_1000423E0();
            if (v86)
            {
              v87 = sub_100042E68(v86);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
              {
                v88 = *(a1 + 3184);
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 510;
                v121 = 1024;
                LODWORD(v122) = v88;
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%s:%d] Status Requests Sent: %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 510, "UDPSend_ScreenSharing", 7, 0, "Status Requests Sent: %u", *(a1 + 3184));
            v89 = sub_1000423E0();
            if (v89)
            {
              v90 = sub_100042E68(v89);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                v91 = *(a1 + 3200);
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 512;
                v121 = 2048;
                v122 = v91;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "[%s:%d] Total Bytes Sent: %lu", buf, 0x1Cu);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 512, "UDPSend_ScreenSharing", 7, 0, "Total Bytes Sent: %lu", *(a1 + 3200));
            v92 = sub_1000423E0();
            if (v92)
            {
              v93 = sub_100042E68(v92);
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
              {
                v94 = *(a1 + 3208);
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 513;
                v121 = 2048;
                v122 = v94;
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "[%s:%d] Total Bytes Validated: %lu", buf, 0x1Cu);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 513, "UDPSend_ScreenSharing", 7, 0, "Total Bytes Validated: %lu", *(a1 + 3208));
            v95 = sub_1000423E0();
            if (v95)
            {
              v96 = sub_100042E68(v95);
              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
              {
                v97 = *(a1 + 3256);
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 514;
                v121 = 2048;
                v122 = v97;
                _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[%s:%d] Estimated Thruput: %lu", buf, 0x1Cu);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 514, "UDPSend_ScreenSharing", 7, 0, "Estimated Thruput: %lu", *(a1 + 3256));
            v98 = sub_1000423E0();
            if (v98)
            {
              v99 = sub_100042E68(v98);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v118 = "UDPSend_ScreenSharing";
                v119 = 1024;
                v120 = 515;
                v121 = 1024;
                LODWORD(v122) = v115;
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "[%s:%d] Collated Buffers %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 515, "UDPSend_ScreenSharing", 7, 0, "Collated Buffers %u", v115);
            [*(a1 + 64) unlock];
            pthread_exit(0);
          }
        }
      }

      v38 = sub_1000423E0();
      if (v38)
      {
        v39 = sub_100042E68(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v118 = "UDPSend_ScreenSharing";
          v119 = 1024;
          v120 = 382;
          v121 = 2048;
          v122 = v20;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] buffsize is 0 %p", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 382, "UDPSend_ScreenSharing", 7, 0, "buffsize is 0 %p", v20);
      v29 = 0;
LABEL_64:
      [*(a1 + 32) lock];
      v40 = *(a1 + 3192) - v29;
      *(a1 + 3192) = v40;
      if (v40 < 0)
      {
        v41 = sub_1000423E0();
        if (v41)
        {
          v42 = sub_100042E68(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a1 + 3192);
            *buf = 136315650;
            v118 = "UDPSend_ScreenSharing";
            v119 = 1024;
            v120 = 388;
            v121 = 2048;
            v122 = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] total bytes pending is < 0 %lld", buf, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 388, "UDPSend_ScreenSharing", 7, 0, "total bytes pending is < 0 %lld", *(a1 + 3192));
      }

      if (!*(a1 + 8) && *(a1 + 3192))
      {
        v44 = sub_1000423E0();
        if (v44)
        {
          v45 = sub_100042E68(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(a1 + 3192);
            *buf = 136315650;
            v118 = "UDPSend_ScreenSharing";
            v119 = 1024;
            v120 = 395;
            v121 = 1024;
            LODWORD(v122) = v46;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] bytes still pending! %u", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 395, "UDPSend_ScreenSharing", 7, 0, "bytes still pending! %u", *(a1 + 3192));
      }

      [*(a1 + 32) unlock];
      free(v20);
      if ((v28 & 1) == 0)
      {
        if ((v28 & 2) == 0)
        {
          goto LABEL_77;
        }

LABEL_83:
        sub_100024520(a1, 1);
        if ((v28 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_162:
        v108 = sub_1000423E0();
        if (v108)
        {
          v109 = sub_100042E68(v108);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v118 = "UDPSend_ScreenSharing";
            v119 = 1024;
            v120 = 431;
            _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBFlagLastBuffer set - break out", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 431, "UDPSend_ScreenSharing", 7, 0, "kRFBFlagLastBuffer set - break out");
        goto LABEL_92;
      }

      v47 = sub_1000423E0();
      if (v47)
      {
        v48 = sub_100042E68(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v118 = "UDPSend_ScreenSharing";
          v119 = 1024;
          v120 = 411;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] last buffer not at end of linked list!", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 411, "UDPSend_ScreenSharing", 7, 0, "last buffer not at end of linked list!");
      if ((v28 & 2) != 0)
      {
        goto LABEL_83;
      }

LABEL_77:
      if (v28)
      {
        goto LABEL_162;
      }

LABEL_84:
      if (*(a1 + 3173))
      {
        goto LABEL_92;
      }

      goto LABEL_22;
    }

    v100 = sub_1000423E0();
    if (v100)
    {
      v101 = sub_100042E68(v100);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        v102 = *v16;
        v103 = *(a1 + 16);
        *buf = 136315906;
        v118 = "UDPSend_ScreenSharing";
        v119 = 1024;
        v120 = 259;
        v121 = 2048;
        v122 = v102;
        v123 = 2048;
        v124 = v103;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[%s:%d] p->next %p s->lastFrameBuffer %p", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 259, "UDPSend_ScreenSharing", 5, 0, "p->next %p s->lastFrameBuffer %p", *v16);
  }

  else
  {
    v110 = sub_1000423E0();
    if (v110)
    {
      v111 = sub_100042E68(v110);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v112 = *v24;
        v113 = *(a1 + 16);
        *buf = 136315906;
        v118 = "UDPSend_ScreenSharing";
        v119 = 1024;
        v120 = 236;
        v121 = 2048;
        v122 = v112;
        v123 = 2048;
        v124 = v113;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[%s:%d] p->next %p s->lastFrameBuffer %p", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 236, "UDPSend_ScreenSharing", 5, 0, "p->next %p s->lastFrameBuffer %p", *v24);
  }

  exit(90);
}

uint64_t sub_10002442C(uint64_t a1)
{
  v2 = sub_1000423E0();
  if (v2)
  {
    v3 = sub_100042E68(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "StopUDPSendThread";
      v7 = 1024;
      v8 = 110;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] StopUDPSendThread", &v5, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 110, "StopUDPSendThread", 7, 0, "StopUDPSendThread");
  *(a1 + 3173) = 1;
  return sub_100039C0C(*(a1 + 24));
}

uint64_t sub_100024520(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 84);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 2 * *(a1 + 112);
    v6 = *(a1 + 84);
    if (v5 <= v6)
    {
      v7 = v6 - v5;
      v4 = v7 + 1;
      if (v7 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  sub_1000268A0(a1);
  v8 = *(a1 + 2710);
  v105 = sub_100035FAC();
  v9 = *(a1 + 96);
  if (v9 == -1)
  {
    if (a2)
    {
      goto LABEL_25;
    }

LABEL_10:
    sub_100025268(a1);
LABEL_11:
    v10 = *(a1 + 84);
    v11 = *(a1 + 100);
    v12 = *(a1 + 112);
    if (v10 < v11 + 2 * v12 && (!(v11 + v12) || !*(a1 + 2712)))
    {
      return 0;
    }

    v13 = *(a1 + 96);
    if (v13 == -1)
    {
      goto LABEL_176;
    }

    if (!*(a1 + 2702))
    {
      goto LABEL_179;
    }

    v14 = 0;
    v15 = 0;
    v16 = (*(a1 + 3248) + 68);
    do
    {
      v18 = *v16;
      v16 += 30;
      v17 = v18;
      if (v18 > v15)
      {
        v15 = v17;
      }

      ++v14;
    }

    while (v14 < *(a1 + 2702));
    if (v10 >> 6 >= v15)
    {
LABEL_179:
      if (*(a1 + 2712))
      {
        v19 = v12 >> 1;
        *(a1 + 2712) = 0;
        v82 = *(a1 + 3168);
        v28 = v82 >= 0x3E8;
        v83 = v82 - 1000;
        if (v28)
        {
          *(a1 + 3168) = v83;
        }
      }

      else
      {
        v90 = v13 > v10 - 2 * v12;
        v19 = v12 + (v12 >> 3);
        if (v90)
        {
          LOWORD(v19) = v19 + 1;
        }

        else
        {
          LOWORD(v19) = *(a1 + 112);
        }
      }

      v19 = v19;
      if (v19 >= 0x3Eu)
      {
        v19 = 62;
      }

      v90 = v19 > 8;
      v91 = 8;
      goto LABEL_158;
    }

    if (*(a1 + 2712))
    {
      *(a1 + 2712) = 0;
      v19 = v12 >> 1;
      v20 = *(a1 + 3168) + 2000;
      if (v20 >= 0x4650)
      {
        v20 = 18000;
      }
    }

    else
    {
      LOWORD(v19) = v12 + 1;
      v92 = *(a1 + 3168);
      v28 = v92 >= 0x3E8;
      v20 = v92 - 1000;
      if (!v28)
      {
        goto LABEL_155;
      }
    }

    *(a1 + 3168) = v20;
LABEL_155:
    v19 = v19;
    if (v19 >= 0x28u)
    {
      v19 = 40;
    }

    v90 = v19 > 4;
    v91 = 4;
LABEL_158:
    if (v90)
    {
      v12 = v19;
    }

    else
    {
      v12 = v91;
    }

    [*(a1 + 56) lock];
    if (*(a1 + 2702))
    {
      LODWORD(v93) = 0;
      v94 = 0;
      v95 = (*(a1 + 3248) + 56);
      do
      {
        v97 = *v95;
        v95 += 30;
        v96 = v97;
        if (v97 <= v93)
        {
          v93 = v93;
        }

        else
        {
          v93 = v96;
        }

        ++v94;
      }

      while (v94 < *(a1 + 2702));
      if (v93)
      {
        v98 = 2200000000u * *(a1 + 112) / v93;
        v99 = *(a1 + 3256);
        if (v99)
        {
          v98 = (v99 + (v98 - v99) / 8) & ~((v99 + (v98 - v99) / 8) >> 63);
        }

        *(a1 + 3256) = v98;
      }
    }

    [*(a1 + 56) unlock];
    if (v12 != *(a1 + 112))
    {
      v100 = sub_1000423E0();
      if (v100)
      {
        v101 = sub_100042E68(v100);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          v102 = *(a1 + 112);
          *buf = 136315906;
          v110 = "AdjustReplyInterval";
          v111 = 1024;
          v112 = 709;
          v113 = 1024;
          *v114 = v12;
          *&v114[4] = 1024;
          *&v114[6] = v102;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[%s:%d] new reply interval %d  old %d", buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 709, "AdjustReplyInterval", 7, 0, "new reply interval %d  old %d", v12, *(a1 + 112));
    }

LABEL_176:
    result = 0;
    *(a1 + 112) = v12;
    *(a1 + 100) = *(a1 + 84);
    return result;
  }

  if (!a2 && *(a1 + 84) - v9 + 1 < 2 * *(a1 + 112))
  {
    goto LABEL_10;
  }

LABEL_25:
  v103 = v8;
  v21 = 0;
  v104 = bswap32(v4);
  do
  {
    sub_100025268(a1);
    if ((v21 & 1) != 0 && *(a1 + 2702))
    {
      v22 = 0;
      v23 = *(a1 + 3248) + 48;
      do
      {
        if (*(v23 - 48) != 2 && *(v23 - 4) < v4)
        {
          sched_yield();
          v24 = *(v23 + 4);
          v25 = sub_100035FAC();
          if (!v24)
          {
            *(v23 + 4) = v25;
            v24 = v25;
          }

          if (v25 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          if (v25 - v24 <= 0x1DCD6500)
          {
            v27 = v25;
          }

          else
          {
            v27 = v26;
          }

          v28 = *(a1 + 114) - 5 <= 0xFFFFFFFD && v27 - v24 >= 0x2AEA541;
          if (v28)
          {
            v54 = sub_1000423E0();
            if (v54)
            {
              v55 = sub_100042E68(v54);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v110 = "SendStatusRequests";
                v111 = 1024;
                v112 = 1716;
                v113 = 1024;
                *v114 = v22;
                *&v114[4] = 1024;
                *&v114[6] = v27;
                v115 = 1024;
                v116 = v24;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%s:%d] fatal comm error %x time %u lasttime %u", buf, 0x24u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1716, "SendStatusRequests", 7, 0, "fatal comm error %x time %u lasttime %u", v22, v27, v24);
            *(v23 - 48) = 2;
            *(v23 - 44) = -1;
            ++*(a1 + 2710);
          }

          else
          {
            v29 = *(v23 - 36);
            v30 = (v23 - 12);
            if (!v29)
            {
              v30 = v23;
            }

            v31 = *(v23 + 8);
            if (!v31)
            {
              v30 = (a1 + 104);
            }

            v32 = *v30;
            v33 = 500000 * v29 + 500000 + v31;
            if (v29 > 3)
            {
              v33 = 2500000;
            }

            v34 = 2 * v31;
            if (v29)
            {
              v35 = v33;
            }

            else
            {
              v35 = v34;
            }

            v36 = *(a1 + 108) + v35;
            *(a1 + 108) = 0;
            v37 = *(a1 + 2702);
            if (v37 <= 1)
            {
              v38 = 1000;
            }

            else
            {
              v38 = (v37 << 11) + 5000;
            }

            if (*(v23 - 4) < 0x400u)
            {
              v38 = 500000;
            }

            if (v36 <= v38)
            {
              v36 = v38;
            }

            if (v36 >= 0x2625A0)
            {
              v39 = 2500000;
            }

            else
            {
              v39 = v36;
            }

            if (v27 - v32 > v39)
            {
              v40 = sub_1000423E0();
              if (v40)
              {
                v41 = sub_100042E68(v40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = sub_100035FAC();
                  v43 = *(v23 + 8);
                  v44 = *(a1 + 96);
                  v45 = *(a1 + 112);
                  v46 = *(a1 + 104);
                  v47 = *(v23 - 36);
                  *buf = 136317954;
                  v110 = "SendStatusRequests";
                  v111 = 1024;
                  v112 = 1754;
                  v113 = 1024;
                  *v114 = v22;
                  *&v114[4] = 1024;
                  *&v114[6] = v42;
                  v115 = 1024;
                  v116 = v32;
                  v117 = 1024;
                  v118 = v43;
                  v119 = 1024;
                  v120 = v4;
                  v121 = 1024;
                  v122 = v44;
                  v123 = 1024;
                  v124 = v45;
                  v125 = 1024;
                  v126 = v39;
                  v127 = 1024;
                  v128 = v46;
                  v129 = 1024;
                  v130 = v47;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] send status request %d, %u  stattime %u roundtrip %u for  minpkt %d maxval %u retryinteral %u wait %u 1st %u pend %d", buf, 0x4Eu);
                }
              }

              v48 = sub_100035FAC();
              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1754, "SendStatusRequests", 7, 0, "send status request %d, %u  stattime %u roundtrip %u for  minpkt %d maxval %u retryinteral %u wait %u 1st %u pend %d", v22, v48, v32, *(v23 + 8), v4, *(a1 + 96), *(a1 + 112), v39, *(a1 + 104), *(v23 - 36));
              if (*(v23 + 4) < *v23)
              {
                *(v23 + 4) = sub_100035FAC();
              }

              ++*(v23 - 36);
              v108 = 0;
              v107 = 0;
              v49 = bswap32(*a1);
              v106 = 16777472;
              HIDWORD(v107) = v104;
              LODWORD(v108) = v49;
              ++*(v23 - 46);
              if ((~++dword_100070A8C & 0x1F) == 0)
              {
                v50 = sub_1000423E0();
                if (v50)
                {
                  v51 = sub_100042E68(v50);
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v110 = "SendStatusRequestPacket";
                    v111 = 1024;
                    v112 = 1809;
                    v113 = 1024;
                    *v114 = dword_100070A8C;
                    *&v114[4] = 1024;
                    *&v114[6] = v4;
                    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] status request count %d  packetIndex %d", buf, 0x1Eu);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1809, "SendStatusRequestPacket", 7, 0, "status request count %d  packetIndex %d", dword_100070A8C, v4);
              }

              v52 = sub_1000423E0();
              if (v52)
              {
                v53 = sub_100042E68(v52);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v110 = "SendStatusRequestPacket";
                  v111 = 1024;
                  v112 = 1815;
                  v113 = 1024;
                  *v114 = v4;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%s:%d] send status requst - min packet should be %u", buf, 0x18u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1815, "SendStatusRequestPacket", 7, 0, "send status requst - min packet should be %u", v4);
              sub_1000264F4(a1, (v23 + 44), &v106, 20);
              *(v23 - 12) = sub_100035FAC();
              ++*(a1 + 3184);
            }
          }
        }

        ++v22;
        v23 += 120;
      }

      while (v22 < *(a1 + 2702));
    }

    if (*(a1 + 3173))
    {
      v84 = sub_1000423E0();
      if (v84)
      {
        v85 = sub_100042E68(v84);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v110 = "ValidatePackets";
          v111 = 1024;
          v112 = 1982;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[%s:%d] ValidatePackets - terminateThreadFlag", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1982, "ValidatePackets", 7, 0, "ValidatePackets - terminateThreadFlag");
      return 4294967294;
    }

    v56 = *(a1 + 3248);
    v57 = sub_100035FAC();
    v58 = *(a1 + 2702);
    if (!v58)
    {
      goto LABEL_110;
    }

    v59 = v57;
    v60 = 0;
    v61 = 0;
    v62 = (v56 + 36);
    v63 = -1;
    do
    {
      v64 = v62[2];
      if (v64 < v4)
      {
        if (*(a1 + 92) <= v64)
        {
          if (*(v62 - 17))
          {
            v65 = *v62;
          }

          else
          {
            v65 = *(a1 + 1144 + 4 * (v4 & 0x7F));
            if (v59 < v65)
            {
              v66 = sub_1000423E0();
              if (v66)
              {
                v67 = sub_100042E68(v66);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v110 = "GetMinTimeoutNeeded";
                  v111 = 1024;
                  v112 = 923;
                  v113 = 1024;
                  *v114 = v59;
                  *&v114[4] = 1024;
                  *&v114[6] = v65;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%s:%d] curtime %u senttime %u", buf, 0x1Eu);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 923, "GetMinTimeoutNeeded", 7, 0, "curtime %u senttime %u", v59, v65);
            }
          }
        }

        else if (*(a1 + 88) <= *v62)
        {
          v65 = *v62;
        }

        else
        {
          v65 = *(a1 + 88);
        }

        v68 = v62[7];
        if (!v68)
        {
          v68 = 250000;
          v62[7] = 250000;
        }

        v69 = v59 - v65;
        v70 = v68 << *(v62 - 17);
        if (*(v62 - 17))
        {
          v60 = 1;
        }

        v71 = v70 - v69;
        if (v70 - v69 >= v63)
        {
          v71 = v63;
        }

        if (v70 > v69)
        {
          v63 = v71;
        }
      }

      ++v61;
      v62 += 30;
    }

    while (v61 < *(a1 + 2702));
    LOBYTE(v58) = v60 != 0;
    v72 = v63 >= 0x16E360 ? 1500000 : v63;
    if (v63 == -1)
    {
LABEL_110:
      v72 = 50000;
    }

    if (((v72 >> 5 < 0x271) & v58) != 0)
    {
      v73 = 20000;
    }

    else
    {
      v73 = v72;
    }

    if (v73 >= 0x1389)
    {
      sub_100035FAC();
      *(a1 + 3175) = 1;
      sub_100039D00(*(a1 + 40), v73 >> 10);
      v74 = sub_1000423E0();
      if (v74)
      {
        v75 = sub_100042E68(v74);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v110 = "ValidatePackets";
          v111 = 1024;
          v112 = 1998;
          v113 = 2048;
          *v114 = v73 >> 10;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%s:%d] waited for %lu", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1998, "ValidatePackets", 7, 0, "waited for %lu", v73 >> 10);
      *(a1 + 3175) = 0;
      if (sub_100035FAC() - v105 >= 0x4C4B41)
      {
        sub_100025AFC(a1);
        v105 = sub_100035FAC();
      }
    }

    sub_100025268(a1);
    sub_1000268A0(a1);
    v76 = *(a1 + 2710);
    v77 = *(a1 + 2702);
    if (v76 >= v77)
    {
      break;
    }

    v78 = *(a1 + 96);
    v21 = 1;
  }

  while (v78 == -1 || v78 < v4);
  if (v76 != v77 && (!*(a1 + 2710) || *(a1 + 3172)))
  {
    if (v76 > v103)
    {
      v86 = *(a1 + 3248);
      v87 = sub_100035FAC();
      v88 = *(a1 + 2702);
      if (*(a1 + 2702))
      {
        v89 = 0;
        do
        {
          if (*v86 != 2)
          {
            *(v86 + 52) = v87;
          }

          v86 += 120;
          ++v89;
        }

        while (v89 < v88);
      }
    }

    goto LABEL_11;
  }

  v79 = sub_1000423E0();
  if (v79)
  {
    v80 = sub_100042E68(v79);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v110 = "ValidatePackets";
      v111 = 1024;
      v112 = 2032;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[%s:%d] ValidatePackets - gave up", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 2032, "ValidatePackets", 7, 0, "ValidatePackets - gave up");
  return 0xFFFFFFFFLL;
}

void sub_100025268(id *result)
{
  v1 = *(result + 21);
  if (!v1)
  {
    return;
  }

  v3 = v1 < 0x81 ? 1 : v1 - 127;
  v73[0] = 0;
  v73[1] = 0;
  if (!*(result + 1351))
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v60 = 0;
  v7 = result[406];
  do
  {
    v8 = [result[7] lock];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000423E0();
      if (v10)
      {
        v11 = sub_100042E68(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v65 = "SendMissedPackets";
          v66 = 1024;
          v67 = 1127;
          v68 = 1024;
          v69 = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1127, "SendMissedPackets", 7, 0, "*****enter cr err %d", v9);
    }

    if (*v7 != 1)
    {
      v27 = v6;
      goto LABEL_42;
    }

    v56 = v5;
    v61 = v6 + 1;
    v12 = v60;
    if (!v6)
    {
      v12 = (v7 + 92);
    }

    v60 = v12;
    v13 = *(v7 + 10);
    v14 = *(v7 + 8);
    __memcpy_chk();
    if (!*(v7 + 8))
    {
      v16 = 0;
LABEL_40:
      *(v7 + 68) = vadd_s32(*(v7 + 68), vdup_n_s32(v16));
      goto LABEL_41;
    }

    v15 = 0;
    v16 = 0;
    v17 = v13 - 8 * v14 + 1;
    v18 = v72;
    v57 = &v72[(*(v7 + 8) - 1)];
    v19 = v72;
    while (1)
    {
      v20 = *v19;
      v58 = v19 + 1;
      v59 = v18;
      if (*v19)
      {
        break;
      }

      v17 += 8;
LABEL_32:
      v19 = v58;
      v18 = v58;
      if (v59 == v57)
      {
        goto LABEL_40;
      }
    }

    v21 = 0;
    v22 = 128;
    while ((v22 & v20) == 0)
    {
LABEL_28:
      ++v17;
      v22 >>= 1;
      v26 = v21++ >= 7;
      if (v26)
      {
        goto LABEL_32;
      }
    }

    v23 = *(result + 21);
    v24 = sub_1000423E0();
    if (v17 <= v23)
    {
      if (v24)
      {
        v25 = sub_100042E68(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v65 = "SendMissedPackets";
          v66 = 1024;
          v67 = 1171;
          v68 = 1024;
          v69 = v17;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] missed %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1171, "SendMissedPackets", 7, 0, "missed %d", v17);
      if (!v15 && v17 - 1 > *(v7 + 11))
      {
        *(v7 + 11) = v17 - 1;
      }

      ++v16;
      v15 = 1;
      *(v73 + ((v17 - v3) >> 3)) |= 1 << (~(v17 - v3) & 7);
      goto LABEL_28;
    }

    if (v24)
    {
      v28 = sub_100042E68(v24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(result + 21);
        *buf = 136315906;
        v65 = "SendMissedPackets";
        v66 = 1024;
        v67 = 1168;
        v68 = 1024;
        v69 = v17;
        v70 = 1024;
        v71 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] Too large value %u %u ", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1168, "SendMissedPackets", 7, 0, "Too large value %u %u ", v17, *(result + 21));
LABEL_41:
    v4 = 1;
    v27 = v61;
    v5 = v56;
LABEL_42:
    v30 = [result[7] unlock];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1000423E0();
      if (v32)
      {
        v33 = sub_100042E68(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v65 = "SendMissedPackets";
          v66 = 1024;
          v67 = 1211;
          v68 = 1024;
          v69 = v31;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1211, "SendMissedPackets", 7, 0, "****exit cr err %d", v31);
    }

    v7 += 120;
    ++v5;
    v6 = v27;
  }

  while (v5 < *(result + 1351));
  if (v4)
  {
    v34 = 0;
    v35 = result + 207;
    v36 = result + 271;
    v62 = v27;
    do
    {
      v63 = v34;
      v37 = *(v73 + v34);
      if (*(v73 + v34))
      {
        v38 = 0;
        v39 = 128;
        do
        {
          if ((v39 & v37) != 0)
          {
            ++*(result + 794);
            if (v3 > *(result + 23))
            {
              *(result + 23) = v3;
            }

            *(result + 2712) = 1;
            if (v3 != *(v35 + (v3 & 0x7F)))
            {
              v40 = sub_1000423E0();
              if (v40)
              {
                v41 = sub_100042E68(v40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  v42 = *(v35 + (v3 & 0x7F));
                  *buf = 136315906;
                  v65 = "SendMissedPackets";
                  v66 = 1024;
                  v67 = 1249;
                  v68 = 1024;
                  v69 = v3;
                  v70 = 1024;
                  v71 = v42;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%s:%d] wrong packet index %u %u ", buf, 0x1Eu);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1249, "SendMissedPackets", 1, 0, "wrong packet index %u %u ", v3, *(v35 + (v3 & 0x7F)));
              LOWORD(v27) = v62;
            }

            if (v27 == 1)
            {
              sub_1000264F4(result, v60, result[(v3 & 0x7F) + 15], *(v36 + (v3 & 0x7F)));
              if ((~++dword_100070A90 & 0x1F) == 0)
              {
                v43 = sub_1000423E0();
                if (v43)
                {
                  v44 = sub_100042E68(v43);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v65 = "SendMissedPackets";
                    v66 = 1024;
                    v67 = 1261;
                    v68 = 1024;
                    v69 = dword_100070A90;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] missed packet count %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1261, "SendMissedPackets", 7, 0, "missed packet count %d", dword_100070A90);
                LOWORD(v27) = v62;
              }
            }

            else
            {
              sub_100025D40(result, result[(v3 & 0x7F) + 15], *(v36 + (v3 & 0x7F)));
            }
          }

          v39 >>= 1;
          ++v3;
          v26 = v38++ >= 7;
        }

        while (!v26);
      }

      else
      {
        v3 += 8;
      }

      v34 = v63 + 1;
    }

    while (v63 != 15);
    v45 = result[406];
    v46 = [result[7] lock];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1000423E0();
      if (v48)
      {
        v49 = sub_100042E68(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v65 = "SendMissedPackets";
          v66 = 1024;
          v67 = 1282;
          v68 = 1024;
          v69 = v47;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1282, "SendMissedPackets", 7, 0, "*****enter cr err %d", v47);
    }

    v50 = *(result + 1351);
    if (*(result + 1351))
    {
      v51 = 0;
      do
      {
        if (*v45 == 1)
        {
          *v45 = 0;
        }

        v45 += 60;
        ++v51;
      }

      while (v51 < v50);
    }

    v52 = [result[7] unlock];
    if (v52)
    {
      v53 = v52;
      v54 = sub_1000423E0();
      if (v54)
      {
        v55 = sub_100042E68(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v65 = "SendMissedPackets";
          v66 = 1024;
          v67 = 1293;
          v68 = 1024;
          v69 = v53;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1293, "SendMissedPackets", 7, 0, "****exit cr err %d", v53);
    }
  }
}

void sub_100025AFC(uint64_t a1)
{
  *&v16[6] = 0;
  *v16 = 0;
  v15 = 67109120;
  v2 = bswap32(*a1);
  v17 = 0;
  *&v16[4] = bswap32(*(a1 + 84));
  *&v16[8] = v2;
  sub_100025D40(a1, &v15, 20);
  v3 = sub_100035FAC();
  if (*(a1 + 2702))
  {
    v4 = v3;
    v5 = 0;
    v6 = *(a1 + 3248);
    do
    {
      if (*v6 == 1)
      {
        v7 = [*(a1 + 56) lock];
        if (v7)
        {
          v8 = v7;
          v9 = sub_1000423E0();
          if (v9)
          {
            v10 = sub_100042E68(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v19 = "SendTicklePacket";
              v20 = 1024;
              v21 = 1856;
              v22 = 1024;
              v23 = v8;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter cr err %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1856, "SendTicklePacket", 7, 0, "*****enter cr err %d", v8);
        }

        *(v6 + 48) = v4;
        v11 = [*(a1 + 56) unlock];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1000423E0();
          if (v13)
          {
            v14 = sub_100042E68(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v19 = "SendTicklePacket";
              v20 = 1024;
              v21 = 1860;
              v22 = 1024;
              v23 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1860, "SendTicklePacket", 7, 0, "****exit cr err %d", v12);
        }
      }

      v6 += 120;
      ++v5;
    }

    while (v5 < *(a1 + 2702));
  }
}

uint64_t sub_100025D40(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 2702);
  if (*(result + 2702))
  {
    v7 = 0;
    v8 = (*(result + 3248) + 8);
    v9 = -1;
    do
    {
      if (*v8 < v9)
      {
        v9 = *v8;
      }

      *v8 = -1;
      v8 += 30;
      ++v7;
    }

    while (v7 < v6);
    if (v9 <= 0x3D08F)
    {
      v10 = 280000 - v9;
      v11 = sub_1000423E0();
      if (v11)
      {
        v12 = sub_100042E68(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v68 = "SendPacketToAllReceivers";
          v69 = 1024;
          v70 = 1542;
          v71 = 1024;
          v72 = (4294968 * v10) >> 32;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] *wait %u milliseconds", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1542, "SendPacketToAllReceivers", 7, 0, "*wait %u milliseconds", (4294968 * v10) >> 32);
      result = usleep(v10);
      *(v5 + 108) += v10;
    }
  }

  v13 = *(v5 + 84);
  if (v13 >= 0x65 && *(v5 + 3176) > v13 >> 2)
  {
    v14 = *(v5 + 2702);
    if (*(v5 + 2702))
    {
      v15 = 0;
      v16 = (*(v5 + 3248) + 92);
      do
      {
        if (*&v16[-6].sa_data[2] != 2)
        {
          result = sub_1000264F4(v5, v16, a2, a3);
          v14 = *(v5 + 2702);
        }

        ++v15;
        v16 = (v16 + 120);
      }

      while (v15 < v14);
    }

    return result;
  }

  v17 = *(v5 + 3232);
  result = sub_100035FAC();
  v18 = bswap32(result);
  if (!result)
  {
    v18 = 0x1000000;
  }

  a2[1] = v18;
  v19 = *(v5 + 2716);
  if (v19)
  {
    v20 = 0;
    v21 = v5 + 2720;
    v66 = a2;
    do
    {
      if (v19 >= 2)
      {
        v22 = (v21 + 4 * v20);
        if (setsockopt(*(v5 + 2696), 0, 9, v22, 4u))
        {
          v23 = sub_1000423E0();
          if (v23)
          {
            v24 = sub_100042E68(v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = v21;
              v26 = *v22;
              v27 = *__error();
              v28 = __error();
              v29 = strerror(*v28);
              *buf = 136316162;
              v68 = "SendPacketToAllReceivers";
              v69 = 1024;
              v70 = 1581;
              v71 = 1024;
              v72 = v26;
              v21 = v25;
              a2 = v66;
              v73 = 1024;
              *v74 = v27;
              *&v74[4] = 2080;
              *&v74[6] = v29;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%s:%d] SendPacketToAllReceivers - unable to set outgoing interface %x err %d %s", buf, 0x28u);
            }
          }

          v30 = *v22;
          v31 = *__error();
          v32 = __error();
          v33 = strerror(*v32);
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1581, "SendPacketToAllReceivers", 3, 0, "SendPacketToAllReceivers - unable to set outgoing interface %x err %d %s", v30, v31, v33);
        }
      }

      v34 = *(v5 + 3240);
      v35 = *(v5 + 2696);
      v36 = (v5 + 3120);
      if (v34)
      {
        v37 = v34(v35, v36, a2, a3, v5);
      }

      else
      {
        v37 = sub_100035FD8(v35, v36, a2, a3);
      }

      v38 = v37;
      if (v37)
      {
        v39 = sub_1000423E0();
        if (v39)
        {
          v40 = sub_100042E68(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = *__error();
            v42 = __error();
            v43 = strerror(*v42);
            *buf = 136316162;
            v68 = "SendPacketToAllReceivers";
            v69 = 1024;
            v70 = 1591;
            v71 = 1024;
            v72 = v38;
            v73 = 1024;
            *v74 = v41;
            *&v74[4] = 2080;
            *&v74[6] = v43;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "[%s:%d] SendPacketToAllReceivers multicast error %d %d %s", buf, 0x28u);
          }
        }

        v44 = *__error();
        v45 = __error();
        v46 = strerror(*v45);
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1591, "SendPacketToAllReceivers", 3, 0, "SendPacketToAllReceivers multicast error %d %d %s", v38, v44, v46);
      }

      result = sub_1000266CC(v5, a3);
      ++v20;
      v19 = *(v5 + 2716);
    }

    while (v19 > v20);
  }

  v47 = *(v5 + 114);
  if ((v47 - 3) >= 2)
  {
    if ((v47 - 1) > 1 || !*(v5 + 2700))
    {
      return result;
    }

    v48 = 0;
    while (1)
    {
      v49 = *(v5 + 3240);
      v50 = *(v5 + 2696);
      if (v49)
      {
        if (v49(v50, v17, a2, a3, v5))
        {
          goto LABEL_46;
        }
      }

      else if (sub_100035FD8(v50, v17, a2, a3))
      {
LABEL_46:
        v51 = sub_1000423E0();
        if (v51)
        {
          v52 = sub_100042E68(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v53 = *__error();
            v54 = __error();
            v55 = strerror(*v54);
            *buf = 136315906;
            v68 = "SendPacketToAllReceivers";
            v69 = 1024;
            v70 = 1611;
            v71 = 1024;
            v72 = v53;
            v73 = 2080;
            *v74 = v55;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "[%s:%d] SendPacketToAllReceivers  error %d %s", buf, 0x22u);
          }
        }

        v56 = *__error();
        v57 = __error();
        v58 = strerror(*v57);
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1611, "SendPacketToAllReceivers", 3, 0, "SendPacketToAllReceivers  error %d %s", v56, v58);
      }

      v17 = (v17 + v17->sa_len);
      result = sub_1000266CC(v5, a3);
      if (++v48 >= *(v5 + 2700))
      {
        return result;
      }
    }
  }

  if (*(v5 + 3272))
  {
    sub_1000020A8(*(v5 + 3264), a2, a3);
  }

  else
  {
    if (*(v5 + 115))
    {
      v59 = a2;
      v60 = 0;
      sa_len = 0;
    }

    else
    {
      v60 = *(v5 + 3232);
      sa_len = v60->sa_len;
      v59 = a2;
    }

    sendto(*(v5 + 2696), v59, a3, 0, v60, sa_len);
  }

  v62 = *(v5 + 3168);
  if (v62)
  {
    usleep(v62);
    v63 = sub_1000423E0();
    if (v63)
    {
      v64 = sub_100042E68(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = *(v5 + 3168);
        *buf = 136315650;
        v68 = "SendPacketToAllReceivers";
        v69 = 1024;
        v70 = 1647;
        v71 = 1024;
        v72 = v65;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[%s:%d] waited %u", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1647, "SendPacketToAllReceivers", 7, 0, "waited %u", *(v5 + 3168));
  }

  return sub_1000266CC(v5, a3);
}

void sub_100026438(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  v8 = bswap32(*(a2 + 8));
  [*(a1 + 56) lock];
  v9 = a1 + 8 * (v8 & 0x7F);
  v10 = *(v9 + 120);
  *(v9 + 120) = a2;
  v11 = a1 + 4 * (v8 & 0x7F);
  *(v11 + 1144) = bswap32(*(a2 + 4));
  *(v11 + 1656) = v8;
  v12 = a1 + 2 * (v8 & 0x7F);
  *(v12 + 2168) = a3;
  *(v12 + 2424) = a4;
  [*(a1 + 56) unlock];
  if (v10)
  {

    free(v10);
  }
}

uint64_t sub_1000264F4(uint64_t a1, sockaddr *a2, _DWORD *a3, uint64_t a4)
{
  v8 = sub_100035FAC();
  v9 = bswap32(v8);
  if (!v8)
  {
    v9 = 0x1000000;
  }

  a3[1] = v9;
  v10 = *(a1 + 114);
  if ((v10 - 3) < 2)
  {
    v13 = sub_1000423E0();
    if (v13)
    {
      v14 = sub_100042E68(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = bswap32(a3[2]);
        *buf = 136315650;
        v21 = "SendPacketToOneReceiver";
        v22 = 1024;
        v23 = 1414;
        v24 = 1024;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] send packet to one index %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 1414, "SendPacketToOneReceiver", 7, 0, "send packet to one index %d", bswap32(a3[2]));
    if (*(a1 + 3272))
    {
      sub_1000020A8(*(a1 + 3264), a3, a4);
    }

    else
    {
      if (*(a1 + 115))
      {
        v16 = a3;
        v17 = 0;
        sa_len = 0;
      }

      else
      {
        v17 = *(a1 + 3232);
        sa_len = v17->sa_len;
        v16 = a3;
      }

      sendto(*(a1 + 2696), v16, a4, 0, v17, sa_len);
    }
  }

  else if ((v10 - 1) <= 1)
  {
    v11 = *(a1 + 3240);
    v12 = *(a1 + 2696);
    if (v11)
    {
      v11(v12, a2, a3, a4, a1);
    }

    else
    {
      sub_100035FD8(v12, a2, a3, a4);
    }
  }

  return sub_1000266CC(a1, a4);
}

uint64_t sub_1000266CC(uint64_t result, int a2)
{
  v2 = *(result + 3152);
  if (v2)
  {
    v4 = result;
    v5 = (v2 >> 1) - (v2 >> 6);
    if (!*(result + 3156))
    {
      result = sub_100035FAC();
      *(v4 + 3156) = result;
    }

    v6 = *(v4 + 3160) + a2;
    *(v4 + 3160) = v6;
    if (v6 >= v5)
    {
      v7 = *(v4 + 3156) - sub_100035FAC();
      if (v7 < 0xFFF85EE0)
      {
        result = sub_100035FAC();
        v8 = 0;
      }

      else
      {
        v8 = *(v4 + 3160) - v5;
        v9 = v8 * 500000.0 / v5 + v8 * 500000.0 / v5;
        v10 = ((v7 + 500000) + v9);
        v11 = sub_1000423E0();
        if (v11)
        {
          v12 = sub_100042E68(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v14 = "CheckBandwidthLimits";
            v15 = 1024;
            v16 = 798;
            v17 = 1024;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] will sleep for %u", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 798, "CheckBandwidthLimits", 7, 0, "will sleep for %u", v10);
        usleep(v10);
        result = ((v9 + 500000.0) + *(v4 + 3156));
      }

      *(v4 + 3156) = result;
      *(v4 + 3160) = v8;
    }
  }

  return result;
}

void sub_1000268A0(uint64_t a1)
{
  v2 = [*(a1 + 56) lock];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = "UpdateValidatedPacketID";
        v18 = 1024;
        v19 = 2071;
        v20 = 1024;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] UpdateValidatedPacketID enter cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 2071, "UpdateValidatedPacketID", 7, 0, "UpdateValidatedPacketID enter cr err %d", v3);
  }

  if (*(a1 + 2702))
  {
    v6 = 0;
    v7 = *(a1 + 96);
    v8 = *(a1 + 3248);
    v9 = -1;
    do
    {
      if (*v8 != 2 && *(v8 + 44) < v9)
      {
        v9 = *(v8 + 44);
      }

      v8 += 120;
      ++v6;
    }

    while (v6 < *(a1 + 2702));
    *(a1 + 96) = v9;
    if (v9 != -1 && v9 > v7)
    {
      v10 = v7 + 1;
      v11 = *(a1 + 3208);
      do
      {
        v11 += *(a1 + 2424 + 2 * (v10++ & 0x7F));
      }

      while (v10 <= v9);
      *(a1 + 3208) = v11;
    }
  }

  else
  {
    *(a1 + 96) = -1;
  }

  v12 = [*(a1 + 56) unlock];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = "UpdateValidatedPacketID";
        v18 = 1024;
        v19 = 2085;
        v20 = 1024;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] UpdateValidatedPacketID exit cr err %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPSend.c", 100, 2085, "UpdateValidatedPacketID", 7, 0, "UpdateValidatedPacketID exit cr err %d", v13);
  }
}

void sub_100026AE4(id a1, void *a2)
{
  v4 = [qword_100070AF8 copy];
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      *buf = 136315650;
      v45 = "InvitationCallback";
      v46 = 1024;
      v47 = 76;
      v48 = 2048;
      v49 = *&v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] invitation callback called  count %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 76, "InvitationCallback", 7, 0, "invitation callback called  count %ld", [v4 count]);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      v11 = 0;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * v11);
        v13 = sub_1000423E0();
        if (v13)
        {
          v14 = sub_100042E68(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v45 = "InvitationCallback";
            v46 = 1024;
            v47 = 79;
            v48 = 2048;
            v49 = *&v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] invitation callback session controller %p", buf, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 79, "InvitationCallback", 7, 0, "invitation callback session controller %p", v12);
        if ([v12 invitationNotification] == a1)
        {
          v15 = sub_1000423E0();
          if (v15)
          {
            v16 = sub_100042E68(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v45 = "InvitationCallback";
              v46 = 1024;
              v47 = 83;
              v48 = 2048;
              v49 = *&a2;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] found notification  %lx", buf, 0x1Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 83, "InvitationCallback", 7, 0, "found notification  %lx", a2);
          v17 = [v12 notificationTimeoutTimer];
          [v17 invalidate];

          [v12 setNotificationTimeoutTimer:0];
          CFRelease(a1);
          [v12 setInvitationNotification:0];
          [qword_100070AF8 removeObject:v12];
          v18 = sub_1000423E0();
          if (a2 == 1)
          {
            if (v18)
            {
              v29 = sub_100042E68(v18);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v45 = "InvitationCallback";
                v46 = 1024;
                v47 = 99;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] alternate response - user declined", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 99, "InvitationCallback", 7, 0, "alternate response - user declined");
            v30 = v12;
            v31 = @"UserDeclined";
            goto LABEL_58;
          }

          if (a2 == 3)
          {
            if (v18)
            {
              v20 = sub_100042E68(v18);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v45 = "InvitationCallback";
                v46 = 1024;
                v47 = 105;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification was cancelled", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 105, "InvitationCallback", 7, 0, "notification was cancelled");
            v21 = +[NSDate date];
            v22 = [v12 notificationStartTime];
            [v21 timeIntervalSinceDate:v22];
            v24 = v23;

            v25 = sub_1000423E0();
            if (v25)
            {
              v26 = sub_100042E68(v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v45 = "InvitationCallback";
                v46 = 1024;
                v47 = 107;
                v48 = 2048;
                v49 = v24;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] timeUsed = %f", buf, 0x1Cu);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 107, "InvitationCallback", 7, 0, "timeUsed = %f", v24);
            if ([v12 notificationTimedOut])
            {
              v27 = sub_1000423E0();
              if (v27)
              {
                v28 = sub_100042E68(v27);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v45 = "InvitationCallback";
                  v46 = 1024;
                  v47 = 111;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] notification timed out", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 111, "InvitationCallback", 7, 0, "notification timed out");
LABEL_57:
              v30 = v12;
              v31 = @"UserDidNotAnswer";
LABEL_58:
              [v30 doDeclineIDSInvitationWithReasonString:v31];
              goto LABEL_59;
            }

            v33 = MKBGetDeviceLockState() - 1;
            v34 = sub_1000423E0();
            if (v33 <= 1)
            {
              if (v34)
              {
                v35 = sub_100042E68(v34);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v45 = "InvitationCallback";
                  v46 = 1024;
                  v47 = 118;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is still locked?", buf, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 118, "InvitationCallback", 7, 0, "screen is still locked?");
              goto LABEL_57;
            }

            if (v34)
            {
              v36 = sub_100042E68(v34);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v45 = "InvitationCallback";
                v46 = 1024;
                v47 = 123;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen was locked and is now unlocked  post new notification", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 123, "InvitationCallback", 7, 0, "screen was locked and is now unlocked  post new notification");
            [v12 postInvitationNotification];
          }

          else if (a2 == 2)
          {
            if (v18)
            {
              v19 = sub_100042E68(v18);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v45 = "InvitationCallback";
                v46 = 1024;
                v47 = 92;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] other response - user accepted", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 92, "InvitationCallback", 7, 0, "other response - user accepted");
            [v12 doAcceptIDSInvitation];
          }

          else
          {
            if (v18)
            {
              v32 = sub_100042E68(v18);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v45 = "InvitationCallback";
                v46 = 1024;
                v47 = 129;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected response", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 129, "InvitationCallback", 7, 0, "unexpected response");
          }
        }

LABEL_59:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v37 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      v9 = v37;
    }

    while (v37);
  }
}

id sub_1000273A0(uint64_t a1)
{
  if (a1)
  {
    v10 = 0;
    v11 = 0;
    v1 = [NSPropertyListSerialization propertyListWithData:a1 options:0 format:&v11 error:&v10];
    v2 = v10;
    if (v2)
    {
      v3 = sub_1000423E0();
      if (v3)
      {
        v4 = sub_100042E68(v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = [v2 description];
          v6 = [v5 UTF8String];
          *buf = 136315650;
          v13 = "DataToDictionary";
          v14 = 1024;
          v15 = 149;
          v16 = 2080;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] error: %s", buf, 0x1Cu);
        }
      }

      v7 = [v2 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 149, "DataToDictionary", 3, 0, "error: %s", [v7 UTF8String]);

      v8 = 0;
    }

    else
    {
      v8 = v1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100027558(uint64_t a1)
{
  if (a1)
  {
    v10 = 0;
    v1 = [NSPropertyListSerialization dataWithPropertyList:a1 format:100 options:0 error:&v10];
    v2 = v10;
    if (v2)
    {
      v3 = sub_1000423E0();
      if (v3)
      {
        v4 = sub_100042E68(v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = [v2 description];
          v6 = [v5 UTF8String];
          *buf = 136315650;
          v12 = "DictionaryToData";
          v13 = 1024;
          v14 = 166;
          v15 = 2080;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s:%d] error: %s", buf, 0x1Cu);
        }
      }

      v7 = [v2 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/IDSSessionEmbeddedControllerBase.m", 125, 166, "DictionaryToData", 3, 0, "error: %s", [v7 UTF8String]);

      v8 = 0;
    }

    else
    {
      v8 = v1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100028958(id a1)
{
  qword_100070AF8 = +[NSMutableSet set];

  _objc_release_x1();
}

uint64_t sub_10002DA9C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "WriteDataToViewer";
      v22 = 1024;
      v23 = 397;
      v24 = 1024;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] write data to viewer %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 397, "WriteDataToViewer", 7, 0, "write data to viewer %d", v3);
  v8 = *(a1 + 2480);
  if (v8)
  {
    [0 lock];
    v9 = malloc_type_malloc(v3 + 14, 0x108004043D1B9D8uLL);
    *v9 = 0;
    v9[6] = 2;
    *(v9 + 2) = v3;
    memcpy(v9 + 7, a2, v3);
    [*(v8 + 32) lock];
    *(v8 + 3192) += v3;
    v10 = *(v8 + 8);
    if (v10)
    {
      **(v8 + 16) = v9;
    }

    else
    {
      *(v8 + 8) = v9;
    }

    *(v8 + 16) = v9;
    v14 = [*(v8 + 32) unlock];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1000423E0();
      if (v16)
      {
        v17 = sub_100042E68(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v21 = "WriteDataToViewer";
          v22 = 1024;
          v23 = 428;
          v24 = 1024;
          v25 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] ****exit cr err %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 428, "WriteDataToViewer", 7, 0, "****exit cr err %d", v15);
    }

    if (!v10)
    {
      sub_100039C0C(*(v8 + 24));
      v18 = sub_1000423E0();
      if (v18)
      {
        v19 = sub_100042E68(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v21 = "WriteDataToViewer";
          v22 = 1024;
          v23 = 432;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] signalled semaphore", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 432, "WriteDataToViewer", 7, 0, "signalled semaphore");
    }

    [0 unlock];
    return 0;
  }

  else
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "WriteDataToViewer";
        v22 = 1024;
        v23 = 439;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%s:%d] send info not set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 439, "WriteDataToViewer", 3, 0, "send info not set");
    return 4294967294;
  }
}

void sub_10002E738(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 2480);
  if (v3)
  {
    [0 lock];
    [*(v3 + 32) lock];
    *(v3 + 3192) += a2[2];
    if (*(v3 + 8))
    {
      **(v3 + 16) = a2;
      *(v3 + 16) = a2;
      [*(v3 + 32) unlock];
    }

    else
    {
      *(v3 + 8) = a2;
      *(v3 + 16) = a2;
      [*(v3 + 32) unlock];
      sub_100039C0C(*(v3 + 24));
    }

    [0 unlock];
  }

  else
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "SendBufferToViewer";
        v8 = 1024;
        v9 = 1636;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%s:%d] udp buffer not set", &v6, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1636, "SendBufferToViewer", 3, 0, "udp buffer not set");
    free(a2);
  }
}

double sub_100030E90(uint64_t a1)
{
  v2 = sub_1000423E0();
  if (v2)
  {
    v3 = sub_100042E68(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 159);
      v5 = *(a1 + 160);
      *buf = 136315906;
      v38 = "EncodeDisplayInfo";
      v39 = 1024;
      v40 = 1347;
      v41 = 1024;
      *v42 = v4;
      *&v42[4] = 1024;
      *&v42[6] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] EncodeDisplayInfo %d %d", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1347, "EncodeDisplayInfo", 7, 0, "EncodeDisplayInfo %d %d", *(a1 + 159), *(a1 + 160));
  if (*(a1 + 160))
  {
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v39 = 1024;
        v40 = 1469;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] DispayInfo2Encoding", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1469, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "DispayInfo2Encoding");
    v8 = malloc_type_calloc(1uLL, 0x6CuLL, 0x108004043D1B9D8uLL);
    *(v8 + 30) = 50351104;
    *(v8 + 25) = 256;
    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v39 = 1024;
        v40 = 1480;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] set dsplay count", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1480, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "set dsplay count");
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v39 = 1024;
        v40 = 1490;
        v41 = 1024;
        *v42 = 544;
        *&v42[4] = 1024;
        *&v42[6] = 960;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] got screen bounds %d %d", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1490, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "got screen bounds %d %d", 544, 960);
    v13 = sub_1000423E0();
    if (v13)
    {
      v14 = sub_100042E68(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v39 = 1024;
        v40 = 1495;
        v41 = 1024;
        *v42 = 0;
        *&v42[4] = 1024;
        *&v42[6] = 0;
        v43 = 1024;
        v44 = 960;
        v45 = 1024;
        v46 = 544;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] global pixels %d %d %d %d", buf, 0x2Au);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1495, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "global pixels %d %d %d %d", 0, 0, 960, 544);
    v15 = sub_1000423E0();
    if (v15)
    {
      v16 = sub_100042E68(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v39 = 1024;
        v40 = 1497;
        v41 = 1024;
        *v42 = 0;
        *&v42[4] = 1024;
        *&v42[6] = 0;
        v43 = 1024;
        v44 = 960;
        v45 = 1024;
        v46 = 544;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] global points %d %d %d %d", buf, 0x2Au);
      }
    }

    v17 = 544;
    v18 = 960;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1497, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "global points %d %d %d %d", 0, 0, 960, 544);
    *(v8 + 34) = -1073537022;
    if (*(a1 + 1394))
    {
      v19 = *(a1 + 1400);
      v17 = llround(v19 * -0.0 + v19 * 544.0);
      v18 = llround(v19 * -0.0 + v19 * 960.0);
      v20 = sub_1000423E0();
      if (v20)
      {
        v21 = sub_100042E68(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
          v39 = 1024;
          v40 = 1512;
          v41 = 1024;
          *v42 = v17;
          *&v42[4] = 1024;
          *&v42[6] = v18;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] %d  %d", buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1512, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "%d  %d", v17, v18);
    }

    *(v8 + 19) = bswap32(v17) >> 16;
    *(v8 + 20) = bswap32(v18) >> 16;
    *(v8 + 42) = 0x1000000;
    *(v8 + 14) = 0x1000000;
    *(v8 + 18) = 0;
    *(v8 + 26) = 1359216640;
    *(v8 + 25) = 256;
    *(v8 + 52) = 0x3FF0000000000000;
    v28 = sub_1000423E0();
    if (v28)
    {
      v29 = sub_100042E68(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(v8 + 52);
        *buf = 136315650;
        v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v39 = 1024;
        v40 = 1534;
        v41 = 2048;
        *v42 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] res = %f", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1534, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "res = %f", *(v8 + 52));
    *(v8 + 52) = bswap64(*(v8 + 52));
    if (*(a1 + 1394))
    {
      v31 = *(a1 + 1400);
    }

    else
    {
      v31 = 0x3FF0000000000000;
    }

    *(v8 + 60) = bswap64(v31);
    *(v8 + 17) = 0x1000000;
    *(v8 + 22) = 0x1000000;
    *(v8 + 9) = 0x2002C00300000000;
    *(v8 + 10) = 0x2002C00300000000;
    *(v8 + 23) = 16785440;
    *(v8 + 12) = 0x810FF00FF00FF00;
    v8[104] = 0;
    *(v8 + 2) = 94;
    *(v8 + 6) = 0;
    v32 = sub_1000423E0();
    if (v32)
    {
      v33 = sub_100042E68(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "EncodeDisplayInfo_DispayInfo2Encoding";
        v39 = 1024;
        v40 = 1592;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] send display info to viewer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1592, "EncodeDisplayInfo_DispayInfo2Encoding", 7, 0, "send display info to viewer");
    sub_10002E738(a1, v8);
  }

  else
  {
    v22 = malloc_type_calloc(1uLL, 0x44uLL, 0x108004043D1B9D8uLL);
    *(v22 + 30) = 3221430274;
    if (*(a1 + 1394))
    {
      v23 = *(a1 + 1400);
      v24 = llround(v23 * 544.0);
      v25 = llround(v23 * 960.0);
      v26 = sub_1000423E0();
      if (v26)
      {
        v27 = sub_100042E68(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v38 = "EncodeDisplayInfo_DispayInfoEncoding";
          v39 = 1024;
          v40 = 1423;
          v41 = 1024;
          *v42 = v24;
          *&v42[4] = 1024;
          *&v42[6] = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] scaled screen res change - width = %d  height %d", buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1423, "EncodeDisplayInfo_DispayInfoEncoding", 7, 0, "scaled screen res change - width = %d  height %d", v24, v25);
    }

    else
    {
      v25 = 960;
      v24 = 544;
    }

    *(v22 + 14) = 0x1000000;
    v35 = bswap32(v24) >> 16;
    *(v22 + 11) = v35;
    v36 = bswap32(v25) >> 16;
    *(v22 + 12) = v36;
    *(v22 + 26) = 1292107776;
    *(v22 + 19) = 256;
    *(v22 + 12) = 0;
    *(v22 + 10) = 0x1000000;
    *(v22 + 22) = v35;
    *(v22 + 23) = v36;
    *&result = 16785440;
    *(v22 + 13) = 16785440;
    *(v22 + 7) = 0x810FF00FF00FF00;
    v22[64] = 0;
  }

  return result;
}

void sub_100031E5C(uint64_t a1)
{
  v2 = *(a1 + 2976);
}

void sub_100031EA0(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "StartSystemInfoRequest";
      v47 = 1024;
      v48 = 668;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] system info request", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 668, "StartSystemInfoRequest", 7, 0, "system info request");
  v8 = *(a2 + 10);
  v9 = *(a2 + 6);
  v10 = *(a2 + 12);
  v11 = malloc_type_malloc(v10 + 1, 0xA3E9973FuLL);
  memcpy(v11, a3, v10);
  *(v11 + v10) = 0;
  if (v8 == 3)
  {
    v12 = [[NSMutableDictionary alloc] initWithCapacity:5];
    v13 = +[NSProcessInfo processInfo];
    v14 = [v13 operatingSystemVersionString];
    [v12 setObject:v14 forKey:@"OSVersion"];

    v15 = MGCopyAnswer();
    [v12 setObject:v15 forKey:@"ComputerName"];

    v16 = MGCopyAnswer();
    [v12 setObject:v16 forKey:@"ComputerModel"];

    [v12 setObject:@"mobile" forKey:@"ShortUserName"];
    v17 = sub_100040228();
    if (v17)
    {
      v18 = v17;
      [v12 setObject:v17 forKey:@"SerialNumber"];
      CFRelease(v18);
    }

    else
    {
      v21 = sub_1000423E0();
      if (v21)
      {
        v22 = sub_100042E68(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v46 = "StartSystemInfoRequest";
          v47 = 1024;
          v48 = 705;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to get serial number", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 705, "StartSystemInfoRequest", 7, 0, "unable to get serial number");
    }

    if ([v12 count] != 5)
    {
      v23 = sub_1000423E0();
      if (v23)
      {
        v24 = sub_100042E68(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v12 count];
          *buf = 136315650;
          v46 = "StartSystemInfoRequest";
          v47 = 1024;
          v48 = 708;
          v49 = 2048;
          v50 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] size of dictionary %ld", buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 708, "StartSystemInfoRequest", 7, 0, "size of dictionary %ld", [v12 count]);
    }

    v44 = 0;
    v26 = [NSPropertyListSerialization dataWithPropertyList:v12 format:100 options:0 error:&v44];
    v27 = v44;
    if (v27)
    {
      v28 = sub_1000423E0();
      if (v28)
      {
        v29 = sub_100042E68(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v27 description];
          v31 = [v30 UTF8String];
          *buf = 136315650;
          v46 = "StartSystemInfoRequest";
          v47 = 1024;
          v48 = 717;
          v49 = 2080;
          v50 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] system information error: %s", buf, 0x1Cu);
        }
      }

      v32 = [v27 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 717, "StartSystemInfoRequest", 7, 0, "system information error: %s", [v32 UTF8String]);
    }

    else
    {
      v33 = v9;
      v34 = [v26 length];
      __src = [v26 bytes];
      v35 = sub_1000423E0();
      if (v35)
      {
        v36 = sub_100042E68(v35);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v46 = "StartSystemInfoRequest";
          v47 = 1024;
          v48 = 729;
          v49 = 1024;
          LODWORD(v50) = v34;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%s:%d] length = %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 729, "StartSystemInfoRequest", 7, 0, "length = %d", v34);
      v37 = malloc_type_calloc(1uLL, v34 + 38, 0x108004043D1B9D8uLL);
      if (v37)
      {
        v38 = v37;
        v42 = a1;
        v37[14] = 81;
        v39 = v37 + 14;
        *(v37 + 2) = v34 + 24;
        *(v37 + 10) = 256;
        *(v37 + 22) = v33;
        v40 = sub_1000423E0();
        if (v40)
        {
          v41 = sub_100042E68(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v46 = "StartSystemInfoRequest";
            v47 = 1024;
            v48 = 744;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] use uncompressed buffer for now", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 744, "StartSystemInfoRequest", 7, 0, "use uncompressed buffer for now");
        memcpy(v38 + 38, __src, v34);
        *(v38 + 34) = bswap32(v34);
        *(v38 + 26) = 0;
        *(v38 + 4) = bswap32(v34 + 18);
        sub_10002DA9C(v42, v39, v34 + 24);
        free(v38);
      }
    }

    free(v11);
  }

  else
  {
    v19 = sub_1000423E0();
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v46 = "StartSystemInfoRequest";
        v47 = 1024;
        v48 = 679;
        v49 = 1024;
        LODWORD(v50) = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] ignore command %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 679, "StartSystemInfoRequest", 7, 0, "ignore command %d", v8);
    free(v11);
  }
}

uint64_t sub_100032608(_CCCryptor *a1, _OWORD *a2, void *dataIn, _BYTE *a4)
{
  *a4 = 0;
  *v21 = *a2;
  v5 = v21[0];
  v21[0] += 77;
  if (v5 >= 0xB3)
  {
    v6 = 1;
    do
    {
      if (++v21[v6])
      {
        v8 = 1;
      }

      else
      {
        v8 = v6 == 15;
      }

      ++v6;
    }

    while (!v8);
  }

  dataOutMoved = 0;
  v9 = CCCryptorUpdate(a1, dataIn, 0x10uLL, dataOut, 0x10uLL, &dataOutMoved);
  if (v9)
  {
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "AuthKeyVerificationServerCheckResponse";
        v16 = 1024;
        v17 = 961;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 961, "AuthKeyVerificationServerCheckResponse", 5, 0, "CCCryptorUpdate %d", v9);
  }

  else if (!sub_100010868(v21, dataOut, 16))
  {
    *a4 = 1;
  }

  return v9;
}

uint64_t sub_100032794(_CCCryptor *a1, _CCCryptor *a2, void *dataIn, _OWORD *a4, void *a5)
{
  dataOutMoved = 0;
  v8 = CCCryptorUpdate(a1, dataIn, 0x10uLL, &dataOut, 0x10uLL, &dataOutMoved);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "AuthKeyVerificationClientGenerateResponse";
        v23 = 1024;
        v24 = 1048;
        v25 = 1024;
        v26 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1048, "AuthKeyVerificationClientGenerateResponse", 5, 0, "CCCryptorUpdate %d");
    return 4294967294;
  }

  v12 = dataOut;
  LOBYTE(dataOut) = dataOut + 77;
  if (v12 >= 0xB3)
  {
    v13 = 1;
    do
    {
      if (++*(&dataOut + v13))
      {
        v15 = 1;
      }

      else
      {
        v15 = v13 == 15;
      }

      ++v13;
    }

    while (!v15);
  }

  if (a4)
  {
    *a4 = dataOut;
  }

  result = CCCryptorUpdate(a2, &dataOut, 0x10uLL, a5, 0x10uLL, &dataOutMoved);
  if (result)
  {
    v17 = result;
    v18 = sub_1000423E0();
    if (v18)
    {
      v19 = sub_100042E68(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "AuthKeyVerificationClientGenerateResponse";
        v23 = 1024;
        v24 = 1061;
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1061, "AuthKeyVerificationClientGenerateResponse", 5, 0, "CCCryptorUpdate %d");
    return 4294967294;
  }

  return result;
}

uint64_t sub_1000329D4(uint64_t a1)
{
  memset(v15, 0, 10);
  v2 = sub_1000423E0();
  if (v2)
  {
    v3 = sub_100042E68(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "HandleModifySessionFlag";
      v18 = 1024;
      v19 = 1676;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] handle ModifySessionFlag", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1676, "HandleModifySessionFlag", 7, 0, "handle ModifySessionFlag");
  if (sub_10003ABCC(*(a1 + 8)) < 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A56C(*(a1 + 8), 0xAu, v15);
  v5 = bswap32(WORD1(v15[0])) >> 16;
  WORD1(v15[0]) = v5;
  WORD2(v15[0]) = bswap32(WORD2(v15[0])) >> 16;
  *(v15 + 6) = bswap32(*(v15 + 6));
  if (v5 < 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 - 6;
    v7 = sub_1000423E0();
    if (v7)
    {
      v8 = sub_100042E68(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = "HandleModifySessionFlag";
        v18 = 1024;
        v19 = 1693;
        v20 = 1024;
        v21 = v6;
        v22 = 1024;
        v23 = WORD1(v15[0]);
        v24 = 2048;
        v25 = 6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d message size %d noheader %lu", buf, 0x28u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1693, "HandleModifySessionFlag", 7, 0, "extra amount %d message size %d noheader %lu", v6, WORD1(v15[0]), 6);
    if (v6 + 10 > sub_10003ABCC(*(a1 + 8)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  sub_10003A284(*(a1 + 8), v6 + 10);
  v9 = BYTE6(v15[0]);
  v10 = sub_1000423E0();
  if (v9)
  {
    if (v10)
    {
      v12 = sub_100042E68(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "HandleModifySessionFlag";
        v18 = 1024;
        v19 = 1705;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause screen sharing", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1705, "HandleModifySessionFlag", 7, 0, "pause screen sharing");
    v13 = +[IDSServiceEmbeddedController sharedIDServiceController];
    [v13 pauseScreenSharing:1];

    v14 = +[IDSServiceEmbeddedController sharedIDServiceController];
    [v14 postViewerPausedMessageNotification];
  }

  else
  {
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "HandleModifySessionFlag";
        v18 = 1024;
        v19 = 1710;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause flag not set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1710, "HandleModifySessionFlag", 7, 0, "pause flag not set");
  }

  return 0;
}

uint64_t sub_100032DA0(uint64_t a1, void *a2)
{
  memset(v63, 0, 18);
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v65 = "HandleUserRequestMessage";
      v66 = 1024;
      v67 = 1727;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] user request", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1727, "HandleUserRequestMessage", 7, 0, "user request");
  if (sub_10003ABCC(*(a1 + 8)) < 0x12)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A56C(*(a1 + 8), 0x12u, v63);
  v7 = bswap32(v63[0].u16[1]) >> 16;
  v63[0].i16[1] = v7;
  v8 = v63[0].u16[2];
  v63[0].i16[2] = __rev16(v63[0].u16[2]);
  if (v8 == 256)
  {
    if (v7 < 0xF)
    {
      v14 = *(a1 + 8);
      v13 = 18;
      goto LABEL_24;
    }

    v9 = v7 - 14;
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v65 = "HandleUserRequestMessage";
        v66 = 1024;
        v67 = 1744;
        v68 = 1024;
        LODWORD(v69) = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1744, "HandleUserRequestMessage", 7, 0, "extra amount %d", v9);
    v12 = sub_10003ABCC(*(a1 + 8));
    v13 = v9 + 18;
    if (v9 + 18 <= v12)
    {
      v14 = *(a1 + 8);
LABEL_24:
      sub_10003A284(v14, v13);
      v19 = 0;
      v20 = bswap32(*(&v63[0].u32[1] + 2));
      v21 = vrev32_s8(*(&v63[1] + 2));
      goto LABEL_25;
    }

    return 0xFFFFFFFFLL;
  }

  memset(v62, 0, 20);
  if (sub_10003ABCC(*(a1 + 8)) < 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A56C(*(a1 + 8), 0x14u, v62);
  v15 = bswap32(WORD1(v62[0])) >> 16;
  WORD1(v62[0]) = v15;
  WORD2(v62[0]) = bswap32(WORD2(v62[0])) >> 16;
  v16 = bswap32(WORD1(v62[2])) >> 16;
  WORD1(v62[2]) = v16;
  if (v16 + 16 > v15)
  {
    v17 = sub_1000423E0();
    if (v17)
    {
      v18 = sub_100042E68(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v65 = "HandleUserRequestMessage";
        v66 = 1024;
        v67 = 1776;
        v68 = 2048;
        v69 = WORD1(v62[2]) + 16;
        v70 = 1024;
        v71 = WORD1(v62[0]);
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid message size %lu %d", buf, 0x22u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1776, "HandleUserRequestMessage", 5, 0, "invalid message size %lu %d", WORD1(v62[2]) + 16, WORD1(v62[0]));
    return 4294967294;
  }

  v31 = *(v62 + 6);
  v32 = *(&v62[1] + 2);
  v33 = v15 + 4;
  v34 = sub_1000423E0();
  if (v34)
  {
    v35 = sub_100042E68(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v65 = "HandleUserRequestMessage";
      v66 = 1024;
      v67 = 1782;
      v68 = 1024;
      LODWORD(v69) = v33;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] full message size %u", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1782, "HandleUserRequestMessage", 7, 0, "full message size %u", v33);
  if (sub_10003ABCC(*(a1 + 8)) < v33)
  {
    return 0xFFFFFFFFLL;
  }

  sub_10003A284(*(a1 + 8), 0x14u);
  if (WORD1(v62[2]))
  {
    v36 = malloc_type_calloc(1uLL, WORD1(v62[2]) + 1, 0x48FB1865uLL);
    if (!v36)
    {
      return 4294967294;
    }

    v19 = v36;
    sub_100039EA8(*(a1 + 8), WORD1(v62[2]), v36);
    v37 = WORD1(v62[2]) + 16;
  }

  else
  {
    v19 = 0;
    v37 = 16;
  }

  v20 = bswap32(v31);
  if (v37 < WORD1(v62[0]))
  {
    v56 = WORD1(v62[0]) - v37;
    v57 = sub_1000423E0();
    if (v57)
    {
      v58 = sub_100042E68(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v65 = "HandleUserRequestMessage";
        v66 = 1024;
        v67 = 1804;
        v68 = 1024;
        LODWORD(v69) = v56;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1804, "HandleUserRequestMessage", 7, 0, "extra amount %d", v56);
    sub_10003A284(*(a1 + 8), v56);
  }

  v21 = vrev32_s8(v32);
LABEL_25:
  v61 = v21;
  v22 = sub_100040464();
  v23 = v61.i32[1];
  if (!v22 || v61.i32[0] != 1)
  {
    switch(v61.i32[0])
    {
      case 1:
        goto LABEL_51;
      case 3:
        if ((v61.i32[1] - 1) <= 4)
        {
          v45 = a1;
          v44 = v20;
          v46 = 5;
          goto LABEL_85;
        }

        goto LABEL_83;
      case 2:
        v27 = sub_1000423E0();
        if (v61.i32[1] > 5u)
        {
          if (v27)
          {
            v59 = sub_100042E68(v27);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v65 = "HandleUserRequestMessage";
              v66 = 1024;
              v67 = 1868;
              v68 = 1024;
              LODWORD(v69) = v61.i32[1];
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[%s:%d] invalid response %d", buf, 0x18u);
            }
          }

          v60 = v61.u32[1];
          v29 = "invalid response %d";
          v30 = 1868;
          v55 = 5;
LABEL_107:
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, v30, "HandleUserRequestMessage", v55, 0, v29, v60);
          if (!v19)
          {
            return 0;
          }

          goto LABEL_86;
        }

        if (v27)
        {
          v28 = sub_100042E68(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v65 = "HandleUserRequestMessage";
            v66 = 1024;
            v67 = 1865;
            v68 = 1024;
            LODWORD(v69) = v61.i32[1];
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%s:%d] got response %d", buf, 0x18u);
          }
        }

        v60 = v61.u32[1];
        v29 = "got response %d";
        v30 = 1865;
        break;
      default:
        sub_1000339E8(a1, v20, 3u);
        v53 = sub_1000423E0();
        if (v53)
        {
          v54 = sub_100042E68(v53);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v65 = "HandleUserRequestMessage";
            v66 = 1024;
            v67 = 1892;
            v68 = 1024;
            LODWORD(v69) = v61.i32[0];
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] send unknown message type %d", buf, 0x18u);
          }
        }

        v60 = v61.u32[0];
        v29 = "send unknown message type %d";
        v30 = 1892;
        break;
    }

    v55 = 7;
    goto LABEL_107;
  }

  if (v61.i32[1] == 2)
  {
    v24 = sub_1000423E0();
    if (v24)
    {
      v25 = sub_100042E68(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v65 = "HandleUserRequestMessage";
        v66 = 1024;
        v67 = 1817;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to resume ", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1817, "HandleUserRequestMessage", 7, 0, "ask to resume ");
    v26 = +[IDSServiceEmbeddedController sharedIDServiceController];
    [v26 postAskToResumeNotification:a2 senderToken:v20];
LABEL_73:

    if (!v19)
    {
      return 0;
    }

    goto LABEL_86;
  }

  sub_1000339E8(a1, v20, 0);
  v23 = v61.i32[1];
LABEL_51:
  if (v23 > 2)
  {
    switch(v23)
    {
      case 3:
        v47 = sub_1000423E0();
        if (v47)
        {
          v48 = sub_100042E68(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v65 = "HandleUserRequestMessage";
            v66 = 1024;
            v67 = 1834;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to copy text", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1834, "HandleUserRequestMessage", 7, 0, "ask to copy text");
        v26 = +[IDSServiceEmbeddedController sharedIDServiceController];
        v40 = [NSString stringWithUTF8String:v19];
        [v26 askToCopyToPasteboard:a2 senderToken:v20 message:v40];
        goto LABEL_72;
      case 4:
        v49 = sub_1000423E0();
        if (v49)
        {
          v50 = sub_100042E68(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v65 = "HandleUserRequestMessage";
            v66 = 1024;
            v67 = 1844;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to show message", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1844, "HandleUserRequestMessage", 7, 0, "ask to show message");
        v51 = +[IDSServiceEmbeddedController sharedIDServiceController];
        v52 = [NSString stringWithUTF8String:v19];
        [v51 showMessageToUser:v52];

        if (!v19)
        {
          return 0;
        }

        goto LABEL_86;
      case 5:
        v38 = sub_1000423E0();
        if (v38)
        {
          v39 = sub_100042E68(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v65 = "HandleUserRequestMessage";
            v66 = 1024;
            v67 = 1850;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] ask to open url", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1850, "HandleUserRequestMessage", 7, 0, "ask to open url");
        v26 = +[IDSServiceEmbeddedController sharedIDServiceController];
        v40 = [NSString stringWithUTF8String:v19];
        v41 = [a2 sessionController];
        [v26 askToOpenURL:a2 senderToken:v20 URL:v40 sessionController:v41];

LABEL_72:
        goto LABEL_73;
    }

    goto LABEL_83;
  }

  if (v23 == 1)
  {
    v45 = a1;
    v44 = v20;
    v46 = 0;
  }

  else
  {
    if (v23 != 2)
    {
LABEL_83:
      v45 = a1;
      v44 = v20;
      v46 = 4;
      goto LABEL_85;
    }

    v42 = sub_1000423E0();
    if (v42)
    {
      v43 = sub_100042E68(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v65 = "HandleUserRequestMessage";
        v66 = 1024;
        v67 = 1839;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%s:%d] not actually paused, send back OK", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1839, "HandleUserRequestMessage", 7, 0, "not actually paused, send back OK");
    v44 = *(&v63[0].u32[1] + 2);
    v45 = a1;
    v46 = 1;
  }

LABEL_85:
  sub_1000339E8(v45, v44, v46);
  if (v19)
  {
LABEL_86:
    free(v19);
  }

  return 0;
}

void sub_1000339E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "SendUserRequestResponse";
      v13 = 1024;
      v14 = 1908;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] SendUserRequestResponse", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1908, "SendUserRequestResponse", 7, 0, "SendUserRequestResponse");
  if (*(a1 + 2640) && (*(a1 + 2676) & 0x10) != 0)
  {
    v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x108004043D1B9D8uLL);
    v8[6] = 0;
    *(v8 + 2) = 18;
    *(v8 + 14) = 35;
    *(v8 + 4) = 16780800;
    *(v8 + 5) = bswap32(a2);
    *(v8 + 6) = 0x2000000;
    *(v8 + 7) = bswap32(a3);
    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v12 = "SendUserRequestResponse";
        v13 = 1024;
        v14 = 1923;
        v15 = 1024;
        v16 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] responseCode %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1923, "SendUserRequestResponse", 7, 0, "responseCode %d", a3);
    sub_10002E738(a1, v8);
  }
}

void sub_100033BFC(uint64_t a1)
{
  v1 = sub_1000423E0();
  if (v1)
  {
    v2 = sub_100042E68(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "TouchEventEncoding_Start";
      v6 = 1024;
      v7 = 1931;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] start sending touch events", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1931, "TouchEventEncoding_Start", 7, 0, "start sending touch events");
  +[TouchEventMonitor startMonitoringTouchEvents];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:qword_100070AA0 selector:"notificationHandler:" name:@"TouchEventUpdate" object:0];
}

void sub_100033D2C(uint64_t a1)
{
  v1 = sub_1000423E0();
  if (v1)
  {
    v2 = sub_100042E68(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "TouchEventEncoding_Stop";
      v6 = 1024;
      v7 = 1943;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop sending touch events", &v4, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1943, "TouchEventEncoding_Stop", 7, 0, "stop sending touch events");
  +[TouchEventMonitor stopMonitoringTouchEvents];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:qword_100070AA0];
}

uint64_t start(uint64_t a1)
{
  v1 = sub_1000423E0();
  if (v1)
  {
    v2 = sub_100042E68(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "main";
      v9 = 1024;
      v10 = 1954;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%s:%d] start screen sharing server", &v7, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1954, "main", 7, 0, "start screen sharing server");
  GSInitialize();
  v3 = +[IDSServiceEmbeddedController sharedIDServiceController];
  [v3 initScreenSharingIDSService];

  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "main";
      v9 = 1024;
      v10 = 1957;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] going into runloop", &v7, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1957, "main", 7, 0, "going into runloop");
  CFRunLoopRun();
  return 0;
}

uint64_t sub_1000341D0(uint64_t a1, unsigned __int16 *a2, size_t a3)
{
  if ((a3 - 1532) <= 0xFA17u)
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v59 = "UDPReceiverHandlePacket";
        v60 = 1024;
        v61 = 330;
        v62 = 1024;
        v63 = a3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad packet size %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 330, "UDPReceiverHandlePacket", 7, 0, "bad packet size %d", a3);
    return 4294967294;
  }

  if (*a2 != 256)
  {
    v16 = a3;
    v17 = sub_1000423E0();
    if (v17)
    {
      v18 = sub_100042E68(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = bswap32(*a2);
        *buf = 136315906;
        v59 = "UDPReceiverHandlePacket";
        v60 = 1024;
        v61 = 338;
        v62 = 1024;
        v63 = HIWORD(v19);
        v64 = 1024;
        v65 = a3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad packet version %d got length %d", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 338, "UDPReceiverHandlePacket", 7, 0, "bad packet version %d got length %d", bswap32(*a2) >> 16, a3);
    sub_100042C68("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 0x153u, "UDPReceiverHandlePacket", 7, "badpacket", a2, v16);
    return 0;
  }

  *(a1 + 52) = sub_100035FAC();
  v9 = a2[1];
  v10 = __rev16(v9);
  a2[1] = v10;
  *(a2 + 2) = vrev32_s8(*(a2 + 2));
  a2[8] = bswap32(a2[8]) >> 16;
  a2[9] = bswap32(a2[9]) >> 16;
  if (v10 >= 8)
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a2[1];
        *buf = 136315650;
        v59 = "UDPReceiverHandlePacket";
        v60 = 1024;
        v61 = 363;
        v62 = 1024;
        v63 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] udpreceiver - invalid packet type %d - ignoring", buf, 0x18u);
      }
    }

    v56 = a2[1];
    v14 = "udpreceiver - invalid packet type %d - ignoring";
    v15 = 363;
    goto LABEL_12;
  }

  if (v9 == 1792)
  {
    if (!*(a1 + 1368))
    {
      *(a1 + 1368) = -2;
    }

    v20 = sub_1000423E0();
    if (v20)
    {
      v21 = sub_100042E68(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "UDPReceiverHandlePacket";
        v60 = 1024;
        v61 = 371;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] got fatal error packet from sender", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 371, "UDPReceiverHandlePacket", 5, 0, "got fatal error packet from sender");
    sub_100039C0C(*(a1 + 1416));
  }

  if (!*(a1 + 1368))
  {
    v24 = a2[1];
    if (v24 != 4)
    {
      if (v24 == 2)
      {
        return sub_1000352B4(a1, a2, a3);
      }

      if (v24 != 1)
      {
        v28 = *(a2 + 2);
        v29 = *(a1 + 44);
        if (v28 >= v29)
        {
          if (v28 != v29)
          {
            if (v28 >= v29 + 128)
            {
              v38 = sub_1000423E0();
              if (v38)
              {
                v39 = sub_100042E68(v38);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = *(a2 + 2);
                  *buf = 136315650;
                  v59 = "UDPReceiverHandlePacket";
                  v60 = 1024;
                  v61 = 503;
                  v62 = 1024;
                  v63 = v40;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] packet out of range index %u", buf, 0x18u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 503, "UDPReceiverHandlePacket", 5, 0, "packet out of range index %u");
            }

            else
            {
              sub_100035AB0(a1, a2, a3);
            }

            return 0;
          }

          *(a1 + 1364) += a3;
          v34 = *(a2 + 1);
          v35 = sub_1000357F4(a1, a2, a3);
          v36 = a2[8];
          if (v35)
          {
            v37 = *(a1 + 44);
            if (v37 <= *(a1 + 1372))
            {
              return 0;
            }
          }

          else
          {
            v41 = *(a1 + 44);
            v42 = v41 & 0x7F;
            v43 = (a1 + 1096 + 2 * v42);
            v44 = *v43;
            if (*v43)
            {
              while (1)
              {
                v45 = *(a1 + 72 + 8 * v42);
                v46 = *(a1 + 1364);
                if (*(a1 + 1353) - 3 <= 1 && bswap32(*(v45 + 12)) != v46)
                {
                  break;
                }

                *(a1 + 1364) = v46 + v44;
                v47 = sub_1000357F4(a1, v45, v44);
                v36 = *(v45 + 16);
                free(v45);
                *v43 = 0;
                v37 = *(a1 + 44);
                if (!v47)
                {
                  v42 = v37 & 0x7F;
                  v43 = (a1 + 1096 + 2 * v42);
                  v44 = *v43;
                  if (*v43)
                  {
                    continue;
                  }
                }

                goto LABEL_66;
              }

              v48 = sub_1000423E0();
              if (v48)
              {
                v49 = sub_100042E68(v48);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = *(v45 + 8);
                  v51 = bswap32(*(v45 + 12));
                  v52 = *(a1 + 1364);
                  *buf = 136316162;
                  v59 = "UDPReceiverHandlePacket";
                  v60 = 1024;
                  v61 = 451;
                  v62 = 1024;
                  v63 = v50;
                  v64 = 1024;
                  v65 = v51;
                  v66 = 1024;
                  v67 = v52;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%s:%d] pkt index %u bufferSize %u expected %u", buf, 0x24u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 451, "UDPReceiverHandlePacket", 7, 0, "pkt index %u bufferSize %u expected %u", *(v45 + 8), bswap32(*(v45 + 12)), *(a1 + 1364));
              free(v45);
              *v43 = 0;
              v37 = *(a1 + 44);
LABEL_66:
              if (v37 <= *(a1 + 1372))
              {
                if (v37 - 1 >= *(a1 + 68))
                {
                  sub_100034BC4(a1, v34, v37 - 1);
                }

                return 0;
              }
            }

            else
            {
              v37 = *(a1 + 44);
              if (v41 <= *(a1 + 1372))
              {
                return 0;
              }
            }
          }

          sub_100034BC4(a1, v34, v37 - 1);
          v53 = v36 % *(a1 + 60);
          v54 = *(a1 + 1372);
          if (*(a1 + 64) == 1)
          {
            v55 = v54 + 3;
          }

          else
          {
            v55 = v54 + v53 + *(a1 + 1408) - *(a1 + 1410);
          }

          result = 0;
          *(a1 + 1372) = v55;
          *(a1 + 1408) = v36;
          *(a1 + 1410) = v53;
          return result;
        }

        v30 = sub_1000423E0();
        if (v30)
        {
          v31 = sub_100042E68(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a2 + 2);
            v33 = *(a1 + 44);
            *buf = 136315906;
            v59 = "UDPReceiverHandlePacket";
            v60 = 1024;
            v61 = 406;
            v62 = 1024;
            v63 = v32;
            v64 = 1024;
            v65 = v33;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] *OLD %d wanted %d", buf, 0x1Eu);
          }
        }

        v56 = *(a2 + 2);
        v57 = *(a1 + 44);
        v14 = "*OLD %d wanted %d";
        v15 = 406;
LABEL_12:
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, v15, "UDPReceiverHandlePacket", 7, 0, v14, v56, v57);
        return 0;
      }

      v25 = sub_1000423E0();
      if (v25)
      {
        v26 = sub_100042E68(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a2 + 2);
          *buf = 136315650;
          v59 = "UDPReceiverHandlePacket";
          v60 = 1024;
          v61 = 386;
          v62 = 1024;
          v63 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] got status request for %u", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 386, "UDPReceiverHandlePacket", 7, 0, "got status request for %u", *(a2 + 2));
    }

    return sub_10003517C(a1, a2, a3);
  }

  v22 = sub_1000423E0();
  if (v22)
  {
    v23 = sub_100042E68(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v59 = "UDPReceiverHandlePacket";
      v60 = 1024;
      v61 = 377;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] got fatal error calling SendStatusBack", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 377, "UDPReceiverHandlePacket", 5, 0, "got fatal error calling SendStatusBack");
  sub_100034BC4(a1, *(a2 + 1), *(a1 + 44) - 1);
  return 4294967292;
}

uint64_t sub_100034B18(uint64_t a1)
{
  result = sub_100035FAC();
  *(a1 + 52) = result;
  if (*(a1 + 1353) - 3 < 2)
  {
    *(a1 + 60) = 0x100000001;
    *(a1 + 1372) = 2;
    return result;
  }

  v3 = result & 7;
  *(a1 + 60) = v3;
  *(a1 + 64) = v3;
  if ((result & 7) == 0)
  {
    *(a1 + 60) = 0x100000001;
    v4 = *(a1 + 1372);
    goto LABEL_7;
  }

  v4 = *(a1 + 1372);
  if (v3 == 1)
  {
LABEL_7:
    LOWORD(v5) = 0;
    v6 = v4 + 3;
    goto LABEL_8;
  }

  v5 = 6 % v3;
  v6 = v4 + *(a1 + 1408) + v5 - *(a1 + 1410);
LABEL_8:
  *(a1 + 1372) = v6;
  *(a1 + 1408) = 6;
  *(a1 + 1410) = v5;
  return result;
}

void sub_100034BC4(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  a1[12] = a1[11] - 1;
  memset(v56, 0, 44);
  v6 = a1[340];
  v7 = sub_10003ADC0(*(a1 + 172));
  v8 = *(a1 + 30) - 1;
  if (a1[342])
  {
    BYTE12(v56[1]) = a1[342];
    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[342];
        *buf = 136315650;
        v48 = "SendStatusBack";
        v49 = 1024;
        v50 = 939;
        v51 = 1024;
        v52 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] RFB datagram: fatal error %u", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 939, "SendStatusBack", 7, 0, "RFB datagram: fatal error %u", a1[342]);
    v12 = 0;
    a3 = 0;
    v13 = 512;
  }

  else
  {
    v14 = a1[11];
    if (v14 <= a3)
    {
      if (v14 + 127 < a3)
      {
        v15 = sub_1000423E0();
        if (v15)
        {
          v16 = sub_100042E68(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = a1[11];
            *buf = 136315906;
            v48 = "SendStatusBack";
            v49 = 1024;
            v50 = 964;
            v51 = 1024;
            v52 = a3;
            v53 = 1024;
            *v54 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%s:%d] sender is too far ahead %u am at %u", buf, 0x1Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 964, "SendStatusBack", 1, 0, "sender is too far ahead %u am at %u", a3, a1[11]);
        v14 = a1[11];
        a3 = v14 + 127;
      }

      v18 = a3 - v14 + 8;
      v12 = v18 >> 3;
      WORD5(v56[1]) = v18 >> 3;
      v46 = v18 & 0xFFFFFFF8;
      if ((v18 & 0xFFFFFFF8) != 0)
      {
        v43 = v8;
        v44 = v6;
        v45 = a2;
        v19 = 0;
        v20 = a1 + 274;
        v21 = -(v18 & 0xFFFFFFF8);
        v22 = 128;
        do
        {
          v23 = a3 + v21 + 1;
          if (v23 <= a3 && v23 >= a1[11] && !*(v20 + (v23 & 0x7F)))
          {
            v24 = sub_1000423E0();
            if (v24)
            {
              v25 = sub_100042E68(v24);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v48 = "SendStatusBack";
                v49 = 1024;
                v50 = 987;
                v51 = 1024;
                v52 = a3 + v21 + 1;
                v53 = 1024;
                *v54 = v23 & 0x7F;
                *&v54[4] = 1024;
                *&v54[6] = v46;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] missed pkt %d  offset %d  bitfieldSize %d", buf, 0x24u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 987, "SendStatusBack", 7, 0, "missed pkt %d  offset %d  bitfieldSize %d", a3 + v21 + 1, v23 & 0x7F, v46);
            v20 = a1 + 274;
            *(&v56[1] + v19 + 12) |= v22;
            if (a3 > a1[17])
            {
              a1[17] = a3;
            }
          }

          if (v22 >= 2)
          {
            v22 >>= 1;
          }

          else
          {
            ++v19;
            v22 = 128;
          }
        }

        while (!__CFADD__(v21++, 1));
        v13 = 256;
        a2 = v45;
        v8 = v43;
        v6 = v44;
      }

      else
      {
        v13 = 256;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      a3 = v14 - 1;
    }
  }

  LODWORD(v56[0]) = 33554688;
  *(v56 + 4) = _byteswap_uint64(__PAIR64__(a2, a3));
  HIDWORD(v56[0]) = bswap32(v6);
  LOWORD(v56[1]) = bswap32(v8) >> 16;
  WORD2(v56[1]) = v13;
  *(&v56[1] + 6) = bswap32(v7);
  WORD5(v56[1]) = bswap32(v12) >> 16;
  v27 = *(a1 + 1353);
  if ((v27 - 3) < 2)
  {
    strcpy(&v56[1] + 2, ",");
    v31 = *(a1 + 182);
    if (*(v31 + 3272))
    {
      sub_1000020A8(*(v31 + 3264), v56, 44);
    }

    else
    {
      if (*(a1 + 1440))
      {
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v32 = (a1 + 4);
        v33 = *(a1 + 16);
      }

      if (sendto(*a1, v56, 0x2CuLL, 0, v32, v33) == -1)
      {
        v34 = sub_1000423E0();
        if (v34)
        {
          v35 = sub_100042E68(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *__error();
            v37 = __error();
            v38 = strerror(*v37);
            v39 = *a1;
            *buf = 136316162;
            v48 = "SendStatusBack";
            v49 = 1024;
            v50 = 1055;
            v51 = 1024;
            v52 = v36;
            v53 = 2080;
            *v54 = v38;
            *&v54[8] = 1024;
            v55 = v39;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] SendStatusBack errno %d %s r->readSockFD = %d", buf, 0x28u);
          }
        }

        v40 = *__error();
        v41 = __error();
        v42 = strerror(*v41);
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 1055, "SendStatusBack", 7, 0, "SendStatusBack errno %d %s r->readSockFD = %d", v40, v42, *a1);
      }
    }
  }

  else if ((v27 - 1) <= 1)
  {
    v28 = *(a1 + 179);
    v29 = *a1;
    v30 = (a1 + 4);
    if (v28)
    {
      v28(v29, v30, v56, 44, 0);
    }

    else
    {
      sub_100035FD8(v29, v30, v56, 0x2Cu);
    }
  }
}

uint64_t sub_10003517C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x13)
  {
    sub_100034BC4(a1, *(a2 + 4), *(a2 + 8));
    v8 = *(a1 + 1376);
    if (*(v8 + 48))
    {
      result = sub_10003ABCC(v8);
      if (!result)
      {
        return result;
      }

      sub_100039C0C(*(*(a1 + 1376) + 32));
    }

    return 0;
  }

  else
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = "ProcessStatusRequest";
        v11 = 1024;
        v12 = 780;
        v13 = 1024;
        v14 = a3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] status requst too small %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 780, "ProcessStatusRequest", 7, 0, "status requst too small %d", a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000352B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 20) = bswap32(*(a2 + 20)) >> 16;
  *(a2 + 22) = bswap32(*(a2 + 22));
  *(a2 + 26) = bswap32(*(a2 + 26)) >> 16;
  if (a3 > 0x2B)
  {
    v7 = *(a1 + 1456);
    if (v7)
    {
      v9 = *(v7 + 3248);
      if (*(a2 + 8) >= *(v9 + 44))
      {
        [*(v7 + 56) lock];
        ++*(v7 + 80);
        v10 = *(a2 + 20);
        *v9 = v10;
        *(v9 + 40) = *(a2 + 8);
        *(v9 + 12) = 0;
        *(v9 + 2) = 0;
        if (!v10)
        {
          v11 = sub_100035FAC();
          *(v9 + 48) = v11;
          *(v9 + 52) = v11;
        }

        *(v9 + 8) = *(a2 + 22);
        v12 = *(a2 + 26);
        if (v12 < 0x11)
        {
          if (*v9 == 1)
          {
            *(v9 + 16) = v12;
            memcpy((v9 + 18), (a2 + 28), v12);
          }

          else if (!*v9)
          {
            *(v9 + 44) = *(v9 + 40);
          }

          v18 = sub_100035FAC();
          v19 = *(a2 + 4);
          if (v19)
          {
            v20 = v18 - v19;
            if (v20 >= 0x989680)
            {
              v21 = 10000000;
            }

            else
            {
              v21 = v20;
            }

            v22 = *(v9 + 56);
            v23 = *(v9 + 60);
            v24 = v21 - v22;
            v25 = v21 - v22 + 7;
            if (v21 - v22 >= 0)
            {
              v25 = v21 - v22;
            }

            v26 = (v22 + (v25 >> 3)) & ~((v22 + (v25 >> 3)) >> 31);
            if (v24 >= 0)
            {
              v27 = v24;
            }

            else
            {
              v27 = -v24;
            }

            v28 = v27 - v23;
            if (v27 < v23)
            {
              v28 = v27 - v23 + 3;
            }

            v29 = v23 + (v28 >> 2);
            *(v9 + 56) = v26;
            *(v9 + 60) = v29;
            *(v9 + 64) = (v26 + 4 * v29) & ~((v26 + 4 * v29) >> 31);
            v30 = sub_1000423E0();
            if (v30)
            {
              v31 = sub_100042E68(v30);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(v9 + 56);
                *buf = 136315650;
                v39 = "ProcessStatusReply";
                v40 = 1024;
                v41 = 709;
                v42 = 1024;
                v43 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] receiver->smoothedRoundTripTime %u", buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 709, "ProcessStatusReply", 7, 0, "receiver->smoothedRoundTripTime %u", *(v9 + 56));
            if ((~++dword_100070AA8 & 0x1FF) == 0)
            {
              v33 = sub_1000423E0();
              if (v33)
              {
                v34 = sub_100042E68(v33);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  v35 = *(v9 + 56);
                  v36 = *(v9 + 60);
                  v37 = *(v9 + 64);
                  *buf = 136316674;
                  v39 = "ProcessStatusReply";
                  v40 = 1024;
                  v41 = 723;
                  v42 = 1024;
                  v43 = v21;
                  v44 = 1024;
                  *v45 = v27;
                  *&v45[4] = 1024;
                  *&v45[6] = v35;
                  v46 = 1024;
                  v47 = v36;
                  v48 = 1024;
                  v49 = v37;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%s:%d] rt time %u delta %u smoothed %u deviation %u timeout %d", buf, 0x30u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 723, "ProcessStatusReply", 7, 0, "rt time %u delta %u smoothed %u deviation %u timeout %d", v21, v27);
            }
          }
        }

        else
        {
          v13 = sub_1000423E0();
          if (v13)
          {
            v14 = sub_100042E68(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a2 + 26);
              *buf = 136315650;
              v39 = "ProcessStatusReply";
              v40 = 1024;
              v41 = 669;
              v42 = 1024;
              v43 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] protocol error - bitmap size wrong %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 669, "ProcessStatusReply", 5, 0, "protocol error - bitmap size wrong %d");
        }

        [*(v7 + 56) unlock];
        if (*(v7 + 3175))
        {
          sub_100039C0C(*(v7 + 40));
        }
      }

      return 0;
    }

    else
    {
      v16 = sub_1000423E0();
      if (v16)
      {
        v17 = sub_100042E68(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "ProcessStatusReply";
          v40 = 1024;
          v41 = 636;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%s:%d] status reply, no sender info set", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 636, "ProcessStatusReply", 1, 0, "status reply, no sender info set");
      return 4294967294;
    }
  }

  else
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v39 = "ProcessStatusReply";
        v40 = 1024;
        v41 = 621;
        v42 = 1024;
        v43 = a3;
        v44 = 2048;
        *v45 = 44;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%s:%d] status reply too small %d %zu", buf, 0x22u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 621, "ProcessStatusReply", 1, 0, "status reply too small %d %zu", a3, 0x2CuLL);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000357F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a2 + 2);
  if (v6 == 6)
  {
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "DispatchPacket";
        v17 = 1024;
        v18 = 887;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] got kRFBDatagramDataPacketForceReply", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 887, "DispatchPacket", 7, 0, "got kRFBDatagramDataPacketForceReply");
    return sub_100035D18(a1, a2, v3, 1);
  }

  else if (v6 == 3)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "DispatchPacket";
        v17 = 1024;
        v18 = 882;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] machine index", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 882, "DispatchPacket", 7, 0, "machine index");
    return 0;
  }

  else if (*(a2 + 2))
  {
    v12 = sub_1000423E0();
    if (v12)
    {
      v13 = sub_100042E68(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a2 + 2);
        *buf = 136315650;
        v16 = "DispatchPacket";
        v17 = 1024;
        v18 = 893;
        v19 = 1024;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknwon packet type %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 893, "DispatchPacket", 7, 0, "unknwon packet type %d", *(a2 + 2));
    return 0xFFFFFFFFLL;
  }

  else
  {

    return sub_100035D18(a1, a2, a3, 0);
  }
}

void sub_100035AB0(uint64_t a1, uint64_t a2, size_t size)
{
  v5 = *(a2 + 8) & 0x7F;
  if (*(a1 + 1096 + 2 * v5))
  {
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a2 + 8);
        v9 = *(a1 + 44);
        *buf = 136315906;
        v21 = "BufferPendingPacket";
        v22 = 1024;
        v23 = 822;
        v24 = 1024;
        v25 = v8;
        v26 = 1024;
        v27 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] already received %u wanted %u", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 822, "BufferPendingPacket", 7, 0, "already received %u wanted %u", *(a2 + 8));
  }

  else
  {
    *(a1 + 1096 + 2 * v5) = size;
    v10 = size;
    v11 = malloc_type_malloc(size, 0xE6842B85uLL);
    if (v11)
    {
      v12 = v11;
      memcpy(v11, a2, v10);
      *(a1 + 8 * v5 + 72) = v12;
      v13 = *(a2 + 8);
      v14 = *(a1 + 1372);
      if (v13 >= v14)
      {
        if (*(a1 + 44) >= *(a1 + 68))
        {
          sub_100034BC4(a1, *(a2 + 4), v13);
          v14 = *(a1 + 1372);
        }

        v15 = *(a2 + 16);
        v16 = v15 % *(a1 + 60);
        if (*(a1 + 64) == 1)
        {
          v17 = v14 + 3;
        }

        else
        {
          v17 = v14 + v16 + *(a1 + 1408) - *(a1 + 1410);
        }

        *(a1 + 1372) = v17;
        *(a1 + 1408) = v15;
        *(a1 + 1410) = v16;
      }
    }

    else
    {
      v18 = sub_1000423E0();
      if (v18)
      {
        v19 = sub_100042E68(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v21 = "BufferPendingPacket";
          v22 = 1024;
          v23 = 832;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] BufferPendingPacket - unable to allocate memory for packet", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 832, "BufferPendingPacket", 7, 0, "BufferPendingPacket - unable to allocate memory for packet");
    }
  }
}

uint64_t sub_100035D18(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = sub_10003ADC0(*(a1 + 1376));
  v9 = a3 - 20;
  v10 = *(a1 + 1376);
  if (v9 <= v8)
  {
    v16 = sub_10003A880(v10, v9, (a2 + 20));
    if (v16)
    {
      v17 = v16;
      v18 = sub_1000423E0();
      if (v18)
      {
        v19 = sub_100042E68(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v23 = "ProcessDataPacket";
          v24 = 1024;
          v25 = 569;
          v26 = 1024;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] unexpected error netbufferadd %d", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 569, "ProcessDataPacket", 5, 0, "unexpected error netbufferadd %d", v17);
    }

    else
    {
      v20 = *(a1 + 1376);
      if (*(v20 + 48))
      {
        sub_100039C0C(*(v20 + 32));
      }

      v21 = *(a1 + 44);
      *(a1 + 44) = v21 + 1;
      if (a4 || v8 <= 0xFDE7 && v21 + 1 > *(a1 + 48) + 5 && *(a1 + 1372) > v21 + 9)
      {
        sub_100034BC4(a1, *(a2 + 4), v21);
      }
    }

    return 0;
  }

  else
  {
    sub_100039C0C(*(v10 + 32));
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_10003ABCC(*(a1 + 1376));
        *buf = 136316162;
        v23 = "ProcessDataPacket";
        v24 = 1024;
        v25 = 540;
        v26 = 1024;
        v27 = v8;
        v28 = 1024;
        v29 = v13;
        v30 = 1024;
        v31 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] buffer full - freespace %u available %u packetSize %d", buf, 0x24u);
      }
    }

    v14 = sub_10003ABCC(*(a1 + 1376));
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/UDPReceiver.c", 104, 540, "ProcessDataPacket", 7, 0, "buffer full - freespace %u available %u packetSize %d", v8, v14, a3);
    sub_100034BC4(a1, *(a2 + 4), *(a1 + 44) - 2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100035FAC()
{
  v1 = 0;
  sub_1000402B4(&v1);
  return v1;
}

uint64_t sub_100035FD8(uint64_t a1, sockaddr *a2, void *a3, unsigned int a4)
{
  if (a4 < 0x5C9)
  {
    v7 = sendto(a1, a3, a4, 0, a2, a2->sa_len);
    result = 0;
    if (v7 == a4)
    {
      return result;
    }

    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *__error();
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 136315906;
        v17 = "UDPWriteNetworkPacket";
        v18 = 1024;
        v19 = 193;
        v20 = 1024;
        v21 = v11;
        v22 = 2080;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] UDPWriteNetworkPacket result looks wrong %d %s", buf, 0x22u);
      }
    }

    v14 = *__error();
    v15 = __error();
    strerror(*v15);
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/UDPUtils.c", 87, 193, "UDPWriteNetworkPacket", 7, 0, "UDPWriteNetworkPacket result looks wrong %d %s", v14);
  }

  else
  {
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v17 = "UDPWriteNetworkPacket";
        v18 = 1024;
        v19 = 180;
        v20 = 1024;
        v21 = a4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] pkt too large %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/RFBCommon/UDPUtils.c", 87, 180, "UDPWriteNetworkPacket", 7, 0, "pkt too large %d");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000361DC(uint64_t a1, void *a2)
{
  if (*(a1 + 28) == 4)
  {

    return sub_100036308(a1, a2);
  }

  else
  {
    v3 = sub_1000423E0();
    if (v3)
    {
      v4 = sub_100042E68(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "HandleViewerMessage";
        v7 = 1024;
        v8 = 106;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad viewer state", &v5, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 106, "HandleViewerMessage", 7, 0, "bad viewer state");
    return 4294967294;
  }
}

uint64_t sub_100036308(uint64_t a1, void *a2)
{
  v238 = 0;
  if (*(a1 + 1514))
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 1513);
        buf = 136315650;
        v247 = "HandleViewerCommand";
        v248 = 1024;
        v249 = 130;
        v250 = 1024;
        LODWORD(v251) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer->pendingCmd %d", &buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 130, "HandleViewerCommand", 7, 0, "viewer->pendingCmd %d", *(a1 + 1513));
    v7 = *(a1 + 1513);
    v238 = *(a1 + 1513);
  }

  else
  {
    sub_10003A56C(*(a1 + 8), 1u, &v238);
    v7 = v238;
  }

  switch(v7)
  {
    case 0:
      v8 = sub_1000423E0();
      if (v8)
      {
        v9 = sub_100042E68(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 139;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] set pixel format", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 139, "HandleViewerCommand", 7, 0, "set pixel format");
      if (sub_10003ABCC(*(a1 + 8)) < 0x14)
      {
        return 0xFFFFFFFFLL;
      }

      memset(v239, 0, 20);
      sub_100039EA8(*(a1 + 8), 0x14u, v239);
      v10 = sub_1000423E0();
      if (v10)
      {
        v11 = sub_100042E68(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 879;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetPixelFormatMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 879, "HandleSetPixelFormatMessage", 7, 0, "HandleSetPixelFormatMessage");
      [0 lock];
      v239[1].i16[0] = bswap32(v239[1].u16[0]) >> 16;
      v239[1].i16[1] = bswap32(v239[1].u16[1]) >> 16;
      v239[1].i16[2] = bswap32(v239[1].u16[2]) >> 16;
      *(a1 + 104) = *&v239[0].u8[4];
      v12 = sub_1000423E0();
      if (v12)
      {
        v13 = sub_100042E68(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 890;
          v250 = 1024;
          LODWORD(v251) = v239[0].u8[4];
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] bitsperpixel %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 890, "HandleSetPixelFormatMessage", 7, 0, "bitsperpixel %d", v239[0].u8[4]);
      v14 = sub_1000423E0();
      if (v14)
      {
        v15 = sub_100042E68(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 891;
          v250 = 1024;
          LODWORD(v251) = v239[0].u8[5];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] depth %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 891, "HandleSetPixelFormatMessage", 7, 0, "depth %d", v239[0].u8[5]);
      v16 = sub_1000423E0();
      if (v16)
      {
        v17 = sub_100042E68(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 892;
          v250 = 1024;
          LODWORD(v251) = v239[0].u8[6];
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] bigEndianFlag %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 892, "HandleSetPixelFormatMessage", 7, 0, "bigEndianFlag %d", v239[0].u8[6]);
      v18 = sub_1000423E0();
      if (v18)
      {
        v19 = sub_100042E68(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 893;
          v250 = 1024;
          LODWORD(v251) = v239[0].u8[7];
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] trueColorFlag %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 893, "HandleSetPixelFormatMessage", 7, 0, "trueColorFlag %d", v239[0].u8[7]);
      v20 = sub_1000423E0();
      if (v20)
      {
        v21 = sub_100042E68(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 894;
          v250 = 1024;
          LODWORD(v251) = v239[1].u16[0];
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] redMax %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 894, "HandleSetPixelFormatMessage", 7, 0, "redMax %d", v239[1].u16[0]);
      v22 = sub_1000423E0();
      if (v22)
      {
        v23 = sub_100042E68(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 895;
          v250 = 1024;
          LODWORD(v251) = v239[1].u16[1];
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] greenMax %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 895, "HandleSetPixelFormatMessage", 7, 0, "greenMax %d", v239[1].u16[1]);
      v24 = sub_1000423E0();
      if (v24)
      {
        v25 = sub_100042E68(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 896;
          v250 = 1024;
          LODWORD(v251) = v239[1].u16[2];
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] blueMax %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 896, "HandleSetPixelFormatMessage", 7, 0, "blueMax %d", v239[1].u16[2]);
      v26 = sub_1000423E0();
      if (v26)
      {
        v27 = sub_100042E68(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 897;
          v250 = 1024;
          LODWORD(v251) = v239[1].u8[6];
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] redShift %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 897, "HandleSetPixelFormatMessage", 7, 0, "redShift %d", v239[1].u8[6]);
      v28 = sub_1000423E0();
      if (v28)
      {
        v29 = sub_100042E68(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 898;
          v250 = 1024;
          LODWORD(v251) = v239[1].u8[7];
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] greenShift %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 898, "HandleSetPixelFormatMessage", 7, 0, "greenShift %d", v239[1].u8[7]);
      v30 = sub_1000423E0();
      if (v30)
      {
        v31 = sub_100042E68(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetPixelFormatMessage";
          v248 = 1024;
          v249 = 899;
          v250 = 1024;
          LODWORD(v251) = v239[2].u8[0];
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] blueShift %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 899, "HandleSetPixelFormatMessage", 7, 0, "blueShift %d", v239[2].u8[0]);
      if (v239[0].u8[5] > 8u)
      {
        *(a1 + 122) = 32;
        v150 = sub_1000423E0();
        if (v150)
        {
          v151 = sub_100042E68(v150);
          if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
          {
            v152 = *(a1 + 122);
            buf = 136315650;
            v247 = "HandleSetPixelFormatMessage";
            v248 = 1024;
            v249 = 911;
            v250 = 1024;
            LODWORD(v251) = v152;
            _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetPixelFormatMessage %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 911, "HandleSetPixelFormatMessage", 7, 0, "HandleSetPixelFormatMessage %d", *(a1 + 122));
        v153 = sub_1000423E0();
        if (v153)
        {
          v154 = sub_100042E68(v153);
          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
          {
            v155 = *(a1 + 1280);
            v156 = *(a1 + 1264);
            buf = 136315906;
            v247 = "HandleSetPixelFormatMessage";
            v248 = 1024;
            v249 = 913;
            v250 = 1024;
            LODWORD(v251) = v155;
            WORD2(v251) = 2048;
            *(&v251 + 6) = v156;
            _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer->translatedPixelSize %d  viewer->trans_func %p", &buf, 0x22u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 913, "HandleSetPixelFormatMessage", 7, 0, "viewer->translatedPixelSize %d  viewer->trans_func %p", *(a1 + 1280), *(a1 + 1264));
        v34 = 0;
        *(a1 + 156) = 0;
      }

      else
      {
        v32 = sub_1000423E0();
        if (v32)
        {
          v33 = sub_100042E68(v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v247 = "HandleSetPixelFormatMessage";
            v248 = 1024;
            v249 = 903;
            v250 = 1024;
            LODWORD(v251) = v239[0].u8[5];
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%s:%d] %d Only 16 or 32 bit pixels supported.", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 903, "HandleSetPixelFormatMessage", 7, 0, "%d Only 16 or 32 bit pixels supported.", v239[0].u8[5]);
        v34 = 4294967294;
      }

      [0 unlock];
      return v34;
    case 2:
      v86 = sub_1000423E0();
      if (v86)
      {
        v87 = sub_100042E68(v86);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 143;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%s:%d] set encodings", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 143, "HandleViewerCommand", 7, 0, "set encodings");
      if (sub_10003ABCC(*(a1 + 8)) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      v240 = 0;
      memset(v239, 0, sizeof(v239));
      sub_10003A56C(*(a1 + 8), 4u, v239);
      v239[0].i16[1] = bswap32(v239[0].u16[1]) >> 16;
      v88 = sub_10003ABCC(*(a1 + 8));
      v89 = v239[0].u16[1];
      v90 = 4 * v239[0].u16[1];
      if (v90 + 4 > v88)
      {
        return 0xFFFFFFFFLL;
      }

      if (v239[0].u16[1] > 0x64u)
      {
        return 4294967294;
      }

      sub_10003A284(*(a1 + 8), 4u);
      sub_100039EA8(*(a1 + 8), v90, &buf);
      if (v89)
      {
        p_buf = &buf;
        v92 = v89;
        do
        {
          *p_buf = bswap32(*p_buf);
          ++p_buf;
          --v92;
        }

        while (v92);
        for (i = 0; i != v89; ++i)
        {
          v94 = *(&buf + i);
          if ((v94 - 1000) <= 0xB && ((1 << (v94 + 24)) & 0x807) != 0 || v94 == 6 || v94 == 16)
          {
            goto LABEL_303;
          }
        }

        v98 = (a1 + 140);
        *(a1 + 144) = *(a1 + 140);
        v99 = (a1 + 144);
      }

      else
      {
        LODWORD(i) = 0;
LABEL_303:
        v98 = (a1 + 140);
        *(a1 + 144) = *(a1 + 140);
        v99 = (a1 + 144);
        if (i != v89)
        {
          *v98 = *(&buf + i);
          v196 = sub_1000423E0();
          if (v196)
          {
            v197 = sub_100042E68(v196);
            if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
            {
              v198 = *v98;
              *__str = 136315650;
              *&__str[4] = "HandleSetEncodingsMessage";
              v242 = 1024;
              v243 = 563;
              v244 = 1024;
              LODWORD(v245) = v198;
              _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "[%s:%d] preferred codec %u", __str, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 563, "HandleSetEncodingsMessage", 7, 0, "preferred codec %u", *v98);
          goto LABEL_309;
        }
      }

      *v98 = 0;
LABEL_309:
      *(a1 + 664) = 0;
      *(a1 + 148) = 0;
      v199 = 1;
      *(a1 + 158) = 0;
      if (!v89)
      {
LABEL_358:
        if (*v99 != *v98)
        {
          *(a1 + 1506) = 1;
          v215 = sub_1000423E0();
          if (v215)
          {
            v216 = sub_100042E68(v215);
            if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
            {
              *__str = 136315394;
              *&__str[4] = "HandleSetEncodingsMessage";
              v242 = 1024;
              v243 = 662;
              _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "[%s:%d] codec change", __str, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 662, "HandleSetEncodingsMessage", 7, 0, "codec change");
        }

        if (*(a1 + 664))
        {
          v217 = sub_1000423E0();
          if (v217)
          {
            v218 = sub_100042E68(v217);
            if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
            {
              *__str = 136315394;
              *&__str[4] = "HandleSetEncodingsMessage";
              v242 = 1024;
              v243 = 669;
              _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer wants user info", __str, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 669, "HandleSetEncodingsMessage", 7, 0, "viewer wants user info");
        }

        v219 = *(a1 + 3056);
        if (v199)
        {
          if (*(a1 + 3056))
          {
            v220 = sub_1000423E0();
            if (v220)
            {
              v221 = sub_100042E68(v220);
              if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v242 = 1024;
                v243 = 687;
                _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "[%s:%d] do not send touch events", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 687, "HandleSetEncodingsMessage", 7, 0, "do not send touch events");
            *(a1 + 3056) = 0;
            sub_100033D2C(v222);
          }
        }

        else
        {
          v223 = sub_1000423E0();
          if (v219)
          {
            if (v223)
            {
              v224 = sub_100042E68(v223);
              if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v242 = 1024;
                v243 = 681;
                _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "[%s:%d] already monitoring touch events", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 681, "HandleSetEncodingsMessage", 7, 0, "already monitoring touch events");
          }

          else
          {
            if (v223)
            {
              v231 = sub_100042E68(v223);
              if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v242 = 1024;
                v243 = 676;
                _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "[%s:%d] send touch events", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 676, "HandleSetEncodingsMessage", 7, 0, "send touch events");
            *(a1 + 3056) = 1;
            sub_100033BFC(v232);
          }
        }

        [0 unlock];
        return 0;
      }

      v236 = v99;
      v237 = 0;
      v200 = &buf;
      while (1)
      {
        v201 = *v200;
        if (*v200 <= 999)
        {
          if (v201 <= 0)
          {
            if (v201 == -239)
            {
              *(a1 + 154) = 1;
            }

            else if (v201 == -223)
            {
              *(a1 + 158) = 1;
            }

            goto LABEL_327;
          }

          if (v201 == 1)
          {
            *(a1 + 152) = 1;
          }

          else if (v201 == 6 || v201 == 16)
          {
LABEL_323:
            v203 = sub_1000423E0();
            if (v203)
            {
              v204 = sub_100042E68(v203);
              if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
              {
                v205 = *v200;
                *__str = 136315650;
                *&__str[4] = "HandleSetEncodingsMessage";
                v242 = 1024;
                v243 = 641;
                v244 = 1024;
                LODWORD(v245) = v205;
                _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "[%s:%d] lossless codec %d", __str, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 641, "HandleSetEncodingsMessage", 7, 0, "lossless codec %d", *v200);
            *(a1 + 148) = *v200;
          }
        }

        else if (v201 > 1100)
        {
          if (v201 > 1104)
          {
            if (v201 != 1105)
            {
              if (v201 == 1106)
              {
                v206 = MGGetSInt32Answer();
                v207 = sub_1000423E0();
                if (v206 == 4)
                {
                  if (v207)
                  {
                    v208 = sub_100042E68(v207);
                    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
                    {
                      *__str = 136315394;
                      *&__str[4] = "HandleSetEncodingsMessage";
                      v242 = 1024;
                      v243 = 653;
                      _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "[%s:%d] do not send touch positions", __str, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 653, "HandleSetEncodingsMessage", 7, 0, "do not send touch positions");
                }

                else
                {
                  if (v207)
                  {
                    v214 = sub_100042E68(v207);
                    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
                    {
                      *__str = 136315394;
                      *&__str[4] = "HandleSetEncodingsMessage";
                      v242 = 1024;
                      v243 = 650;
                      _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_DEFAULT, "[%s:%d] send touch positions", __str, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 650, "HandleSetEncodingsMessage", 7, 0, "send touch positions");
                  v237 = 1;
                }
              }

              goto LABEL_327;
            }
          }

          else if (v201 != 1101)
          {
            if (v201 == 1104)
            {
              *(a1 + 153) = 1;
            }

            goto LABEL_327;
          }

          v209 = *(a1 + 160);
          if (v201 == 1101)
          {
            v211 = *(a1 + 159);
            *(a1 + 159) = 1;
            v210 = v209;
            if (!v211)
            {
              goto LABEL_350;
            }
          }

          else
          {
            v210 = 1;
            *(a1 + 160) = 1;
          }

          if (!v209 && v210)
          {
LABEL_350:
            v212 = sub_1000423E0();
            if (v212)
            {
              v213 = sub_100042E68(v212);
              if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315394;
                *&__str[4] = "HandleSetEncodingsMessage";
                v242 = 1024;
                v243 = 627;
                _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "[%s:%d] send encoding", __str, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 627, "HandleSetEncodingsMessage", 7, 0, "send encoding");
            *(a1 + 1454) = 1;
          }
        }

        else
        {
          if ((v201 - 1000) < 3)
          {
            goto LABEL_323;
          }

          if (v201 == 1100)
          {
            *(a1 + 155) = 1;
          }
        }

LABEL_327:
        ++v200;
        if (!--v89)
        {
          v199 = v237 == 0;
          v99 = v236;
          goto LABEL_358;
        }
      }

    case 3:
      v51 = sub_1000423E0();
      if (v51)
      {
        v52 = sub_100042E68(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 147;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%s:%d] frame buffer update request", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 147, "HandleViewerCommand", 7, 0, "frame buffer update request");
      v239[1].i16[0] = 0;
      v239[0] = 0;
      v53 = sub_1000423E0();
      if (v53)
      {
        v54 = sub_100042E68(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleFrameBuferUpdateRequestMessage";
          v248 = 1024;
          v249 = 228;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleFrameBuferUpdateRequestMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 228, "HandleFrameBuferUpdateRequestMessage", 7, 0, "HandleFrameBuferUpdateRequestMessage");
      if (sub_10003ABCC(*(a1 + 8)) < 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      if (*(a1 + 1499))
      {
        return 4294967294;
      }

      sub_100039EA8(*(a1 + 8), 0xAu, v239);
      v34 = 0;
      *(a1 + 121) = 2;
      return v34;
    case 4:
      v136 = sub_1000423E0();
      if (v136)
      {
        v137 = sub_100042E68(v136);
        if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 151;
          _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_ERROR, "[%s:%d] key event received - close conenction", &buf, 0x12u);
        }
      }

      v40 = "HandleViewerCommand";
      v41 = "key event received - close conenction";
      v42 = 151;
      goto LABEL_221;
    case 5:
      v138 = sub_1000423E0();
      if (v138)
      {
        v139 = sub_100042E68(v138);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 155;
          _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "[%s:%d] pointer event received - close conenction", &buf, 0x12u);
        }
      }

      v40 = "HandleViewerCommand";
      v41 = "pointer event received - close conenction";
      v42 = 155;
      goto LABEL_221;
    case 7:
      v55 = sub_1000423E0();
      if (v55)
      {
        v56 = sub_100042E68(v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 159;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSetScreenDepth", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 159, "HandleViewerCommand", 7, 0, "kRFBSetScreenDepth");
      if (sub_10003ABCC(*(a1 + 8)) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      buf = 0;
      v57 = *(a1 + 8);
      v58 = &buf;
      v59 = 4;
      goto LABEL_211;
    case 8:
      v100 = sub_1000423E0();
      if (v100)
      {
        v101 = sub_100042E68(v100);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 163;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSetServerScaling", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 163, "HandleViewerCommand", 7, 0, "kRFBSetServerScaling");
      if (sub_10003ABCC(*(a1 + 8)) < 0xA)
      {
        return 0xFFFFFFFFLL;
      }

      v239[1].i16[0] = 0;
      v239[0] = 0;
      sub_100039EA8(*(a1 + 8), 0xAu, v239);
      v102 = COERCE_DOUBLE(bswap64(*(v239 + 2)));
      *(v239 + 2) = *&v102;
      v34 = 4294967294;
      if (v102 <= 0.0 || v102 > 1.0)
      {
        return v34;
      }

      v103 = [0 lock];
      if (v103)
      {
        v104 = v103;
        v105 = sub_1000423E0();
        if (v105)
        {
          v106 = sub_100042E68(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v247 = "HandleSetServerScalingMessage";
            v248 = 1024;
            v249 = 989;
            v250 = 1024;
            LODWORD(v251) = v104;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter HandleSetServerScalingMessage err %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 989, "HandleSetServerScalingMessage", 7, 0, "*****enter HandleSetServerScalingMessage err %d", v104);
      }

      v107 = *(v239 + 2);
      *(a1 + 1400) = *(v239 + 2);
      *(a1 + 1395) = 1;
      *(a1 + 1394) = v107 < 1.0;
      v108 = sub_1000423E0();
      if (v108)
      {
        v109 = sub_100042E68(v108);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          v110 = *(a1 + 1400);
          buf = 136315650;
          v247 = "HandleSetServerScalingMessage";
          v248 = 1024;
          v249 = 1003;
          v250 = 2048;
          *&v251 = v110;
          _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetServerScalingMessage - set scaling to %f", &buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1003, "HandleSetServerScalingMessage", 7, 0, "HandleSetServerScalingMessage - set scaling to %f", *(a1 + 1400));
      *(a1 + 1392) = 1;
      v111 = [0 unlock];
      if (v111)
      {
        v112 = v111;
        v113 = sub_1000423E0();
        if (v113)
        {
          v114 = sub_100042E68(v113);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v247 = "HandleSetServerScalingMessage";
            v248 = 1024;
            v249 = 1008;
            v250 = 1024;
            LODWORD(v251) = v112;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "[%s:%d] *****enter HandleSetServerScalingMessage err %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1008, "HandleSetServerScalingMessage", 7, 0, "*****enter HandleSetServerScalingMessage err %d");
      }

      return 0;
    case 9:
      v115 = sub_1000423E0();
      if (v115)
      {
        v116 = sub_100042E68(v115);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 167;
          _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBAutoFrameBufferUpdates", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 167, "HandleViewerCommand", 7, 0, "kRFBAutoFrameBufferUpdates");
      if (sub_10003ABCC(*(a1 + 8)) < 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      if (*(a1 + 1499))
      {
        return 4294967294;
      }

      v239[0] = 0;
      v239[1] = 0;
      sub_100039EA8(*(a1 + 8), 0x10u, v239);
      [0 lock];
      v239[0].i16[1] = bswap32(v239[0].u16[1]) >> 16;
      v117 = v239[0].i32[1];
      v239[0].i32[1] = bswap32(v239[0].u32[1]);
      v118 = vrev16_s8(v239[1]);
      v239[1] = v118;
      *(a1 + 48) = v239[0].i32[1];
      *(a1 + 44) = v117 != -1;
      v119 = v118.i16[1];
      *(a1 + 64) = v118.i16[1];
      v120 = v118.i16[0];
      *(a1 + 66) = v118.i16[0];
      v121 = v118.i16[3] + v118.i16[1];
      *(a1 + 68) = v118.i16[3] + v118.i16[1];
      v122 = v118.i16[2] + v118.i16[0];
      *(a1 + 70) = v118.i16[2] + v118.i16[0];
      if (*(a1 + 1394))
      {
        v123 = *(a1 + 1400);
        v119 = llround(v118.u16[1] / v123);
        v120 = llround(v118.u16[0] / v123);
        v122 = v120 + llround(v118.u16[2] / v123);
        v121 = v119 + llround(v118.u16[3] / v123);
      }

      *(a1 + 56) = v119;
      *(a1 + 58) = v120;
      *(a1 + 62) = v122;
      *(a1 + 60) = v121;
      if (v119 < 0)
      {
        *(a1 + 56) = 0;
        if ((v120 & 0x8000) == 0)
        {
LABEL_180:
          if ((v122 & 0x8000) == 0)
          {
            goto LABEL_181;
          }

          goto LABEL_300;
        }
      }

      else if ((v120 & 0x8000) == 0)
      {
        goto LABEL_180;
      }

      *(a1 + 58) = 0;
      if ((v122 & 0x8000) == 0)
      {
LABEL_181:
        if ((v121 & 0x8000) == 0)
        {
          goto LABEL_182;
        }

        goto LABEL_301;
      }

LABEL_300:
      *(a1 + 62) = 0;
      if ((v121 & 0x8000) == 0)
      {
        goto LABEL_182;
      }

LABEL_301:
      *(a1 + 60) = 0;
LABEL_182:
      [0 unlock];
      v124 = sub_1000423E0();
      if (v124)
      {
        v125 = sub_100042E68(v124);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v126 = *(a1 + 44);
          buf = 136315650;
          v247 = "HandleAutoFrameBufferUpdateMessage";
          v248 = 1024;
          v249 = 1074;
          v250 = 1024;
          LODWORD(v251) = v126;
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleAutoFrameBufferUpdateMessage2  flag %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1074, "HandleAutoFrameBufferUpdateMessage", 7, 0, "HandleAutoFrameBufferUpdateMessage2  flag %d");
      return 0;
    case 10:
      v142 = sub_1000423E0();
      if (v142)
      {
        v143 = sub_100042E68(v142);
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 171;
          _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSetMode", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 171, "HandleViewerCommand", 7, 0, "kRFBSetMode");
      if (sub_10003ABCC(*(a1 + 8)) < 4)
      {
        return 0xFFFFFFFFLL;
      }

      buf = 0;
      sub_100039EA8(*(a1 + 8), 4u, &buf);
      v147 = __rev16(HIWORD(buf));
      if (v147 > 2)
      {
        return 4294967294;
      }

      if ((v147 - 1) <= 1u && (*(a1 + 1492) || HIWORD(buf) == 512 && !*(a1 + 1493)))
      {
        return 0;
      }

      v34 = 0;
      *(a1 + 26) = v147;
      return v34;
    case 13:
      v239[0] = 0;
      v140 = sub_1000423E0();
      if (v140)
      {
        v141 = sub_100042E68(v140);
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleSetDisplayMessage";
          v248 = 1024;
          v249 = 493;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "[%s:%d] start HandleSetDisplayMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 493, "HandleSetDisplayMessage", 7, 0, "start HandleSetDisplayMessage");
      if (sub_10003ABCC(*(a1 + 8)) < 8)
      {
        return 0xFFFFFFFFLL;
      }

      v57 = *(a1 + 8);
      v58 = v239;
      v59 = 8;
LABEL_211:
      sub_100039EA8(v57, v59, v58);
      return 0;
    case 18:
      if (sub_10003ABCC(*(a1 + 8)) < 8)
      {
        return 0xFFFFFFFFLL;
      }

      *__str = 0;
      sub_10003A56C(*(a1 + 8), 8u, __str);
      *&__str[2] = bswap32(*&__str[2]) >> 16;
      *&__str[4] = bswap32(*&__str[4]) >> 16;
      *&__str[6] = bswap32(*&__str[6]) >> 16;
      v36 = sub_1000423E0();
      if (v36)
      {
        v37 = sub_100042E68(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSetEncryptionMessage";
          v248 = 1024;
          v249 = 724;
          v250 = 1024;
          LODWORD(v251) = *&__str[2];
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage cmd %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 724, "HandleSetEncryptionMessage", 7, 0, "HandleSetEncryptionMessage cmd %d", *&__str[2]);
      if (*&__str[2] == 2)
      {
        sub_10003A284(*(a1 + 8), 8u);
        if (*&__str[4] == 1)
        {
          v172 = sub_1000423E0();
          if (v172)
          {
            v173 = sub_100042E68(v172);
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315394;
              v247 = "HandleSetEncryptionMessage";
              v248 = 1024;
              v249 = 783;
              _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "[%s:%d] **going to decrypt everything that is received", &buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 783, "HandleSetEncryptionMessage", 7, 0, "**going to decrypt everything that is received");
          *(a1 + 2218) = 1;
          v174 = *(a1 + 2488);
          if (v174)
          {
            v34 = 0;
            *(v174 + 1352) = 1;
            return v34;
          }
        }

        else
        {
          *(a1 + 2218) = 0;
          v194 = sub_1000423E0();
          if (v194)
          {
            v195 = sub_100042E68(v194);
            if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315394;
              v247 = "HandleSetEncryptionMessage";
              v248 = 1024;
              v249 = 794;
              _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop encrypting the stream", &buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 794, "HandleSetEncryptionMessage", 7, 0, "stop encrypting the stream", v235);
        }

        return 0;
      }

      if (*&__str[2] != 1)
      {
        v175 = sub_1000423E0();
        if (v175)
        {
          v176 = sub_100042E68(v175);
          if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v247 = "HandleSetEncryptionMessage";
            v248 = 1024;
            v249 = 807;
            v250 = 1024;
            LODWORD(v251) = *&__str[2];
            _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage - invalid encryptionCommand %d", &buf, 0x18u);
          }
        }

        v235 = *&__str[2];
        v40 = "HandleSetEncryptionMessage";
        v41 = "HandleSetEncryptionMessage - invalid encryptionCommand %d";
        v42 = 807;
        goto LABEL_273;
      }

      if (*&__str[6] >= 0x65u)
      {
        v38 = sub_1000423E0();
        if (v38)
        {
          v39 = sub_100042E68(v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v247 = "HandleSetEncryptionMessage";
            v248 = 1024;
            v249 = 730;
            v250 = 1024;
            LODWORD(v251) = *&__str[6];
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage - invalid # of encryption methods: %d", &buf, 0x18u);
          }
        }

        v235 = *&__str[6];
        v40 = "HandleSetEncryptionMessage";
        v41 = "HandleSetEncryptionMessage - invalid # of encryption methods: %d";
        v42 = 730;
LABEL_273:
        v146 = 5;
        goto LABEL_222;
      }

      v185 = sub_10003ABCC(*(a1 + 8));
      v186 = *&__str[6];
      v187 = 4 * *&__str[6];
      if (v187 + 8 > v185)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A284(*(a1 + 8), 8u);
      sub_100039EA8(*(a1 + 8), v187, &buf);
      if (!v186)
      {
LABEL_290:
        v192 = sub_1000423E0();
        if (v192)
        {
          v193 = sub_100042E68(v192);
          if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
          {
            v239[0].i32[0] = 136315394;
            *(v239 + 4) = "HandleSetEncryptionMessage";
            v239[1].i16[2] = 1024;
            *(&v239[1].i32[1] + 2) = 760;
            _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage - no valid encryption method found", v239, 0x12u);
          }
        }

        v40 = "HandleSetEncryptionMessage";
        v41 = "HandleSetEncryptionMessage - no valid encryption method found";
        v42 = 760;
        goto LABEL_273;
      }

      v188 = &buf;
      v189 = v186;
      do
      {
        *v188 = bswap32(*v188);
        ++v188;
        --v189;
      }

      while (v189);
      v190 = &buf;
      while (1)
      {
        v191 = *v190++;
        if (v191 == 1)
        {
          break;
        }

        if (!--v186)
        {
          goto LABEL_290;
        }
      }

      [0 lock];
      *(a1 + 2178) = 1;
      *(a1 + 2180) = 1;
      *(a1 + 2184) = *&__str[4];
      sub_100003A3C((a1 + 2202), 16);
      sub_100003A3C((a1 + 2186), 16);
      [0 unlock];
      v233 = sub_1000423E0();
      if (v233)
      {
        v234 = sub_100042E68(v233);
        if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
        {
          v239[0].i32[0] = 136315394;
          *(v239 + 4) = "HandleSetEncryptionMessage";
          v239[1].i16[2] = 1024;
          *(&v239[1].i32[1] + 2) = 776;
          _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleSetEncryptionMessage 2", v239, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 776, "HandleSetEncryptionMessage", 7, 0, "HandleSetEncryptionMessage 2");
      return 0;
    case 22:
      memset(v239, 0, 34);
      if (sub_10003ABCC(*(a1 + 8)) < 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      while (2)
      {
        v60 = sub_10003A56C(*(a1 + 8), 0x10u, v239);
        if (v60)
        {
          v61 = v60;
          v62 = sub_1000423E0();
          if (v62)
          {
            v63 = sub_100042E68(v62);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315650;
              v247 = "HandleAssistCursorMessage";
              v248 = 1024;
              v249 = 357;
              v250 = 1024;
              LODWORD(v251) = v61;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] NetBufferViewData:%d", &buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 357, "HandleAssistCursorMessage", 7, 0, "NetBufferViewData:%d", v61);
        }

        if (v239[0].u8[0] != 22)
        {
          return 0;
        }

        v64 = bswap32(v239[0].u16[1]) >> 16;
        v239[0].i16[1] = v64;
        v65 = bswap32(v239[0].u16[2]);
        v66 = HIWORD(v65);
        v239[0].i16[2] = HIWORD(v65);
        if (HIWORD(v65) < 2u)
        {
          if (v64 < 0xD)
          {
            v81 = *(a1 + 8);
            LODWORD(v77) = 16;
            goto LABEL_123;
          }

          v78 = v64 - 12;
          v79 = sub_1000423E0();
          if (v79)
          {
            v80 = sub_100042E68(v79);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315650;
              v247 = "HandleAssistCursorMessageV1";
              v248 = 1024;
              v249 = 415;
              v250 = 1024;
              LODWORD(v251) = v78;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 415, "HandleAssistCursorMessageV1", 7, 0, "extra amount %d", v78);
          v76 = sub_10003ABCC(*(a1 + 8));
          v77 = v78 + 16;
        }

        else
        {
          if (sub_10003ABCC(*(a1 + 8)) < 0x22)
          {
            return 0xFFFFFFFFLL;
          }

          if (v239[0].u16[1] < 0x1Eu)
          {
            goto LABEL_121;
          }

          v67 = sub_10003A56C(*(a1 + 8), 0x22u, v239);
          if (v67)
          {
            v68 = v67;
            v69 = sub_1000423E0();
            if (v69)
            {
              v70 = sub_100042E68(v69);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                buf = 136315650;
                v247 = "HandleAssistCursorMessageV2";
                v248 = 1024;
                v249 = 445;
                v250 = 1024;
                LODWORD(v251) = v68;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[%s:%d] NetBufferViewData:%d", &buf, 0x18u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 445, "HandleAssistCursorMessageV2", 7, 0, "NetBufferViewData:%d", v68);
          }

          v239[0].i16[1] = bswap32(v239[0].u16[1]) >> 16;
          v239[0].i16[2] = bswap32(v239[0].u16[2]) >> 16;
          *&v239[2].i16[1] = vrev64q_s8(*&v239[2].i16[1]);
          v71 = sub_1000423E0();
          if (v71)
          {
            v72 = sub_100042E68(v71);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136316162;
              v247 = "HandleAssistCursorMessageV2";
              v248 = 1024;
              v249 = 454;
              v250 = 1024;
              LODWORD(v251) = v239[2].u8[0];
              WORD2(v251) = 2048;
              *(&v251 + 6) = *(&v239[2] + 2);
              HIWORD(v251) = 2048;
              v252 = *(&v239[3] + 2);
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%s:%d] orientation: %d, new coords: (%f, %f)", &buf, 0x2Cu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 454, "HandleAssistCursorMessageV2", 7, 0, "orientation: %d, new coords: (%f, %f)", v239[2].u8[0], *(&v239[2] + 2), *(&v239[3] + 2));
          if (v239[0].u16[1] < 0x1Fu)
          {
LABEL_121:
            v81 = *(a1 + 8);
            LODWORD(v77) = 34;
            goto LABEL_123;
          }

          v73 = v239[0].i16[1] - 30;
          v74 = sub_1000423E0();
          if (v74)
          {
            v75 = sub_100042E68(v74);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315650;
              v247 = "HandleAssistCursorMessageV2";
              v248 = 1024;
              v249 = 461;
              v250 = 1024;
              LODWORD(v251) = v73;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 461, "HandleAssistCursorMessageV2", 7, 0, "extra amount %d", v73);
          v76 = sub_10003ABCC(*(a1 + 8));
          v77 = v73 + 34;
        }

        if (v77 > v76)
        {
          return 0xFFFFFFFFLL;
        }

        v81 = *(a1 + 8);
LABEL_123:
        sub_10003A284(v81, v77);
        if ((sub_100040464() & 1) == 0)
        {
          v82 = bswap32(v239[1].u32[1]);
          v83 = (bswap32(v239[1].u16[0]) >> 16);
          v84 = (bswap32(v239[1].u16[1]) >> 16);
          if (v66 <= 1)
          {
            v85 = 0;
          }

          else
          {
            v85 = &v239[2];
          }

          sub_1000430F0(v82, v85, v83, v84);
        }

        if (sub_10003ABCC(*(a1 + 8)) <= 0x10)
        {
          return 0;
        }

        continue;
      }

    case 24:
      v43 = sub_1000423E0();
      if (v43)
      {
        v44 = sub_100042E68(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 190;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%s:%d] kRFBSystemInfoRequest", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 190, "HandleViewerCommand", 7, 0, "kRFBSystemInfoRequest");
      *(v239 + 6) = 0;
      v239[0] = 0;
      v45 = sub_1000423E0();
      if (v45)
      {
        v46 = sub_100042E68(v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleSystemInfoRequest";
          v248 = 1024;
          v249 = 263;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%s:%d] handle system info request", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 263, "HandleSystemInfoRequest", 7, 0, "handle system info request");
      if (sub_10003ABCC(*(a1 + 8)) < 0xE)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A56C(*(a1 + 8), 0xEu, v239);
      v239[0].i16[1] = bswap32(v239[0].u16[1]) >> 16;
      v239[0].i16[2] = bswap32(v239[0].u16[2]) >> 16;
      v239[1].i16[1] = bswap32(v239[1].u16[1]) >> 16;
      v239[1].i16[2] = bswap32(v239[1].u16[2]) >> 16;
      v47 = sub_1000423E0();
      if (v47)
      {
        v48 = sub_100042E68(v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315906;
          v247 = "HandleSystemInfoRequest";
          v248 = 1024;
          v249 = 276;
          v250 = 1024;
          LODWORD(v251) = v239[0].u16[1];
          WORD2(v251) = 1024;
          *(&v251 + 6) = v239[1].u16[2];
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] size %d %d", &buf, 0x1Eu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 276, "HandleSystemInfoRequest", 7, 0, "size %d %d", v239[0].u16[1], v239[1].u16[2]);
      if (v239[1].u16[2] + 10 > v239[0].u16[1])
      {
        v49 = sub_1000423E0();
        if (v49)
        {
          v50 = sub_100042E68(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315394;
            v247 = "HandleSystemInfoRequest";
            v248 = 1024;
            v249 = 279;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%s:%d] message size is invalid", &buf, 0x12u);
          }
        }

        v40 = "HandleSystemInfoRequest";
        v41 = "message size is invalid";
        v42 = 279;
        goto LABEL_235;
      }

      if (v239[1].u16[2] > 0x1000u)
      {
        v148 = sub_1000423E0();
        if (v148)
        {
          v149 = sub_100042E68(v148);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315394;
            v247 = "HandleSystemInfoRequest";
            v248 = 1024;
            v249 = 285;
            _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "[%s:%d] arguments size is too large", &buf, 0x12u);
          }
        }

        v40 = "HandleSystemInfoRequest";
        v41 = "arguments size is too large";
        v42 = 285;
LABEL_235:
        v146 = 7;
LABEL_222:
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, v42, v40, v146, 0, v41, v235);
        return 4294967294;
      }

      v177 = sub_10003ABCC(*(a1 + 8));
      if (v239[1].u16[2] + 10 > v177)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A284(*(a1 + 8), 0xEu);
      v178 = sub_1000423E0();
      if (v178)
      {
        v179 = sub_100042E68(v178);
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSystemInfoRequest";
          v248 = 1024;
          v249 = 298;
          v250 = 1024;
          LODWORD(v251) = v239[1].u16[2] + 1;
          _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "[%s:%d] allocate %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 298, "HandleSystemInfoRequest", 7, 0, "allocate %d", v239[1].u16[2] + 1);
      v180 = malloc_type_malloc(v239[1].u16[2] + 1, 0xA5AE487FuLL);
      v181 = sub_100039EA8(*(a1 + 8), v239[1].u16[2], v180);
      if (v181 << 16)
      {
        v182 = v181;
        v183 = sub_1000423E0();
        if (v183)
        {
          v184 = sub_100042E68(v183);
          if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v247 = "HandleSystemInfoRequest";
            v248 = 1024;
            v249 = 303;
            v250 = 1024;
            LODWORD(v251) = v182;
            _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "[%s:%d] NetBufferRemoveData returned error: %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 303, "HandleSystemInfoRequest", 7, 0, "NetBufferRemoveData returned error: %d", v182);
        free(v180);
        return 4294967294;
      }

      v180[v239[1].u16[2]] = 0;
      v225 = sub_1000423E0();
      if (v225)
      {
        v226 = sub_100042E68(v225);
        if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleSystemInfoRequest";
          v248 = 1024;
          v249 = 309;
          v250 = 2080;
          *&v251 = v180;
          _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "[%s:%d] args = %s", &buf, 0x1Cu);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 309, "HandleSystemInfoRequest", 7, 0, "args = %s", v180);
      v227 = v239[1].u16[2] + 10;
      if (v227 < v239[0].u16[1])
      {
        v228 = v239[0].i16[1] - v227;
        v229 = sub_1000423E0();
        if (v229)
        {
          v230 = sub_100042E68(v229);
          if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
          {
            buf = 136315650;
            v247 = "HandleSystemInfoRequest";
            v248 = 1024;
            v249 = 316;
            v250 = 1024;
            LODWORD(v251) = v228;
            _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 316, "HandleSystemInfoRequest", 7, 0, "extra amount %d", v228);
        sub_10003A284(*(a1 + 8), v228);
      }

      if (*(a1 + 2923))
      {
        sub_100031EA0(a1, v239, v180);
      }

      free(v180);
      return 0;
    case 25:
      return sub_1000329D4(a1);
    case 33:
      memset(v239, 0, 66);
      v127 = sub_1000423E0();
      if (v127)
      {
        v128 = sub_100042E68(v127);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315394;
          v247 = "HandleViewerInfoMessage";
          v248 = 1024;
          v249 = 1140;
          _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleViewerInfoMessage", &buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1140, "HandleViewerInfoMessage", 7, 0, "HandleViewerInfoMessage");
      if (sub_10003ABCC(*(a1 + 8)) < 0x42)
      {
        return 0xFFFFFFFFLL;
      }

      sub_10003A56C(*(a1 + 8), 0x42u, v239);
      v129 = bswap32(v239[0].u16[1]) >> 16;
      v239[0].i16[1] = v129;
      v239[0].i16[2] = bswap32(v239[0].u16[2]) >> 16;
      if (v129 < 0x3F)
      {
        v135 = *(a1 + 8);
        v134 = 66;
        goto LABEL_245;
      }

      v130 = v129 - 62;
      v131 = sub_1000423E0();
      if (v131)
      {
        v132 = sub_100042E68(v131);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          buf = 136315650;
          v247 = "HandleViewerInfoMessage";
          v248 = 1024;
          v249 = 1155;
          v250 = 1024;
          LODWORD(v251) = v130;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "[%s:%d] extra amount %d", &buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1155, "HandleViewerInfoMessage", 7, 0, "extra amount %d", v130);
      v133 = sub_10003ABCC(*(a1 + 8));
      v134 = v130 + 66;
      if (v130 + 66 <= v133)
      {
        v135 = *(a1 + 8);
LABEL_245:
        sub_10003A284(v135, v134);
        if (v239[0].u16[2] != 1)
        {
          v157 = sub_1000423E0();
          if (v157)
          {
            v158 = sub_100042E68(v157);
            if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
            {
              buf = 136315906;
              v247 = "HandleViewerInfoMessage";
              v248 = 1024;
              v249 = 1166;
              v250 = 1024;
              LODWORD(v251) = 1;
              WORD2(v251) = 1024;
              *(&v251 + 6) = v239[0].u16[2];
              _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "[%s:%d] message version %d %d ", &buf, 0x1Eu);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1166, "HandleViewerInfoMessage", 7, 0, "message version %d %d ", 1, v239[0].u16[2]);
        }

        *(a1 + 2644) = vrev32q_s8(*(&v239[0].u32[1] + 2));
        *(a1 + 2660) = vrev32_s8(*(&v239[2] + 6));
        *(a1 + 2668) = bswap32(*(&v239[3].u32[1] + 2));
        *(a1 + 2672) = *&v239[4].i16[1];
        *(a1 + 2688) = *&v239[6].i16[1];
        *(a1 + 2640) = 1;
        v159 = sub_1000423E0();
        if (v159)
        {
          v160 = sub_100042E68(v159);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            v161 = *(a1 + 2644);
            v162 = *(a1 + 2648);
            v163 = *(a1 + 2652);
            v164 = *(a1 + 2656);
            v165 = *(a1 + 2660);
            v166 = *(a1 + 2664);
            v167 = *(a1 + 2668);
            buf = 136317186;
            v247 = "HandleViewerInfoMessage";
            v248 = 1024;
            v249 = 1179;
            v250 = 1024;
            LODWORD(v251) = v161;
            WORD2(v251) = 1024;
            *(&v251 + 6) = v162;
            WORD5(v251) = 1024;
            HIDWORD(v251) = v163;
            LOWORD(v252) = 1024;
            *(&v252 + 2) = v164;
            HIWORD(v252) = 1024;
            v253 = v165;
            v254 = 1024;
            v255 = v166;
            v256 = 1024;
            v257 = v167;
            _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "[%s:%d] appID %d app version %d.%d.%d OS version %d.%d.%d", &buf, 0x3Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1179, "HandleViewerInfoMessage", 7, 0, "appID %d app version %d.%d.%d OS version %d.%d.%d", *(a1 + 2644), *(a1 + 2648), *(a1 + 2652), *(a1 + 2656), *(a1 + 2660), *(a1 + 2664), *(a1 + 2668));
        bzero(&buf, 0xA00uLL);
        __strlcpy_chk();
        for (j = 0; j != 256; ++j)
        {
          if ((v239[4].u8[(j >> 3) + 2] >> (~j & 7)))
          {
            snprintf(__str, 0xAuLL, " %d", j);
            __strlcat_chk();
          }
        }

        v169 = sub_1000423E0();
        if (v169)
        {
          v170 = sub_100042E68(v169);
          if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
          {
            *__str = 136315650;
            *&__str[4] = "HandleViewerInfoMessage";
            v242 = 1024;
            v243 = 1198;
            v244 = 2080;
            v245 = &buf;
            _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s", __str, 0x1Cu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ViewerMessages.c", 107, 1198, "HandleViewerInfoMessage", 7, 0, "%s");
        return 0;
      }

      return 0xFFFFFFFFLL;
    case 35:
      return sub_100032DA0(a1, a2);
    default:
      v144 = sub_1000423E0();
      if (v144)
      {
        v145 = sub_100042E68(v144);
        if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
        {
          buf = 136315650;
          v247 = "HandleViewerCommand";
          v248 = 1024;
          v249 = 204;
          v250 = 1024;
          LODWORD(v251) = v238;
          _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, "[%s:%d] unknown command %d", &buf, 0x18u);
        }
      }

      v235 = v238;
      v40 = "HandleViewerCommand";
      v41 = "unknown command %d";
      v42 = 204;
LABEL_221:
      v146 = 3;
      goto LABEL_222;
  }
}