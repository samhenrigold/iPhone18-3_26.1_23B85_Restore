@interface TouchEventMonitor
+ (TouchEventInfo)copyCurrentTouchPositions;
+ (id)sharedTouchEventMonitor;
+ (void)removeAllTouchPositions;
+ (void)startMonitoringTouchEvents;
+ (void)stopMonitoringTouchEvents;
- (TouchEventMonitor)init;
- (void)dealloc;
@end

@implementation TouchEventMonitor

+ (id)sharedTouchEventMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D18;
  block[3] = &unk_100068BB0;
  block[4] = self;
  if (qword_1000707D0 != -1)
  {
    dispatch_once(&qword_1000707D0, block);
  }

  v2 = qword_1000707C8;

  return v2;
}

- (TouchEventMonitor)init
{
  v5.receiver = self;
  v5.super_class = TouchEventMonitor;
  v2 = [(TouchEventMonitor *)&v5 init];
  if (v2)
  {
    v2->_hidEventClient = IOHIDEventSystemClientCreateWithType();
    v3 = objc_opt_new();
    [(TouchEventMonitor *)v2 setTouchInfoLock:v3];
  }

  return v2;
}

- (void)dealloc
{
  +[TouchEventMonitor stopMonitoringTouchEvents];
  hidEventClient = self->_hidEventClient;
  if (hidEventClient)
  {
    CFRelease(hidEventClient);
    self->_hidEventClient = 0;
  }

  [(TouchEventMonitor *)self setTouchInfoLock:0];
  v4.receiver = self;
  v4.super_class = TouchEventMonitor;
  [(TouchEventMonitor *)&v4 dealloc];
}

+ (void)stopMonitoringTouchEvents
{
  v2 = sub_1000423E0();
  if (v2)
  {
    v3 = sub_100042E68(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
      v28 = 1024;
      v29 = 67;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] stopMonitoringTouchEvents", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 67, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "stopMonitoringTouchEvents");
  v4 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock = [v4 touchInfoLock];
  [touchInfoLock lock];

  v6 = +[TouchEventMonitor sharedTouchEventMonitor];
  monitorCount = [v6 monitorCount];

  if (monitorCount < 1)
  {
    v16 = sub_1000423E0();
    if (v16)
    {
      v17 = sub_100042E68(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
        v28 = 1024;
        v29 = 99;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%s:%d] stopMonitoringTouchEvents called when not monitoring", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 99, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "stopMonitoringTouchEvents called when not monitoring");
  }

  else
  {
    v8 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v8 setMonitorCount:{objc_msgSend(v8, "monitorCount") - 1}];

    v9 = +[TouchEventMonitor sharedTouchEventMonitor];
    monitorCount2 = [v9 monitorCount];

    if (monitorCount2)
    {
      v11 = sub_1000423E0();
      if (v11)
      {
        v12 = sub_100042E68(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = +[TouchEventMonitor sharedTouchEventMonitor];
          monitorCount3 = [v13 monitorCount];
          *buf = 136315650;
          v27 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
          v28 = 1024;
          v29 = 96;
          v30 = 2048;
          v31 = monitorCount3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] monitorCount %ld", buf, 0x1Cu);
        }
      }

      v15 = +[TouchEventMonitor sharedTouchEventMonitor];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 96, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "monitorCount %ld", [v15 monitorCount]);
LABEL_23:

      goto LABEL_24;
    }

    dispatch_async(&_dispatch_main_q, &stru_100068BF0);
    v18 = +[TouchEventMonitor sharedTouchEventMonitor];
    touchEventTimer = [v18 touchEventTimer];

    if (touchEventTimer)
    {
      v20 = sub_1000423E0();
      if (v20)
      {
        v21 = sub_100042E68(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "+[TouchEventMonitor stopMonitoringTouchEvents]";
          v28 = 1024;
          v29 = 90;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop timer", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 90, "+[TouchEventMonitor stopMonitoringTouchEvents]", 7, 0, "stop timer");
      v22 = +[TouchEventMonitor sharedTouchEventMonitor];
      touchEventTimer2 = [v22 touchEventTimer];
      dispatch_source_cancel(touchEventTimer2);

      v15 = +[TouchEventMonitor sharedTouchEventMonitor];
      [v15 setTouchEventTimer:0];
      goto LABEL_23;
    }
  }

LABEL_24:
  v24 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock2 = [v24 touchInfoLock];
  [touchInfoLock2 unlock];
}

+ (void)startMonitoringTouchEvents
{
  v2 = sub_1000423E0();
  if (v2)
  {
    v3 = sub_100042E68(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "+[TouchEventMonitor startMonitoringTouchEvents]";
      v33 = 1024;
      v34 = 105;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] startMonitoringTouchEvents", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 105, "+[TouchEventMonitor startMonitoringTouchEvents]", 7, 0, "startMonitoringTouchEvents");
  v4 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock = [v4 touchInfoLock];
  [touchInfoLock lock];

  v6 = +[TouchEventMonitor sharedTouchEventMonitor];
  monitorCount = [v6 monitorCount];

  if (monitorCount)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = +[TouchEventMonitor sharedTouchEventMonitor];
        monitorCount2 = [v10 monitorCount];
        *buf = 136315650;
        v32 = "+[TouchEventMonitor startMonitoringTouchEvents]";
        v33 = 1024;
        v34 = 148;
        v35 = 2048;
        v36 = monitorCount2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] [TouchEventMonitor sharedTouchEventMonitor].monitorCount %ld", buf, 0x1Cu);
      }
    }

    v12 = +[TouchEventMonitor sharedTouchEventMonitor];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 148, "+[TouchEventMonitor startMonitoringTouchEvents]", 7, 0, "[TouchEventMonitor sharedTouchEventMonitor].monitorCount %ld", [v12 monitorCount]);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, &stru_100068C10);
    v12 = dispatch_get_global_queue(2, 0);
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
    v14 = +[TouchEventMonitor sharedTouchEventMonitor];
    [v14 setTouchEventTimer:v13];

    v15 = dispatch_walltime(0, 0);
    v16 = +[TouchEventMonitor sharedTouchEventMonitor];
    touchEventTimer = [v16 touchEventTimer];
    dispatch_source_set_timer(touchEventTimer, v15, 0x2FAF080uLL, 0x3D0900uLL);

    v18 = sub_1000423E0();
    if (v18)
    {
      v19 = sub_100042E68(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = +[TouchEventMonitor sharedTouchEventMonitor];
        touchEventTimer2 = [v20 touchEventTimer];
        *buf = 136315650;
        v32 = "+[TouchEventMonitor startMonitoringTouchEvents]";
        v33 = 1024;
        v34 = 136;
        v35 = 2048;
        v36 = touchEventTimer2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] [TouchEventMonitor sharedTouchEventMonitor].touchEventTimer %p", buf, 0x1Cu);
      }
    }

    v22 = +[TouchEventMonitor sharedTouchEventMonitor];
    touchEventTimer3 = [v22 touchEventTimer];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/TouchEventMonitor.m", 110, 136, "+[TouchEventMonitor startMonitoringTouchEvents]", 7, 0, "[TouchEventMonitor sharedTouchEventMonitor].touchEventTimer %p", touchEventTimer3);

    v24 = +[TouchEventMonitor sharedTouchEventMonitor];
    touchEventTimer4 = [v24 touchEventTimer];
    dispatch_source_set_event_handler(touchEventTimer4, &stru_100068C30);

    v26 = +[TouchEventMonitor sharedTouchEventMonitor];
    touchEventTimer5 = [v26 touchEventTimer];
    dispatch_resume(touchEventTimer5);
  }

  v28 = +[TouchEventMonitor sharedTouchEventMonitor];
  [v28 setMonitorCount:{objc_msgSend(v28, "monitorCount") + 1}];

  v29 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock2 = [v29 touchInfoLock];
  [touchInfoLock2 unlock];
}

+ (TouchEventInfo)copyCurrentTouchPositions
{
  v2 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock = [v2 touchInfoLock];
  [touchInfoLock lock];

  if (byte_1000707D8 == 1)
  {
    v4 = malloc_type_malloc(0x280uLL, 0x1000040F6D918ACuLL);
    memcpy(v4, dword_1000707E0, 0x280uLL);
    byte_1000707D8 = 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock2 = [v5 touchInfoLock];
  [touchInfoLock2 unlock];

  return v4;
}

+ (void)removeAllTouchPositions
{
  v2 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock = [v2 touchInfoLock];
  [touchInfoLock lock];

  byte_1000707D8 = 0;
  v5 = +[TouchEventMonitor sharedTouchEventMonitor];
  touchInfoLock2 = [v5 touchInfoLock];
  [touchInfoLock2 unlock];
}

@end