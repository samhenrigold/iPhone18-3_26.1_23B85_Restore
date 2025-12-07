@interface ShareSettingsInfo
- (ShareSettingsInfo)init;
- (id)gatherSystemInfo;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
@end

@implementation ShareSettingsInfo

- (ShareSettingsInfo)init
{
  v6.receiver = self;
  v6.super_class = ShareSettingsInfo;
  v2 = [(ShareSettingsInfo *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    stateSemaphore = v2->_stateSemaphore;
    v2->_stateSemaphore = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(ShareSettingsInfo *)self setStateSemaphore:0];
  v3.receiver = self;
  v3.super_class = ShareSettingsInfo;
  [(ShareSettingsInfo *)&v3 dealloc];
}

- (id)gatherSystemInfo
{
  v484 = objc_alloc_init(NSMutableDictionary);
  context = objc_autoreleasePoolPush();
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 140;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] gather system info", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 140, "[ShareSettingsInfo gatherSystemInfo]", 7, 0, "gather system info");
  selfCopy = self;
  v6 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v6 isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v8 = sub_1000423E0();
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 257;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] low power", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 257, "GetMiscFlags", 7, 0, "low power");
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = TMIsAutomaticTimeEnabled();
  v12 = sub_1000423E0();
  if (v12)
  {
    v13 = sub_100042E68(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "DateTimeServerEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 726;
      *&buf[18] = 1024;
      *&buf[20] = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] time server enabled %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 726, "DateTimeServerEnabled", 7, 0, "time server enabled %d", v11);
  if (v11)
  {
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 263;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] date and time server", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 263, "GetMiscFlags", 7, 0, "date and time server");
    v10 = v10 | 8;
  }

  v16 = +[CLLocationManager locationServicesEnabled];
  v17 = sub_1000423E0();
  if (v17)
  {
    v18 = sub_100042E68(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "LocationServicesEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 733;
      *&buf[18] = 1024;
      *&buf[20] = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%s:%d] location services enabled %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 733, "LocationServicesEnabled", 7, 0, "location services enabled %d", v16);
  if (v16)
  {
    v19 = sub_1000423E0();
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 269;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] location services", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 269, "GetMiscFlags", 7, 0, "location services");
    v10 = v10 | 2;
  }

  v21 = objc_opt_new();
  crossAppTrackingAllowed = [v21 crossAppTrackingAllowed];
  v23 = sub_1000423E0();
  if (v23)
  {
    v24 = sub_100042E68(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "CrossAppTrackingEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 742;
      *&buf[18] = 1024;
      *&buf[20] = crossAppTrackingAllowed;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] cross-app tracking enabled %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 742, "CrossAppTrackingEnabled", 7, 0, "cross-app tracking enabled %d", crossAppTrackingAllowed);

  if (crossAppTrackingAllowed)
  {
    v25 = sub_1000423E0();
    if (v25)
    {
      v26 = sub_100042E68(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 275;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] cross-app tracking", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 275, "GetMiscFlags", 7, 0, "cross-app tracking");
    v10 = v10 | 4;
  }

  v27 = selfCopy;
  v28 = [CBCentralManager alloc];
  v29 = dispatch_get_global_queue(17, 0);
  *v526 = CBCentralManagerOptionShowPowerAlertKey;
  v30 = [NSNumber numberWithBool:0];
  *&v520 = v30;
  v31 = [NSDictionary dictionaryWithObjects:&v520 forKeys:v526 count:1];
  v32 = [v28 initWithDelegate:v27 queue:v29 options:v31];

  *&v516 = 0;
  *(&v516 + 1) = &v516;
  *&v517 = 0x2020000000;
  BYTE8(v517) = 0;
  v33 = dispatch_time(0, 5000000000);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10003FF04;
  *&buf[24] = &unk_100068E70;
  *&buf[32] = &v516;
  dispatch_after(v33, &_dispatch_main_q, buf);
  if (*(*(&v516 + 1) + 24))
  {
    goto LABEL_47;
  }

  while (1)
  {
    stateSemaphore = [(ShareSettingsInfo *)v27 stateSemaphore];
    v35 = dispatch_time(0, 10000000);
    v36 = dispatch_semaphore_wait(stateSemaphore, v35) == 0;

    if (v36)
    {
      break;
    }

    v37 = +[NSRunLoop currentRunLoop];
    v38 = [NSDate dateWithTimeIntervalSinceNow:0.01];
    [v37 runUntilDate:v38];

    if (*(*(&v516 + 1) + 24))
    {
      goto LABEL_47;
    }
  }

  if (*(*(&v516 + 1) + 24))
  {
LABEL_47:
    v39 = sub_1000423E0();
    if (v39)
    {
      v40 = sub_100042E68(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *v524 = 136315394;
        *&v524[4] = "BluetoothEnabled";
        *&v524[12] = 1024;
        *&v524[14] = 883;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "[%s:%d] CBCentralManager did not update state", v524, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 883, "BluetoothEnabled", 3, 0, "CBCentralManager did not update state");
    [v32 setDelegate:0];
    bOOLValue = 0;
    goto LABEL_52;
  }

  state = [v32 state];
  bOOLValue = 0;
  if (state > 2)
  {
    if (state != 3)
    {
      if (state != 4)
      {
        if (state == 5)
        {
          v375 = sub_1000423E0();
          if (v375)
          {
            v376 = sub_100042E68(v375);
            if (os_log_type_enabled(v376, OS_LOG_TYPE_DEFAULT))
            {
              *v524 = 136315394;
              *&v524[4] = "BluetoothEnabled";
              *&v524[12] = 1024;
              *&v524[14] = 894;
              _os_log_impl(&_mh_execute_header, v376, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStatePoweredOn", v524, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 894, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStatePoweredOn");
          bOOLValue = 1;
        }

        goto LABEL_547;
      }

      v457 = sub_1000423E0();
      if (v457)
      {
        v458 = sub_100042E68(v457);
        if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
        {
          *v524 = 136315394;
          *&v524[4] = "BluetoothEnabled";
          *&v524[12] = 1024;
          *&v524[14] = 899;
          _os_log_impl(&_mh_execute_header, v458, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStatePoweredOff", v524, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 899, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStatePoweredOff");
LABEL_544:
      bOOLValue = 0;
      goto LABEL_547;
    }

    v455 = sub_1000423E0();
    if (v455)
    {
      v102 = sub_100042E68(v455);
      v103 = 908;
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *v524 = 136315394;
        *&v524[4] = "BluetoothEnabled";
        *&v524[12] = 1024;
        *&v524[14] = 908;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateUnauthorized", v524, 0x12u);
      }

      v104 = "Bluetooth state is CBManagerStateUnauthorized";
      goto LABEL_521;
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 908, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStateUnauthorized");
    goto LABEL_532;
  }

  switch(state)
  {
    case 0:
      v454 = sub_1000423E0();
      if (v454)
      {
        v102 = sub_100042E68(v454);
        v103 = 918;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          *v524 = 136315394;
          *&v524[4] = "BluetoothEnabled";
          *&v524[12] = 1024;
          *&v524[14] = 918;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateUnknown", v524, 0x12u);
        }

        v104 = "Bluetooth state is CBManagerStateUnknown";
        goto LABEL_521;
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 918, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStateUnknown");
      goto LABEL_532;
    case 1:
      v456 = sub_1000423E0();
      if (!v456)
      {
        v104 = "Bluetooth state is CBManagerStateResetting";
        v103 = 903;
        goto LABEL_531;
      }

      v102 = sub_100042E68(v456);
      v103 = 903;
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *v524 = 136315394;
        *&v524[4] = "BluetoothEnabled";
        *&v524[12] = 1024;
        *&v524[14] = 903;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateResetting", v524, 0x12u);
      }

      v104 = "Bluetooth state is CBManagerStateResetting";
LABEL_521:

LABEL_531:
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, v103, "BluetoothEnabled", 7, 0, v104);
      goto LABEL_532;
    case 2:
      v101 = sub_1000423E0();
      if (v101)
      {
        v102 = sub_100042E68(v101);
        v103 = 913;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          *v524 = 136315394;
          *&v524[4] = "BluetoothEnabled";
          *&v524[12] = 1024;
          *&v524[14] = 913;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth state is CBManagerStateUnsupported", v524, 0x12u);
        }

        v104 = "Bluetooth state is CBManagerStateUnsupported";
        goto LABEL_521;
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 913, "BluetoothEnabled", 7, 0, "Bluetooth state is CBManagerStateUnsupported");
LABEL_532:
      v459 = SCDynamicStoreCreate(0, @"com.apple.ScreenSharing", 0, 0);
      v460 = v459;
      if (v459)
      {
        v461 = SCDynamicStoreCopyValue(v459, @"com.apple.MobileBluetooth");
        v462 = sub_1000423E0();
        if (v462)
        {
          v463 = sub_100042E68(v462);
          if (os_log_type_enabled(v463, OS_LOG_TYPE_DEFAULT))
          {
            v464 = [v461 description];
            v465 = v464;
            uTF8String = [v464 UTF8String];
            *v524 = 136315650;
            *&v524[4] = "BluetoothEnabled";
            *&v524[12] = 1024;
            *&v524[14] = 928;
            *&v524[18] = 2080;
            *&v524[20] = uTF8String;
            _os_log_impl(&_mh_execute_header, v463, OS_LOG_TYPE_DEFAULT, "[%s:%d] SCDynamicStore shows: %s", v524, 0x1Cu);
          }
        }

        v467 = [v461 description];
        v468 = v467;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 928, "BluetoothEnabled", 7, 0, "SCDynamicStore shows: %s", [v467 UTF8String]);

        v469 = [v461 objectForKey:@"Powered"];
        v470 = v469;
        if (v469)
        {
          bOOLValue = [v469 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        CFRelease(v460);

        break;
      }

      v471 = sub_1000423E0();
      if (v471)
      {
        v472 = sub_100042E68(v471);
        if (os_log_type_enabled(v472, OS_LOG_TYPE_ERROR))
        {
          *v524 = 136315394;
          *&v524[4] = "BluetoothEnabled";
          *&v524[12] = 1024;
          *&v524[14] = 937;
          _os_log_impl(&_mh_execute_header, v472, OS_LOG_TYPE_ERROR, "[%s:%d] unable to access SCDynamicStore", v524, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 937, "BluetoothEnabled", 3, 0, "unable to access SCDynamicStore");
      goto LABEL_544;
  }

LABEL_547:
  v473 = sub_1000423E0();
  if (v473)
  {
    v474 = sub_100042E68(v473);
    if (os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
    {
      *v524 = 136315650;
      *&v524[4] = "BluetoothEnabled";
      *&v524[12] = 1024;
      *&v524[14] = 941;
      *&v524[18] = 1024;
      *&v524[20] = bOOLValue;
      _os_log_impl(&_mh_execute_header, v474, OS_LOG_TYPE_DEFAULT, "[%s:%d] Bluetooth enabled: %d", v524, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 941, "BluetoothEnabled", 7, 0, "Bluetooth enabled: %d", bOOLValue);
LABEL_52:
  _Block_object_dispose(&v516, 8);

  if (bOOLValue)
  {
    v42 = sub_1000423E0();
    if (v42)
    {
      v43 = sub_100042E68(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 281;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%s:%d] bluetooth enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 281, "GetMiscFlags", 7, 0, "bluetooth enabled");
    v10 = v10 | 0x80;
  }

  v44 = objc_alloc_init(CWFInterface);
  [v44 activate];
  powerOn = [v44 powerOn];

  if (powerOn)
  {
    v46 = sub_1000423E0();
    if (v46)
    {
      v47 = sub_100042E68(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 287;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] Wifi power state", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 287, "GetMiscFlags", 7, 0, "Wifi power state");
    v10 = v10 | 0x40;
  }

  v48 = dispatch_get_global_queue(0, 0);
  v49 = [[IDSSignInController alloc] initWithQueue:v48];
  isFaceTimeEnabled = [v49 isFaceTimeEnabled];
  v51 = sub_1000423E0();
  if (v51)
  {
    v52 = sub_100042E68(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "FaceTimeEnabled";
      *&buf[12] = 1024;
      *&buf[14] = 966;
      *&buf[18] = 1024;
      *&buf[20] = isFaceTimeEnabled;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%s:%d] FaceTimeEnabled returning %d", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 966, "FaceTimeEnabled", 7, 0, "FaceTimeEnabled returning %d", isFaceTimeEnabled);

  if (isFaceTimeEnabled)
  {
    v53 = sub_1000423E0();
    if (v53)
    {
      v54 = sub_100042E68(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 293;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] FaceTime enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 293, "GetMiscFlags", 7, 0, "FaceTime enabled");
    v10 = v10 | 0x100;
  }

  v55 = objc_alloc_init(RadiosPreferences);
  airplaneMode = [v55 airplaneMode];

  if (airplaneMode)
  {
    v57 = sub_1000423E0();
    if (v57)
    {
      v58 = sub_100042E68(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 298;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%s:%d] Share Settings - Airplane mode is on", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 298, "GetMiscFlags", 7, 0, "Share Settings - Airplane mode is on");
    v10 = v10 | 0x20;
  }

  v59 = [[UISUserInterfaceStyleMode alloc] initWithDelegate:0];
  [v59 modeValue];
  IsAutomatic = UISUserInterfaceStyleModeValueIsAutomatic();

  if (IsAutomatic)
  {
    v61 = sub_1000423E0();
    if (v61)
    {
      v62 = sub_100042E68(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMiscFlags";
        *&buf[12] = 1024;
        *&buf[14] = 303;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%s:%d] Share Settings - Automatic appearance is on", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 303, "GetMiscFlags", 7, 0, "Share Settings - Automatic appearance is on");
    v10 = v10 | 0x10;
  }

  v483 = [NSNumber numberWithUnsignedInt:v10];
  [v484 setObject:v483 forKeyedSubscript:@"iOS-Misc"];
  v63 = [DNDStateService serviceForClientIdentifier:@"com.apple.screensharingserver"];
  *&v516 = 0;
  v64 = [v63 queryCurrentStateWithError:&v516];
  v65 = v516;
  if (v65)
  {
    v66 = sub_1000423E0();
    if (v66)
    {
      v67 = sub_100042E68(v66);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        code = [v65 code];
        v69 = [v65 description];
        v70 = v69;
        uTF8String2 = [v69 UTF8String];
        *buf = 136315906;
        *&buf[4] = "IsDNDEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 644;
        *&buf[18] = 2048;
        *&buf[20] = code;
        *&buf[28] = 2080;
        *&buf[30] = uTF8String2;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%s:%d] dnd state error code %ld  %s", buf, 0x26u);
      }
    }

    code2 = [v65 code];
    v73 = [v65 description];
    v74 = v73;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 644, "IsDNDEnabled", 7, 0, "dnd state error code %ld  %s", code2, [v73 UTF8String]);
  }

  if (v64)
  {
    v75 = sub_1000423E0();
    if (v75)
    {
      v76 = sub_100042E68(v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        isActive = [v64 isActive];
        *buf = 136315650;
        *&buf[4] = "IsDNDEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 647;
        *&buf[18] = 1024;
        *&buf[20] = isActive;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[%s:%d] dnd active %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 647, "IsDNDEnabled", 7, 0, "dnd active %d", [v64 isActive]);
    if ([v64 isActive])
    {
      v78 = 2;
    }

    else
    {
      v78 = 0;
    }

    v504 = v78;
  }

  else
  {
    v504 = 0;
  }

  v79 = [DNDModeConfigurationService serviceForClientIdentifier:@"com.apple.screensharingserver"];
  v80 = v79;
  if (v79)
  {
    v508 = 0;
    v500 = [v79 modeConfigurationsReturningError:&v508];
    v81 = v508;
    if (v81)
    {
      v82 = sub_1000423E0();
      if (v82)
      {
        v83 = sub_100042E68(v82);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = [v81 description];
          v85 = v84;
          uTF8String3 = [v84 UTF8String];
          *v526 = 136315650;
          *&v526[4] = "IsDNDScheduled";
          v527 = 1024;
          v528 = 668;
          v529 = 2080;
          v530 = uTF8String3;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "[%s:%d] Error getting the mode configs %s", v526, 0x1Cu);
        }
      }

      v87 = [v81 description];
      v88 = v87;
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 668, "IsDNDScheduled", 7, 0, "Error getting the mode configs %s", [v87 UTF8String]);

      v89 = 1;
    }

    else
    {
      v525 = 0u;
      memset(v524, 0, sizeof(v524));
      obj = [v500 allValues];
      v492 = [obj countByEnumeratingWithState:v524 objects:buf count:16];
      if (v492)
      {
        v491 = **&v524[16];
        do
        {
          for (i = 0; i != v492; i = i + 1)
          {
            if (**&v524[16] != v491)
            {
              objc_enumerationMutation(obj);
            }

            triggers = [*(*&v524[8] + 8 * i) triggers];
            if ([triggers count])
            {
              v522 = 0u;
              v523 = 0u;
              v520 = 0u;
              v521 = 0u;
              v94 = triggers;
              v95 = [v94 countByEnumeratingWithState:&v520 objects:&v516 count:16];
              if (v95)
              {
                v96 = *v521;
                while (2)
                {
                  for (j = 0; j != v95; j = j + 1)
                  {
                    if (*v521 != v96)
                    {
                      objc_enumerationMutation(v94);
                    }

                    v98 = *(*(&v520 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass() & 1) != 0 && ([v98 isEnabled])
                    {

                      v89 = 0;
                      v99 = 1;
                      goto LABEL_143;
                    }
                  }

                  v95 = [v94 countByEnumeratingWithState:&v520 objects:&v516 count:16];
                  if (v95)
                  {
                    continue;
                  }

                  break;
                }
              }
            }
          }

          v492 = [obj countByEnumeratingWithState:v524 objects:buf count:16];
          v99 = 0;
          v89 = 1;
        }

        while (v492);
      }

      else
      {
        v99 = 0;
        v89 = 1;
      }

LABEL_143:

      v105 = sub_1000423E0();
      if (v105)
      {
        v106 = sub_100042E68(v105);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *v526 = 136315650;
          *&v526[4] = "IsDNDScheduled";
          v527 = 1024;
          v528 = 693;
          v529 = 1024;
          LODWORD(v530) = v99;
          _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "[%s:%d] IsDNDScheduled = %d", v526, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 693, "IsDNDScheduled", 7, 0, "IsDNDScheduled = %d", v99);
    }

    if (!v89)
    {
      v504 |= 1u;
    }
  }

  else
  {
    v90 = sub_1000423E0();
    if (v90)
    {
      v91 = sub_100042E68(v90);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *v526 = 136315394;
        *&v526[4] = "IsDNDScheduled";
        v527 = 1024;
        v528 = 661;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "[%s:%d] Unable to get the mode service", v526, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 661, "IsDNDScheduled", 7, 0, "Unable to get the mode service");
  }

  v107 = [DNDSettingsService serviceForClientIdentifier:@"com.apple.screensharingserver"];
  *&v516 = 0;
  v108 = [v107 behaviorSettingsReturningError:&v516];
  v109 = v516;
  if (v109)
  {
    v110 = sub_1000423E0();
    if (v110)
    {
      v111 = sub_100042E68(v110);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        code3 = [v109 code];
        v113 = [v109 description];
        v114 = v113;
        uTF8String4 = [v113 UTF8String];
        *buf = 136315906;
        *&buf[4] = "IsDNDLockScreenOnly";
        *&buf[12] = 1024;
        *&buf[14] = 707;
        *&buf[18] = 2048;
        *&buf[20] = code3;
        *&buf[28] = 2080;
        *&buf[30] = uTF8String4;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[%s:%d] Error getting behavior settings error = %ld  %s", buf, 0x26u);
      }
    }

    code4 = [v109 code];
    v117 = [v109 description];
    v118 = v117;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 707, "IsDNDLockScreenOnly", 7, 0, "Error getting behavior settings error = %ld  %s", code4, [v117 UTF8String]);

    v119 = 1;
  }

  else
  {
    [v108 interruptionBehaviorSetting];
    v120 = DNDResolvedInterruptionBehaviorSetting();
    v121 = sub_1000423E0();
    if (v121)
    {
      v122 = sub_100042E68(v121);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "IsDNDLockScreenOnly";
        *&buf[12] = 1024;
        *&buf[14] = 712;
        *&buf[18] = 2048;
        *&buf[20] = v120;
        *&buf[28] = 2048;
        *&buf[30] = 2;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "[%s:%d] behaviorSettings %ld InterruptWhenDeviceIsUnlocked %ld", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 712, "IsDNDLockScreenOnly", 7, 0, "behaviorSettings %ld InterruptWhenDeviceIsUnlocked %ld", v120, 2);
    v119 = v120 != 2;
  }

  if (v119)
  {
    v123 = v504;
  }

  else
  {
    v123 = v504 | 4;
  }

  v482 = [NSNumber numberWithUnsignedInt:v123];
  [v484 setObject:v482 forKeyedSubscript:@"iOS-DND"];
  v124 = sub_1000423E0();
  if (v124)
  {
    v125 = sub_100042E68(v124);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      v126 = _AXSVoiceOverTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 399;
      *&buf[18] = 1024;
      *&buf[20] = v126;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "[%s:%d] VoiceOverEnabled %d", buf, 0x18u);
    }
  }

  v127 = _AXSVoiceOverTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 399, "GetAccessibilityFlags", 7, 0, "VoiceOverEnabled %d", v127);
  v128 = _AXSVoiceOverTouchEnabled();
  v129 = sub_1000423E0();
  if (v129)
  {
    v130 = sub_100042E68(v129);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      v131 = _AXSZoomTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 403;
      *&buf[18] = 1024;
      *&buf[20] = v131;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "[%s:%d] _AXSZoomTouchEnabled %d", buf, 0x18u);
    }
  }

  v132 = _AXSZoomTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 403, "GetAccessibilityFlags", 7, 0, "_AXSZoomTouchEnabled %d", v132);
  v133 = _AXSZoomTouchEnabled();
  v134 = _AXSTripleClickCopyOptions();
  v135 = [v134 containsObject:&off_10006B208];

  v136 = sub_1000423E0();
  if (v136)
  {
    v137 = sub_100042E68(v136);
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      v138 = _AXSAssistiveTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 410;
      *&buf[18] = 1024;
      *&buf[20] = v138;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "[%s:%d] AssistiveTouchEnabled %d", buf, 0x18u);
    }
  }

  v139 = _AXSAssistiveTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 410, "GetAccessibilityFlags", 7, 0, "AssistiveTouchEnabled %d", v139);
  v140 = _AXSAssistiveTouchEnabled();
  v141 = sub_1000423E0();
  if (v141)
  {
    v142 = sub_100042E68(v141);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      v143 = _AXSAssistiveTouchEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 414;
      *&buf[18] = 1024;
      *&buf[20] = v143;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "[%s:%d] _AXSAssistiveTouchEnabled %d", buf, 0x18u);
    }
  }

  v144 = _AXSAssistiveTouchEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 414, "GetAccessibilityFlags", 7, 0, "_AXSAssistiveTouchEnabled %d", v144);
  v145 = sub_1000423E0();
  if (v145)
  {
    v146 = sub_100042E68(v145);
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      v147 = _AXSCommandAndControlEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 415;
      *&buf[18] = 1024;
      *&buf[20] = v147;
      _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[%s:%d] CommandAndControlEnabled() %d", buf, 0x18u);
    }
  }

  v148 = _AXSCommandAndControlEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 415, "GetAccessibilityFlags", 7, 0, "CommandAndControlEnabled() %d", v148);
  v149 = _AXSCommandAndControlEnabled();
  v150 = sub_1000423E0();
  if (v150)
  {
    v151 = sub_100042E68(v150);
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      v152 = _AXSGuidedAccessEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 419;
      *&buf[18] = 1024;
      *&buf[20] = v152;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "[%s:%d] GuidedAccessEnabled %d", buf, 0x18u);
    }
  }

  v153 = _AXSGuidedAccessEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 419, "GetAccessibilityFlags", 7, 0, "GuidedAccessEnabled %d", v153);
  v154 = _AXSGuidedAccessEnabled();
  v155 = sub_1000423E0();
  if (v155)
  {
    v156 = sub_100042E68(v155);
    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
    {
      v157 = _AXSAutoBrightnessEnabled();
      *buf = 136315650;
      *&buf[4] = "GetAccessibilityFlags";
      *&buf[12] = 1024;
      *&buf[14] = 427;
      *&buf[18] = 1024;
      *&buf[20] = v157;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "[%s:%d] Share settings - AutoBrightnessEnabled: %d", buf, 0x18u);
    }
  }

  v158 = v128 != 0;
  if (v128)
  {
    v159 = 3;
  }

  else
  {
    v159 = 2;
  }

  if (v133)
  {
    v158 = v159;
  }

  if (v135)
  {
    v158 |= 4u;
  }

  if (v140)
  {
    v158 |= 8u;
  }

  if (v149)
  {
    v158 |= 0x10u;
  }

  if (v154)
  {
    v160 = v158 | 0x20;
  }

  else
  {
    v160 = v158;
  }

  v161 = _AXSAutoBrightnessEnabled();
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 427, "GetAccessibilityFlags", 7, 0, "Share settings - AutoBrightnessEnabled: %d", v161);
  if (_AXSAutoBrightnessEnabled())
  {
    v162 = v160 | 0x40;
  }

  else
  {
    v162 = v160;
  }

  v481 = [NSNumber numberWithUnsignedInt:v162];
  [v484 setObject:v481 forKeyedSubscript:@"iOS-Access"];
  v163 = [[CoreTelephonyClient alloc] initWithQueue:0];
  *&v516 = 0;
  *(&v516 + 1) = &v516;
  *&v517 = 0x2020000000;
  DWORD2(v517) = 1;
  if (v163)
  {
    v164 = dispatch_group_create();
    v165 = [NSSet alloc];
    v166 = [v165 initWithObjects:{off_100070718, 0}];
    dispatch_group_enter(v164);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003FF18;
    *&buf[24] = &unk_100068E98;
    v532 = &v516;
    v167 = v164;
    *&buf[32] = v167;
    [v163 getLocalPolicies:v166 completion:buf];
    v168 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v167, v168))
    {
      v169 = sub_1000423E0();
      if (v169)
      {
        v170 = sub_100042E68(v169);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
        {
          *v524 = 136315394;
          *&v524[4] = "MailUseCellularData";
          *&v524[12] = 1024;
          *&v524[14] = 831;
          _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "[%s:%d] Timed out trying to get cellular data state", v524, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 831, "MailUseCellularData", 7, 0, "Timed out trying to get cellular data state");
    }
  }

  else
  {
    v171 = sub_1000423E0();
    if (v171)
    {
      v172 = sub_100042E68(v171);
      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "MailUseCellularData";
        *&buf[12] = 1024;
        *&buf[14] = 836;
        _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "[%s:%d] Failed to contact the CoreTelephonyClient", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 836, "MailUseCellularData", 7, 0, "Failed to contact the CoreTelephonyClient");
  }

  v479 = *(*(&v516 + 1) + 24);
  _Block_object_dispose(&v516, 8);

  v505 = objc_alloc_init(ACAccountStore);
  v476 = ACAccountDataclassMail;
  v173 = [v505 accountIdentifiersEnabledForDataclass:?];
  v174 = sub_1000423E0();
  if (v174)
  {
    v175 = sub_100042E68(v174);
    if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
    {
      v176 = [v173 count];
      *buf = 136315650;
      *&buf[4] = "GetMailAccountsInfo";
      *&buf[12] = 1024;
      *&buf[14] = 523;
      *&buf[18] = 2048;
      *&buf[20] = v176;
      _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "[%s:%d] accounts size %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 523, "GetMailAccountsInfo", 7, 0, "accounts size %ld", [v173 count]);
  v518 = 0u;
  v519 = 0u;
  v516 = 0u;
  v517 = 0u;
  obja = v173;
  v177 = [obja countByEnumeratingWithState:&v516 objects:buf count:16];
  if (v177)
  {
    v488 = 0;
    v489 = 0;
    v485 = 0;
    v501 = *v517;
    v493 = ACAccountTypeIdentifierSMTP;
    do
    {
      for (k = 0; k != v177; k = k + 1)
      {
        if (*v517 != v501)
        {
          objc_enumerationMutation(obja);
        }

        v179 = [v505 accountWithIdentifier:*(*(&v516 + 1) + 8 * k)];
        v180 = sub_1000423E0();
        if (v180)
        {
          v181 = sub_100042E68(v180);
          if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
          {
            accountType = [v179 accountType];
            identifier = [accountType identifier];
            v184 = identifier;
            uTF8String5 = [identifier UTF8String];
            *v524 = 136315650;
            *&v524[4] = "GetMailAccountsInfo";
            *&v524[12] = 1024;
            *&v524[14] = 529;
            *&v524[18] = 2080;
            *&v524[20] = uTF8String5;
            _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "[%s:%d] id %s", v524, 0x1Cu);
          }
        }

        accountType2 = [v179 accountType];
        identifier2 = [accountType2 identifier];
        v188 = identifier2;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 529, "GetMailAccountsInfo", 7, 0, "id %s", [identifier2 UTF8String]);

        enabledDataclasses = [v179 enabledDataclasses];
        if ([enabledDataclasses containsObject:@"com.apple.Dataclass.Mail"])
        {
          accountType3 = [v179 accountType];
          identifier3 = [accountType3 identifier];
          v192 = [identifier3 isEqualToString:v493];

          v193 = sub_1000423E0();
          if (v192)
          {
            if (v193)
            {
              v194 = sub_100042E68(v193);
              if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
              {
                accountDescription = [v179 accountDescription];
                v196 = accountDescription;
                uTF8String6 = [accountDescription UTF8String];
                *v524 = 136315650;
                *&v524[4] = "GetMailAccountsInfo";
                *&v524[12] = 1024;
                *&v524[14] = 535;
                *&v524[18] = 2080;
                *&v524[20] = uTF8String6;
                _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s ignore this smtp account", v524, 0x1Cu);
              }
            }

            accountDescription2 = [v179 accountDescription];
            v199 = accountDescription2;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 535, "GetMailAccountsInfo", 7, 0, "%s ignore this smtp account", [accountDescription2 UTF8String]);
          }

          else
          {
            if (v193)
            {
              v200 = sub_100042E68(v193);
              if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
              {
                accountDescription3 = [v179 accountDescription];
                v202 = accountDescription3;
                uTF8String7 = [accountDescription3 UTF8String];
                accountType4 = [v179 accountType];
                identifier4 = [accountType4 identifier];
                v206 = identifier4;
                uTF8String8 = [identifier4 UTF8String];
                *v524 = 136315906;
                *&v524[4] = "GetMailAccountsInfo";
                *&v524[12] = 1024;
                *&v524[14] = 539;
                *&v524[18] = 2080;
                *&v524[20] = uTF8String7;
                *&v524[28] = 2080;
                *&v524[30] = uTF8String8;
                _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s identifier %s contains mail", v524, 0x26u);
              }
            }

            accountDescription4 = [v179 accountDescription];
            v209 = accountDescription4;
            uTF8String9 = [accountDescription4 UTF8String];
            accountType5 = [v179 accountType];
            identifier5 = [accountType5 identifier];
            v213 = identifier5;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 539, "GetMailAccountsInfo", 7, 0, "%s identifier %s contains mail", uTF8String9, [identifier5 UTF8String]);

            accountType6 = [v179 accountType];
            identifier6 = [accountType6 identifier];
            LODWORD(accountDescription4) = [identifier6 isEqualToString:@"com.apple.account.Yahoo"];

            if (accountDescription4)
            {
              v216 = sub_1000423E0();
              if (v216)
              {
                v217 = sub_100042E68(v216);
                if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
                {
                  *v524 = 136315394;
                  *&v524[4] = "GetMailAccountsInfo";
                  *&v524[12] = 1024;
                  *&v524[14] = 543;
                  _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "[%s:%d] Yahoo mail account", v524, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 543, "GetMailAccountsInfo", 7, 0, "Yahoo mail account");
              v489 = 1;
            }

            else
            {
              accountType7 = [v179 accountType];
              identifier7 = [accountType7 identifier];
              v220 = [identifier7 isEqualToString:@"com.apple.account.Google"];

              if (v220)
              {
                v221 = sub_1000423E0();
                if (v221)
                {
                  v222 = sub_100042E68(v221);
                  if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                  {
                    *v524 = 136315394;
                    *&v524[4] = "GetMailAccountsInfo";
                    *&v524[12] = 1024;
                    *&v524[14] = 548;
                    _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "[%s:%d] Gmail mail account", v524, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 548, "GetMailAccountsInfo", 7, 0, "Gmail mail account");
                v488 = 1;
              }

              else
              {
                accountType8 = [v179 accountType];
                identifier8 = [accountType8 identifier];
                v225 = [identifier8 isEqualToString:@"com.apple.account.OnMyDevice"];

                if ((v225 & 1) == 0)
                {
                  v226 = sub_1000423E0();
                  if (v226)
                  {
                    v227 = sub_100042E68(v226);
                    if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
                    {
                      *v524 = 136315394;
                      *&v524[4] = "GetMailAccountsInfo";
                      *&v524[12] = 1024;
                      *&v524[14] = 553;
                      _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "[%s:%d] other mail account", v524, 0x12u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 553, "GetMailAccountsInfo", 7, 0, "other mail account");
                  v485 = 1;
                }
              }
            }
          }
        }
      }

      v177 = [obja countByEnumeratingWithState:&v516 objects:buf count:16];
    }

    while (v177);
    v486 = v485 == 0;
    v477 = v488 == 0;
    v478 = v489 == 0;
  }

  else
  {
    v477 = 1;
    v478 = 1;
    v486 = 1;
  }

  v506 = objc_alloc_init(ACAccountStore);
  v475 = ACAccountDataclassContacts;
  v228 = [v506 accountIdentifiersEnabledForDataclass:?];
  v229 = sub_1000423E0();
  if (v229)
  {
    v230 = sub_100042E68(v229);
    if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
    {
      v231 = [v228 count];
      *buf = 136315650;
      *&buf[4] = "GetContactsAccountsInfo";
      *&buf[12] = 1024;
      *&buf[14] = 592;
      *&buf[18] = 2048;
      *&buf[20] = v231;
      _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "[%s:%d] accounts size %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 592, "GetContactsAccountsInfo", 7, 0, "accounts size %ld", [v228 count]);
  v518 = 0u;
  v519 = 0u;
  v516 = 0u;
  v517 = 0u;
  objb = v228;
  v232 = [objb countByEnumeratingWithState:&v516 objects:buf count:16];
  if (v232)
  {
    v490 = 0;
    v494 = 0;
    v487 = 0;
    v502 = *v517;
    do
    {
      for (m = 0; m != v232; m = m + 1)
      {
        if (*v517 != v502)
        {
          objc_enumerationMutation(objb);
        }

        v234 = [v506 accountWithIdentifier:*(*(&v516 + 1) + 8 * m)];
        v235 = sub_1000423E0();
        if (v235)
        {
          v236 = sub_100042E68(v235);
          if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
          {
            accountType9 = [v234 accountType];
            identifier9 = [accountType9 identifier];
            v239 = identifier9;
            uTF8String10 = [identifier9 UTF8String];
            *v524 = 136315650;
            *&v524[4] = "GetContactsAccountsInfo";
            *&v524[12] = 1024;
            *&v524[14] = 596;
            *&v524[18] = 2080;
            *&v524[20] = uTF8String10;
            _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "[%s:%d] id %s", v524, 0x1Cu);
          }
        }

        accountType10 = [v234 accountType];
        identifier10 = [accountType10 identifier];
        v243 = identifier10;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 596, "GetContactsAccountsInfo", 7, 0, "id %s", [identifier10 UTF8String]);

        enabledDataclasses2 = [v234 enabledDataclasses];
        if ([enabledDataclasses2 containsObject:@"com.apple.Dataclass.Contacts"])
        {
          v245 = sub_1000423E0();
          if (v245)
          {
            v246 = sub_100042E68(v245);
            if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
            {
              accountDescription5 = [v234 accountDescription];
              v248 = accountDescription5;
              uTF8String11 = [accountDescription5 UTF8String];
              accountType11 = [v234 accountType];
              identifier11 = [accountType11 identifier];
              v252 = identifier11;
              uTF8String12 = [identifier11 UTF8String];
              *v524 = 136315906;
              *&v524[4] = "GetContactsAccountsInfo";
              *&v524[12] = 1024;
              *&v524[14] = 600;
              *&v524[18] = 2080;
              *&v524[20] = uTF8String11;
              *&v524[28] = 2080;
              *&v524[30] = uTF8String12;
              _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "[%s:%d] %s identifier %s contains contacts", v524, 0x26u);
            }
          }

          accountDescription6 = [v234 accountDescription];
          v255 = accountDescription6;
          uTF8String13 = [accountDescription6 UTF8String];
          accountType12 = [v234 accountType];
          identifier12 = [accountType12 identifier];
          v259 = identifier12;
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 600, "GetContactsAccountsInfo", 7, 0, "%s identifier %s contains contacts", uTF8String13, [identifier12 UTF8String]);

          accountType13 = [v234 accountType];
          identifier13 = [accountType13 identifier];
          LODWORD(uTF8String13) = [identifier13 isEqualToString:@"com.apple.account.Yahoo"];

          if (uTF8String13)
          {
            v262 = sub_1000423E0();
            if (v262)
            {
              v263 = sub_100042E68(v262);
              if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
              {
                *v524 = 136315394;
                *&v524[4] = "GetContactsAccountsInfo";
                *&v524[12] = 1024;
                *&v524[14] = 604;
                _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "[%s:%d] Yahoo contacts account", v524, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 604, "GetContactsAccountsInfo", 7, 0, "Yahoo contacts account");
            v494 = 1;
          }

          else
          {
            accountType14 = [v234 accountType];
            identifier14 = [accountType14 identifier];
            v266 = [identifier14 isEqualToString:@"com.apple.account.Google"];

            if (v266)
            {
              v267 = sub_1000423E0();
              if (v267)
              {
                v268 = sub_100042E68(v267);
                if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                {
                  *v524 = 136315394;
                  *&v524[4] = "GetContactsAccountsInfo";
                  *&v524[12] = 1024;
                  *&v524[14] = 609;
                  _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_DEFAULT, "[%s:%d] Gmail contacts account", v524, 0x12u);
                }
              }

              sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 609, "GetContactsAccountsInfo", 7, 0, "Gmail contacts account");
              v490 = 1;
            }

            else
            {
              accountType15 = [v234 accountType];
              identifier15 = [accountType15 identifier];
              v271 = [identifier15 isEqualToString:@"com.apple.account.OnMyDevice"];

              if ((v271 & 1) == 0)
              {
                v272 = sub_1000423E0();
                if (v272)
                {
                  v273 = sub_100042E68(v272);
                  if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
                  {
                    *v524 = 136315394;
                    *&v524[4] = "GetContactsAccountsInfo";
                    *&v524[12] = 1024;
                    *&v524[14] = 614;
                    _os_log_impl(&_mh_execute_header, v273, OS_LOG_TYPE_DEFAULT, "[%s:%d] other contacts account", v524, 0x12u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 614, "GetContactsAccountsInfo", 7, 0, "other contacts account");
                v487 = 1;
              }
            }
          }
        }
      }

      v232 = [objb countByEnumeratingWithState:&v516 objects:buf count:16];
    }

    while (v232);
    v274 = v490 == 0;
    v275 = v494 == 0;
    v276 = v487 == 0;
  }

  else
  {
    v274 = 1;
    v275 = 1;
    v276 = 1;
  }

  v277 = v479 != 0;
  if (v479)
  {
    v278 = 3;
  }

  else
  {
    v278 = 2;
  }

  if (!v477)
  {
    v277 = v278;
  }

  if (!v478)
  {
    v277 |= 8u;
  }

  if (v486)
  {
    v279 = v277;
  }

  else
  {
    v279 = v277 | 0x20;
  }

  v280 = v279 | 4;
  if (v274)
  {
    v280 = v279;
  }

  if (!v275)
  {
    v280 |= 0x10u;
  }

  if (v276)
  {
    v281 = v280;
  }

  else
  {
    v281 = v280 | 0x40;
  }

  v503 = [NSNumber numberWithUnsignedInt:v281];
  [v484 setObject:v503 forKeyedSubscript:@"iOS-Accounts"];
  v282 = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccountWithPreloadedDataclasses = [v282 aa_primaryAppleAccountWithPreloadedDataclasses];
  v284 = aa_primaryAppleAccountWithPreloadedDataclasses;
  if (aa_primaryAppleAccountWithPreloadedDataclasses)
  {
    enabledDataclasses3 = [aa_primaryAppleAccountWithPreloadedDataclasses enabledDataclasses];
    v286 = [enabledDataclasses3 containsObject:ACAccountDataclassUbiquity];

    enabledDataclasses4 = [v284 enabledDataclasses];
    v288 = [enabledDataclasses4 containsObject:ACAccountDataclassCloudPhotos];

    if (v288)
    {
      v289 = v286 | 2;
    }

    else
    {
      v289 = v286;
    }

    enabledDataclasses5 = [v284 enabledDataclasses];
    v291 = [enabledDataclasses5 containsObject:v476];

    if (v291)
    {
      v289 |= 4u;
    }

    enabledDataclasses6 = [v284 enabledDataclasses];
    v293 = [enabledDataclasses6 containsObject:v475];

    if (v293)
    {
      v289 |= 8u;
    }

    enabledDataclasses7 = [v284 enabledDataclasses];
    v295 = [enabledDataclasses7 containsObject:ACAccountDataclassCalendars];

    if (v295)
    {
      v289 |= 0x10u;
    }

    enabledDataclasses8 = [v284 enabledDataclasses];
    v297 = [enabledDataclasses8 containsObject:ACAccountDataclassReminders];

    if (v297)
    {
      v289 |= 0x20u;
    }

    enabledDataclasses9 = [v284 enabledDataclasses];
    v299 = [enabledDataclasses9 containsObject:ACAccountDataclassMessages];

    if (v299)
    {
      v289 |= 0x40u;
    }

    enabledDataclasses10 = [v284 enabledDataclasses];
    v301 = [enabledDataclasses10 containsObject:ACAccountDataclassBookmarks];

    if (v301)
    {
      v289 |= 0x80u;
    }

    enabledDataclasses11 = [v284 enabledDataclasses];
    v303 = [enabledDataclasses11 containsObject:ACAccountDataclassBackup];

    if (v303)
    {
      v304 = v289 | 0x100;
    }

    else
    {
      v304 = v289;
    }

    v305 = objc_alloc_init(OTConfigurationContext);
    [v305 setContext:OTDefaultContext];
    v306 = [[OTClique alloc] initWithContextData:v305];
    v307 = v306;
    if (v306)
    {
      *&v516 = 0;
      v308 = [v306 fetchUserControllableViewsSyncingEnabled:&v516];
      v309 = v516;
      if (v309)
      {
        v310 = sub_1000423E0();
        if (v310)
        {
          v311 = sub_100042E68(v310);
          if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
          {
            v312 = [v309 description];
            v313 = v312;
            uTF8String14 = [v312 UTF8String];
            *buf = 136315650;
            *&buf[4] = "CloudKeychainEnabled";
            *&buf[12] = 1024;
            *&buf[14] = 763;
            *&buf[18] = 2080;
            *&buf[20] = uTF8String14;
            _os_log_impl(&_mh_execute_header, v311, OS_LOG_TYPE_ERROR, "[%s:%d] fetchUserControllableViewsSyncingEnabled failed %s", buf, 0x1Cu);
          }
        }

        v315 = [v309 description];
        v316 = v315;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 763, "CloudKeychainEnabled", 3, 0, "fetchUserControllableViewsSyncingEnabled failed %s", [v315 UTF8String]);
      }

      if (v308)
      {
        v304 |= 0x200u;
      }
    }

    else
    {
      v320 = sub_1000423E0();
      if (v320)
      {
        v321 = sub_100042E68(v320);
        if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CloudKeychainEnabled";
          *&buf[12] = 1024;
          *&buf[14] = 757;
          _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_ERROR, "[%s:%d] failed to create an OTClique, unable to return keychain sync info", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 757, "CloudKeychainEnabled", 3, 0, "failed to create an OTClique, unable to return keychain sync info");
    }

    enabledDataclasses12 = [v284 enabledDataclasses];
    v323 = [enabledDataclasses12 containsObject:ACAccountDataclassNotes];

    if (v323)
    {
      v324 = v304 | 0x400;
    }

    else
    {
      v324 = v304;
    }

    *&v516 = 0;
    *(&v516 + 1) = &v516;
    *&v517 = 0x2020000000;
    *(&v517 + 1) = 4;
    v325 = dispatch_group_create();
    dispatch_group_enter(v325);
    v326 = +[FMDFMIPManager sharedInstance];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000400E4;
    *&buf[24] = &unk_100068EC0;
    v532 = &v516;
    v327 = v325;
    *&buf[32] = v327;
    [v326 fmipStateWithCompletion:buf];

    v328 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v327, v328))
    {
      v329 = sub_1000423E0();
      if (v329)
      {
        v330 = sub_100042E68(v329);
        if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
        {
          *v524 = 136315394;
          *&v524[4] = "FindMyDeviceEnabled";
          *&v524[12] = 1024;
          *&v524[14] = 789;
          _os_log_impl(&_mh_execute_header, v330, OS_LOG_TYPE_DEFAULT, "[%s:%d] Timed out trying to get FMD state", v524, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 789, "FindMyDeviceEnabled", 7, 0, "Timed out trying to get FMD state");
    }

    v331 = *(*(&v516 + 1) + 24) == 1;

    _Block_object_dispose(&v516, 8);
    if (v331)
    {
      v319 = v324 | 0x800;
    }

    else
    {
      v319 = v324;
    }
  }

  else
  {
    v317 = sub_1000423E0();
    if (v317)
    {
      v318 = sub_100042E68(v317);
      if (os_log_type_enabled(v318, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetICloudFlags";
        *&buf[12] = 1024;
        *&buf[14] = 470;
        _os_log_impl(&_mh_execute_header, v318, OS_LOG_TYPE_DEFAULT, "[%s:%d] No iCloud Account set up", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 470, "GetICloudFlags", 7, 0, "No iCloud Account set up");
    v319 = 0;
  }

  objc = [NSNumber numberWithUnsignedInt:v319];
  [v484 setObject:objc forKeyedSubscript:@"iOS-iCloud"];
  v332 = _CTServerConnectionCreateWithIdentifier();
  if (!v332)
  {
    v339 = sub_1000423E0();
    if (v339)
    {
      v340 = sub_100042E68(v339);
      if (os_log_type_enabled(v340, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CellularDataEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 1035;
        _os_log_impl(&_mh_execute_header, v340, OS_LOG_TYPE_ERROR, "[%s:%d] failed to make a connection to CTServer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1035, "CellularDataEnabled", 3, 0, "failed to make a connection to CTServer");
    goto LABEL_387;
  }

  LOBYTE(v516) = 0;
  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  v334 = IsEnabled;
  if (IsEnabled)
  {
    v335 = IsEnabled;
    v336 = sub_1000423E0();
    v337 = HIDWORD(v334);
    if (v336)
    {
      v338 = sub_100042E68(v336);
      if (os_log_type_enabled(v338, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "CellularDataEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 1029;
        *&buf[18] = 1024;
        *&buf[20] = v335;
        *&buf[24] = 1024;
        *&buf[26] = v337;
        _os_log_impl(&_mh_execute_header, v338, OS_LOG_TYPE_ERROR, "[%s:%d] _CTServerConnectionGetCellularDataIsEnabled returns %d:%d", buf, 0x1Eu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1029, "CellularDataEnabled", 3, 0, "_CTServerConnectionGetCellularDataIsEnabled returns %d:%d", v335, v337);
    CFRelease(v332);
    goto LABEL_387;
  }

  v372 = v516;
  CFRelease(v332);
  if (!v372)
  {
LABEL_387:
    v341 = 0;
    goto LABEL_388;
  }

  v373 = sub_1000423E0();
  if (v373)
  {
    v374 = sub_100042E68(v373);
    if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "GetCellularFlags";
      *&buf[12] = 1024;
      *&buf[14] = 625;
      _os_log_impl(&_mh_execute_header, v374, OS_LOG_TYPE_DEFAULT, "[%s:%d] Cellular Data Enabled", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 625, "GetCellularFlags", 7, 0, "Cellular Data Enabled");
  v341 = 1;
LABEL_388:
  v342 = objc_alloc_init(CoreTelephonyClient);
  v343 = v342;
  if (v342)
  {
    *&v516 = 0;
    v344 = [v342 getCurrentDataServiceDescriptorSync:&v516];
    v345 = v516;
    v346 = v345;
    if (!v344 || v345)
    {
      v365 = sub_1000423E0();
      if (v365)
      {
        v366 = sub_100042E68(v365);
        if (os_log_type_enabled(v366, OS_LOG_TYPE_DEFAULT))
        {
          v367 = [v346 description];
          v368 = v367;
          uTF8String15 = [v367 UTF8String];
          *buf = 136315650;
          *&buf[4] = "SelectedPlanDataRoamingEnabled";
          *&buf[12] = 1024;
          *&buf[14] = 1085;
          *&buf[18] = 2080;
          *&buf[20] = uTF8String15;
          _os_log_impl(&_mh_execute_header, v366, OS_LOG_TYPE_DEFAULT, "[%s:%d] SelectedPlanDataRoamingEnabled: no data service descriptor available, error = %s", buf, 0x1Cu);
        }
      }

      v370 = [v346 description];
      v371 = v370;
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1085, "SelectedPlanDataRoamingEnabled", 6, 0, "SelectedPlanDataRoamingEnabled: no data service descriptor available, error = %s", [v370 UTF8String]);
    }

    else
    {
      *v524 = 0;
      v347 = [v343 getInternationalDataAccessSync:v344 error:v524];
      v348 = *v524;
      if (v348)
      {
        v349 = sub_1000423E0();
        if (v349)
        {
          v350 = sub_100042E68(v349);
          if (os_log_type_enabled(v350, OS_LOG_TYPE_ERROR))
          {
            v351 = [v348 description];
            v352 = v351;
            uTF8String16 = [v351 UTF8String];
            *buf = 136315650;
            *&buf[4] = "SelectedPlanDataRoamingEnabled";
            *&buf[12] = 1024;
            *&buf[14] = 1079;
            *&buf[18] = 2080;
            *&buf[20] = uTF8String16;
            _os_log_impl(&_mh_execute_header, v350, OS_LOG_TYPE_ERROR, "[%s:%d] SelectedPlanDataRoamingEnabled: failed to get the roaming enabled value, error = %s", buf, 0x1Cu);
          }
        }

        v354 = [v348 description];
        v355 = v354;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1079, "SelectedPlanDataRoamingEnabled", 3, 0, "SelectedPlanDataRoamingEnabled: failed to get the roaming enabled value, error = %s", [v354 UTF8String]);
      }

      if (v347)
      {
        v356 = objc_alloc_init(CoreTelephonyClient);
        v357 = v356;
        if (v356)
        {
          *&v516 = 0;
          v358 = [v356 getActiveContexts:&v516];
          v359 = v516;
          if (v358)
          {
            subscriptions = [v358 subscriptions];
            v361 = [subscriptions count] > 1;

            if (v361)
            {

              v362 = 4;
LABEL_438:
              v341 = v362 | v341;
              goto LABEL_439;
            }
          }

          else
          {
            v379 = sub_1000423E0();
            if (v379)
            {
              v380 = sub_100042E68(v379);
              if (os_log_type_enabled(v380, OS_LOG_TYPE_ERROR))
              {
                v381 = [v359 description];
                v382 = v381;
                uTF8String17 = [v381 UTF8String];
                *buf = 136315650;
                *&buf[4] = "isMultiSim";
                *&buf[12] = 1024;
                *&buf[14] = 1057;
                *&buf[18] = 2080;
                *&buf[20] = uTF8String17;
                _os_log_impl(&_mh_execute_header, v380, OS_LOG_TYPE_ERROR, "[%s:%d] isMultiSim: error getting activeContexts, error = %s", buf, 0x1Cu);
              }
            }

            v384 = [v359 description];
            v385 = v384;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1057, "isMultiSim", 3, 0, "isMultiSim: error getting activeContexts, error = %s", [v384 UTF8String]);
          }
        }

        else
        {
          v377 = sub_1000423E0();
          if (v377)
          {
            v378 = sub_100042E68(v377);
            if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "isMultiSim";
              *&buf[12] = 1024;
              *&buf[14] = 1062;
              _os_log_impl(&_mh_execute_header, v378, OS_LOG_TYPE_ERROR, "[%s:%d] isMultiSim: Failed to get the CoreTelephonyClient", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1062, "isMultiSim", 3, 0, "isMultiSim: Failed to get the CoreTelephonyClient");
        }

        v362 = 2;
        goto LABEL_438;
      }
    }
  }

  else
  {
    v363 = sub_1000423E0();
    if (v363)
    {
      v364 = sub_100042E68(v363);
      if (os_log_type_enabled(v364, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "SelectedPlanDataRoamingEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 1090;
        _os_log_impl(&_mh_execute_header, v364, OS_LOG_TYPE_ERROR, "[%s:%d] SelectedPlanDataRoamingEnabled: Failed to get the CoreTelephonyClient", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1090, "SelectedPlanDataRoamingEnabled", 3, 0, "SelectedPlanDataRoamingEnabled: Failed to get the CoreTelephonyClient");
  }

LABEL_439:
  v495 = [NSNumber numberWithUnsignedInt:v341];
  [v484 setObject:v495 forKeyedSubscript:@"iOS-Cellular"];
  [v484 setObject:&off_10006B1F0 forKeyedSubscript:@"version"];
  v507 = MGCopyAnswer();
  if ([v507 length] < 0x33)
  {
    [v484 setObject:v507 forKeyedSubscript:@"ComputerName"];
  }

  else
  {
    v386 = [v507 rangeOfComposedCharacterSequencesForRange:{0, 50}];
    v388 = [v507 substringWithRange:{v386, v387}];
    [v484 setObject:v388 forKeyedSubscript:@"ComputerName"];
  }

  [v484 setObject:@"iOS" forKeyedSubscript:@"os"];
  v389 = +[NSProcessInfo processInfo];
  operatingSystemVersionString = [v389 operatingSystemVersionString];
  [v484 setObject:operatingSystemVersionString forKeyedSubscript:@"OSVersion"];

  v391 = MGCopyAnswer();
  [v484 setObject:v391 forKeyedSubscript:@"ComputerName"];

  v392 = MGCopyAnswer();
  [v484 setObject:v392 forKeyedSubscript:@"ComputerModel"];

  [v484 setObject:@"mobile" forKeyedSubscript:@"ShortUserName"];
  v393 = sub_100040228();
  if (v393)
  {
    [v484 setObject:v393 forKeyedSubscript:@"SerialNumber"];
    CFRelease(v393);
  }

  else
  {
    v394 = sub_1000423E0();
    if (v394)
    {
      v395 = sub_100042E68(v394);
      if (os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
        *&buf[12] = 1024;
        *&buf[14] = 206;
        _os_log_impl(&_mh_execute_header, v395, OS_LOG_TYPE_DEFAULT, "[%s:%d] unable to get serial number", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 206, "[ShareSettingsInfo gatherSystemInfo]", 7, 0, "unable to get serial number");
  }

  if (CKMadridSendAsSMSEnabled())
  {
    v396 = sub_1000423E0();
    if (v396)
    {
      v397 = sub_100042E68(v396);
      if (os_log_type_enabled(v397, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMessagesFlags";
        *&buf[12] = 1024;
        *&buf[14] = 566;
        _os_log_impl(&_mh_execute_header, v397, OS_LOG_TYPE_DEFAULT, "[%s:%d] messages - send as SMS", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 566, "GetMessagesFlags", 7, 0, "messages - send as SMS");
    v398 = 2;
  }

  else
  {
    v398 = 0;
  }

  if (CKMessageUnknownFilteringEnabled())
  {
    v399 = sub_1000423E0();
    if (v399)
    {
      v400 = sub_100042E68(v399);
      if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMessagesFlags";
        *&buf[12] = 1024;
        *&buf[14] = 571;
        _os_log_impl(&_mh_execute_header, v400, OS_LOG_TYPE_DEFAULT, "[%s:%d] messages - filter unknown", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 571, "GetMessagesFlags", 7, 0, "messages - filter unknown");
    v398 = v398 | 4;
  }

  v401 = +[IMCTSubscriptionUtilities sharedInstance];
  HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
  v403 = sub_1000423E0();
  if (HasMultipleSubscriptions)
  {
    if (v403)
    {
      v404 = sub_100042E68(v403);
      if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
      {
        *v524 = 136315394;
        *&v524[4] = "GetMMSEnabled";
        *&v524[12] = 1024;
        *&v524[14] = 981;
        _os_log_impl(&_mh_execute_header, v404, OS_LOG_TYPE_DEFAULT, "[%s:%d] Has multiple SIMs", v524, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 981, "GetMMSEnabled", 7, 0, "Has multiple SIMs");
    ctServiceSubscriptions = [v401 ctServiceSubscriptions];
    v518 = 0u;
    v519 = 0u;
    v516 = 0u;
    v517 = 0u;
    v406 = ctServiceSubscriptions;
    v407 = [v406 countByEnumeratingWithState:&v516 objects:buf count:16];
    if (v407)
    {
      v408 = *v517;
      while (2)
      {
        for (n = 0; n != v407; n = n + 1)
        {
          if (*v517 != v408)
          {
            objc_enumerationMutation(v406);
          }

          v410 = *(*(&v516 + 1) + 8 * n);
          phoneNumber = [v410 phoneNumber];
          labelID = [v410 labelID];
          v413 = [IMCTSMSUtilities IMMMSEnabledForPhoneNumber:phoneNumber simID:labelID];

          if (v413)
          {

            goto LABEL_485;
          }
        }

        v407 = [v406 countByEnumeratingWithState:&v516 objects:buf count:16];
        if (v407)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_496;
  }

  if (v403)
  {
    v414 = sub_100042E68(v403);
    if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
    {
      *v524 = 136315394;
      *&v524[4] = "GetMMSEnabled";
      *&v524[12] = 1024;
      *&v524[14] = 992;
      _os_log_impl(&_mh_execute_header, v414, OS_LOG_TYPE_DEFAULT, "[%s:%d] Has a single SIM", v524, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 992, "GetMMSEnabled", 7, 0, "Has a single SIM");
  *&v520 = 0;
  v415 = [v401 ctSubscriptionInfoWithError:&v520];
  v416 = v520;
  if (!v415)
  {
    v424 = sub_1000423E0();
    if (v424)
    {
      v425 = sub_100042E68(v424);
      if (os_log_type_enabled(v425, OS_LOG_TYPE_ERROR))
      {
        v426 = [v416 description];
        v427 = v426;
        uTF8String18 = [v426 UTF8String];
        *v524 = 136315650;
        *&v524[4] = "GetMMSEnabled";
        *&v524[12] = 1024;
        *&v524[14] = 1006;
        *&v524[18] = 2080;
        *&v524[20] = uTF8String18;
        _os_log_impl(&_mh_execute_header, v425, OS_LOG_TYPE_ERROR, "[%s:%d] error getting the active subscription %s", v524, 0x1Cu);
      }
    }

    v418 = [v416 description];
    v429 = v418;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 1006, "GetMMSEnabled", 3, 0, "error getting the active subscription %s", [v418 UTF8String]);
    goto LABEL_495;
  }

  preferredOrDefaultSubscriptionContext = [v415 preferredOrDefaultSubscriptionContext];
  v418 = preferredOrDefaultSubscriptionContext;
  if (!preferredOrDefaultSubscriptionContext)
  {
LABEL_495:

    goto LABEL_496;
  }

  phoneNumber2 = [preferredOrDefaultSubscriptionContext phoneNumber];
  labelID2 = [v418 labelID];
  v421 = [IMCTSMSUtilities IMMMSEnabledForPhoneNumber:phoneNumber2 simID:labelID2];

  if (v421)
  {
LABEL_485:
    v422 = sub_1000423E0();
    if (v422)
    {
      v423 = sub_100042E68(v422);
      if (os_log_type_enabled(v423, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "GetMessagesFlags";
        *&buf[12] = 1024;
        *&buf[14] = 576;
        _os_log_impl(&_mh_execute_header, v423, OS_LOG_TYPE_DEFAULT, "[%s:%d] messages - MMS enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 576, "GetMessagesFlags", 7, 0, "messages - MMS enabled");
    v398 = v398 | 8;
  }

LABEL_496:
  v430 = [NSNumber numberWithUnsignedInt:v398];
  [v484 setObject:v430 forKeyedSubscript:@"iOS-Messages"];
  v513[0] = @"type";
  v513[1] = @"identifier";
  v514[0] = @"Storage";
  v514[1] = &stru_100069830;
  v431 = [NSDictionary dictionaryWithObjects:v514 forKeys:v513 count:2];
  v515[0] = v431;
  v511[0] = @"type";
  v511[1] = @"identifier";
  v512[0] = @"System";
  v512[1] = &stru_100069830;
  v432 = [NSDictionary dictionaryWithObjects:v512 forKeys:v511 count:2];
  v515[1] = v432;
  v509[0] = @"type";
  v509[1] = @"identifier";
  v510[0] = @"Battery";
  v510[1] = @"Internal";
  v433 = [NSDictionary dictionaryWithObjects:v510 forKeys:v509 count:2];
  v515[2] = v433;
  v434 = [NSArray arrayWithObjects:v515 count:3];

  v435 = sub_1000423E0();
  if (v435)
  {
    v436 = sub_100042E68(v435);
    if (os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 217;
      _os_log_impl(&_mh_execute_header, v436, OS_LOG_TYPE_DEFAULT, "[%s:%d] start getting DLC", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 217, "[ShareSettingsInfo gatherSystemInfo]", 7, 0, "start getting DLC");
  v437 = objc_alloc_init(SharedSettingsDiagnosticsInterface);
  v438 = [(SharedSettingsDiagnosticsInterface *)v437 getDiagnosticsSystemReport:v434];
  v439 = sub_1000423E0();
  if (v439)
  {
    v440 = sub_100042E68(v439);
    if (os_log_type_enabled(v440, OS_LOG_TYPE_DEFAULT))
    {
      v441 = [v438 description];
      v442 = v441;
      uTF8String19 = [v441 UTF8String];
      *buf = 136315650;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      *&buf[18] = 2080;
      *&buf[20] = uTF8String19;
      _os_log_impl(&_mh_execute_header, v440, OS_LOG_TYPE_DEFAULT, "[%s:%d] DLC %s", buf, 0x1Cu);
    }
  }

  v444 = [v438 description];
  v445 = v444;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 220, "-[ShareSettingsInfo gatherSystemInfo]", 7, 0, "DLC %s", [v444 UTF8String]);

  [v484 setObject:v438 forKeyedSubscript:@"DLC"];
  objc_autoreleasePoolPop(context);
  v446 = sub_1000423E0();
  if (v446)
  {
    v447 = sub_100042E68(v446);
    if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
    {
      v448 = [v484 description];
      v449 = v448;
      uTF8String20 = [v448 UTF8String];
      *buf = 136315650;
      *&buf[4] = "[ShareSettingsInfo gatherSystemInfo]";
      *&buf[12] = 1024;
      *&buf[14] = 223;
      *&buf[18] = 2080;
      *&buf[20] = uTF8String20;
      _os_log_impl(&_mh_execute_header, v447, OS_LOG_TYPE_DEFAULT, "[%s:%d] system info %s", buf, 0x1Cu);
    }
  }

  v451 = [v484 description];
  v452 = v451;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/ShareSettingsInfo.m", 110, 223, "-[ShareSettingsInfo gatherSystemInfo]", 7, 0, "system info %s", [v451 UTF8String]);

  return v484;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateSemaphore = [(ShareSettingsInfo *)self stateSemaphore];
  dispatch_semaphore_signal(stateSemaphore);
}

@end