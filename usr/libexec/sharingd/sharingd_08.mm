void sub_100227274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1002272B4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"FamilyHotspotIdentifier"];
  v7 = [v5 objectForKeyedSubscript:@"FamilyHotspotDisplayName"];
  v8 = [v5 objectForKeyedSubscript:@"FamilyHotspotSharingMode"];

  if ([v8 integerValue] >= 3)
  {

    v8 = &off_10090BFD0;
  }

  if (*(a1 + 72) == 1)
  {
    v9 = *(a1 + 32);
    v10 = [v8 integerValue];
    if (v10 > 2)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1008D5118[v10];
    }

    v16 = [NSString stringWithFormat:@"'%@' -> %s", v7, v11];
    [v9 appendString:v16];

    if ([*(a1 + 40) count] - 1 != a3)
    {
      [*(a1 + 32) appendString:{@", "}];
    }
  }

  else
  {
    v12 = [*(*(a1 + 48) + 416) objectForKeyedSubscript:v6];
    v13 = [v12 integerValue];

    if (v13 != [v8 integerValue])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v14 = daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (v13 > 2)
        {
          v15 = "?";
        }

        else
        {
          v15 = off_1008D5118[v13];
        }

        v17 = [v8 integerValue];
        if (v17 > 2)
        {
          v18 = "?";
        }

        else
        {
          v18 = off_1008D5118[v17];
        }

        *buf = 138412802;
        v20 = v7;
        v21 = 2080;
        v22 = v15;
        v23 = 2080;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Family hotspot state updated: '%@' : %s -> %s", buf, 0x20u);
      }
    }
  }

  if (![v8 integerValue])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  [*(*(a1 + 48) + 416) setObject:v8 forKeyedSubscript:v6];
}

id sub_100227784(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Added reason to prevent locale change exit (reason %@)", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 520) addReason:*(a1 + 32)];
}

id sub_100227914(void *a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pushed expiration date of reason to prevent locale change exit (reason %@)", &v5, 0xCu);
  }

  return [*(a1[5] + 520) pushPreventionDateForReason:a1[4] newDate:a1[6]];
}

id sub_100227A80(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removed reason to prevent locale change exit (reason %@)", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 520) removeReason:*(a1 + 32)];
}

void sub_100228080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002280A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothDidSetPowerStateWithError:v3];
}

void sub_100229D34(id a1)
{
  v2 = [off_100972F98(a1) sharedManager];
  if ([v2 isMultiUser])
  {
    v1 = [v2 currentUser];
    byte_10098A358 = [v1 userType] == 1;
  }

  else
  {
    byte_10098A358 = 0;
  }
}

id sub_10022A65C(uint64_t a1, void *a2)
{
  [a2 clearMyAppleIDInfo];
  [a2 updateDiscoverableMode];

  return [a2 postNotification:@"com.apple.sharingd.AppleIDChanged"];
}

void sub_10022B17C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "non-null";
    if (!a2)
    {
      v6 = "null";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: wirelessDeviceCallBack(device %s)", &v8, 0xCu);
  }

  v7 = a3;
  [v7 forceAWDLDeviceRefresh:a2];
  [v7 updateWirelessDevice];
}

void sub_10022B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = daemon_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFiManagerClientRegisterVirtInterfaceChangeCallback called for WiFiDeviceClient device %@", &v9, 0xCu);
  }

  v8 = a5;
  [v8 forceAWDLDeviceRefresh:a2];
  [v8 updateWirelessDevice];
}

id sub_10022B32C(uint64_t a1, void *a2)
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDStatusMonitor: wifiServerRestartCallBack", v5, 2u);
  }

  return [a2 postNotification:@"com.apple.sharingd.WiFiRestart"];
}

id sub_10022B3A8(uint64_t a1, void *a2)
{
  [a2 logWiFiPowerState];
  [a2 clearWirelessState];
  [a2 updateAWDLStateInfo];
  [a2 updateDiscoverableMode];

  return [a2 postNotification:@"com.apple.sharingd.WirelessPowerChanged"];
}

id sub_10022B404(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 handleAWDLState:a2];

  return [a3 postNotification:@"com.apple.sharingd.VirtualInterfacesChanged"];
}

void sub_10022B44C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"YES";
    if (!a2)
    {
      v6 = @"NO";
    }

    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Host AP state changed (event data: %@)", buf, 0xCu);
  }

  v8 = @"HostAPEventData";
  v9 = a2;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [a3 postNotification:@"com.apple.sharingd.HotspotHostAPStateChanged" userInfo:v7];
}

id sub_10022B558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "wirelessCriticalCallback inCriticalState=%@", &v8, 0xCu);
  }

  return [a3 updateWirelessCritical:a2];
}

void sub_10022B6CC(uint64_t a1)
{
  v2 = objc_alloc_init(CWFInterface);
  v3 = *(a1 + 32);
  v4 = *(v3 + 672);
  *(v3 + 672) = v2;

  objc_initWeak(&location, *(a1 + 32));
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10022B8E4;
  v18[3] = &unk_1008D4DD8;
  objc_copyWeak(&v19, &location);
  [*(*(a1 + 32) + 672) setEventHandler:v18];
  [*(*(a1 + 32) + 672) activate];
  v5 = *(*(a1 + 32) + 672);
  v17 = 0;
  [v5 startMonitoringEventType:3 error:&v17];
  v6 = v17;
  v7 = *(*(a1 + 32) + 672);
  v16 = v6;
  [v7 startMonitoringEventType:8 error:&v16];
  v8 = v16;

  v9 = *(*(a1 + 32) + 672);
  v15 = v8;
  [v9 startMonitoringEventType:1 error:&v15];
  v10 = v15;

  if (v10)
  {
    v11 = daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1002320A8();
    }

    [*(*(a1 + 32) + 672) invalidate];
    v12 = *(a1 + 32);
    v13 = *(v12 + 672);
    *(v12 + 672) = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10022BA2C;
  v14[3] = &unk_1008CDEA0;
  v14[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v14);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void sub_10022B8C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10022B8E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10022B99C;
  v5[3] = &unk_1008CDC30;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_10022B99C(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got BSSID event, checking channel and wifi state\n", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateWifiState:{objc_msgSend(*(a1 + 32), "type")}];
}

id sub_10022BDB4(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 80), &state64);
  v2 = [NSNumber numberWithInt:state64 != 0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return [*(a1 + 32) postNotification:@"com.apple.sharingd.BacklightChanged"];
}

void sub_10022BFB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10022BFCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained d2dEncryptionChanged];
}

void sub_10022C284(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_10022C2CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothStateChanged];
}

void sub_10022C30C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothMonitorInvalidated];
}

void sub_10022C34C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothActivatedWithError:v3];
}

void sub_10022C3A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bluetoothStateChanged];
}

void sub_10022C7DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained installBluetoothMonitor];
}

void sub_10022CE74(uint64_t a1)
{
  [*(a1 + 32) updateDiscoverableMode];
  [*(a1 + 32) postNotification:@"com.apple.sharingd.WirelessCarPlayChanged"];
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless CarPlay session state changed.", v3, 2u);
  }
}

uint64_t sub_10022D138(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Contact store did change notification received", v4, 2u);
  }

  [*(a1 + 32) postNotification:@"com.apple.sharingd.ContactsChanged"];
  return notify_post("com.apple.sharing.privacy-changed");
}

uint64_t sub_10022D234(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MeCard changed notification received", v4, 2u);
  }

  [*(a1 + 32) clearMyIconAndHash];
  [*(a1 + 32) postNotification:@"com.apple.sharingd.ContactsChanged"];
  return notify_post("com.apple.sharing.privacy-changed");
}

void sub_10022D4E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 fetchLTEShows4GWithContext:v4];
    [*(a1 + 32) fetchDataStatusWithContext:v4];
    [*(a1 + 32) fetchSIMStatusWithContext:v4];
    [*(a1 + 32) fetchSignalStrengthWithContext:v4];
  }
}

void sub_10022D600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 32))
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetched preferred data context %@", &v9, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v8 = daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1002321F8();
    }
  }
}

void sub_10022D7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100232268();
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 isEqualToString:@"4G"];
    }

    else
    {
      v8 = 0;
    }

    [*(a1 + 32) updateLTEShows4G:v8];
  }
}

void sub_10022D904(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) updateSIMStatus:a2];
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002322D8();
    }
  }
}

void sub_10022D9F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) updateDataStatus:a2];
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100232348();
    }
  }
}

void sub_10022DADC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) updateSignalStrength:a2];
  }

  else
  {
    v6 = daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002323B8();
    }
  }
}

void sub_10022E094(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 fetchLTEShows4GWithContext:v4];
    [*(a1 + 32) fetchDataStatusWithContext:v4];
    [*(a1 + 32) fetchSIMStatusWithContext:v4];
    [*(a1 + 32) fetchSignalStrengthWithContext:v4];
  }
}

id *sub_10022E180(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] fetchSIMStatusWithContext:a2];
  }

  return result;
}

id *sub_10022E200(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] fetchDataStatusWithContext:a2];
  }

  return result;
}

id *sub_10022E280(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] fetchSignalStrengthWithContext:a2];
  }

  return result;
}

void sub_10022E974(id a1, BOOL a2)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sharingd Exiting...", v3, 2u);
  }

  exit(0);
}

void sub_10022E9D4(uint64_t a1, void *a2)
{
  v3 = daemon_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Current language changed", buf, 2u);
  }

  [_TtC16DaemoniOSLibrary21SDXPCHelperImageCache clearCacheWithSync:1];
  v4 = a2;
  v5 = objc_opt_self();
  objc_sync_enter(v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002317B8;
  block[3] = &unk_1008CDEA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_sync_exit(v5);
}

void sub_10022FDF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4 != 0;
  v6 = daemon_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4 != 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Mirroring active state changed: %d", v10, 8u);
  }

  pthread_mutex_lock(&stru_100972F48);
  v7 = *(a1 + 32);
  v8 = *(v7 + 688);
  *(v7 + 688) = v5;
  pthread_mutex_unlock(&stru_100972F48);
  if (v8 != v5)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"com.apple.sharingd.MirroringStateChanged" object:0];
  }
}

void sub_100230414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = daemon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WiFi Preferences changed callback, purging ssid cache", v7, 2u);
  }

  v5 = a3;
  pthread_mutex_lock(&stru_100972F48);
  [v5[60] removeAllObjects];
  v6 = v5[60];
  v5[60] = 0;

  pthread_mutex_unlock(&stru_100972F48);
  [v5 updateAutoHotspotState];
  [v5 updateFamilyHotspotState];
}

Class sub_1002311F0()
{
  if (qword_10098A390 != -1)
  {
    sub_100232890();
  }

  result = objc_getClass("TUPrivacyManager");
  qword_10098A388 = result;
  off_100972F88 = sub_100231244;
  return result;
}

Class sub_10023127C()
{
  if (qword_10098A390 != -1)
  {
    sub_100232890();
  }

  result = objc_getClass("TUPhoneNumber");
  qword_10098A3A0 = result;
  off_100972F90 = sub_1002312D0;
  return result;
}

uint64_t sub_1002312DC()
{
  if (qword_10098A390 != -1)
  {
    sub_100232890();
  }

  v0 = dlsym(qword_10098A398, "TUHomeCountryCode");
  off_1009731B0 = v0;

  return v0();
}

Class sub_100231334()
{
  if (qword_10098A3B0 != -1)
  {
    sub_1002328A4();
  }

  result = objc_getClass("UMUserManager");
  qword_10098A3A8 = result;
  off_100972F98 = sub_100231388;
  return result;
}

Class sub_1002313C0()
{
  if (qword_10098A3C8 != -1)
  {
    sub_1002328B8();
  }

  result = objc_getClass("BLSBacklight");
  qword_10098A3C0 = result;
  off_100972FA0 = sub_100231414;
  return result;
}

Class sub_10023144C()
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  result = objc_getClass("AVSystemController");
  qword_10098A3D8 = result;
  off_100972FA8 = sub_1002314A0;
  return result;
}

id sub_1002314D8(uint64_t a1)
{
  if (qword_10098A3F0 != -1)
  {
    sub_1002328E0();
  }

  v2 = qword_10098A370;

  return v2;
}

void sub_10023151C(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_CarPlayIsConnectedAttribute");
  if (v1)
  {
    objc_storeStrong(&qword_10098A370, *v1);
  }

  off_100972FB0 = sub_100231584;
}

id sub_100231590(uint64_t a1)
{
  if (qword_10098A3F8 != -1)
  {
    sub_1002328F4();
  }

  v2 = qword_10098A368;

  return v2;
}

void sub_1002315D4(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_ServerConnectionDiedNotification");
  if (v1)
  {
    objc_storeStrong(&qword_10098A368, *v1);
  }

  off_100972FB8 = sub_10023163C;
}

id sub_100231648(uint64_t a1)
{
  if (qword_10098A400 != -1)
  {
    sub_100232908();
  }

  v2 = qword_10098A378;

  return v2;
}

void sub_10023168C(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_CarPlayIsConnectedDidChangeNotification");
  if (v1)
  {
    objc_storeStrong(&qword_10098A378, *v1);
  }

  off_100972FC0 = sub_1002316F4;
}

id sub_100231700(uint64_t a1)
{
  if (qword_10098A408 != -1)
  {
    sub_10023291C();
  }

  v2 = qword_10098A380;

  return v2;
}

void sub_100231744(id a1)
{
  if (qword_10098A3E0 != -1)
  {
    sub_1002328CC();
  }

  v1 = dlsym(qword_10098A3E8, "AVSystemController_SubscribeToNotificationsAttribute");
  if (v1)
  {
    objc_storeStrong(&qword_10098A380, *v1);
  }

  off_100972FC8 = sub_1002317AC;
}

id sub_1002317B8(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "currentLocalChanged", v4, 2u);
  }

  return [*(*(a1 + 32) + 520) scheduleOperation];
}

void sub_100231830()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023186C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002318A8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100231A24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231A60()
{
  sub_10000883C();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100231ADC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100231BB4()
{
  sub_100019D64();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100231C30()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231C6C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231CA8()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231D18()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231D54()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231D90()
{
  __error();
  sub_100008860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231E18()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231E88()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231EC4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231F00()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231F3C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100231FC0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100231FFC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100232038()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002320A8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232118()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100232188()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1002321F8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232268()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002322D8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232348()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002323B8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100232428()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1002324AC()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100232530()
{
  v0 = SCError();
  SCErrorString(v0);
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1002325B4()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100232624()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023273C(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = [a1 isScreenOnForBacklightState:a2];
  v5 = @"Off";
  if (v4)
  {
    v5 = @"On";
  }

  v6 = 138412290;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Backlight didCompleteUpdatingScreenOnState to %@", &v6, 0xCu);
}

void sub_1002327E4()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100232854()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100232AEC(id a1)
{
  v1 = objc_alloc_init(SDUnlockKeyManager);
  v2 = qword_10098A410;
  qword_10098A410 = v1;
}

void sub_100233478(uint64_t a1)
{
  v2 = [*(a1 + 32) getWatchNameForTesting];
  v1 = +[SDHUDManager shared];
  [v1 postPairedUnlockBannerFor:v2 needsLockButton:0 needsUpdate:0];
}

void sub_1002334E8(uint64_t a1)
{
  v2 = [*(a1 + 32) getWatchNameForTesting];
  v1 = +[SDHUDManager shared];
  [v1 postPairedUnlockBannerFor:v2 needsLockButton:1 needsUpdate:1];
}

void sub_100233558(id a1, int a2)
{
  v2 = +[SDHUDManager shared];
  [v2 updatePairedUnlockBannerToUnlocked];
}

void sub_1002335A0(id a1, int a2)
{
  v2 = +[SDHUDManager shared];
  [v2 dismissPairedUnlockBanner];
}

void sub_100233A04(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 pairedWatchWristState];

  if (v3 == 2)
  {
    if ([*(a1 + 32) needsOffWristBeforePairedUnlock])
    {
      v4 = paired_unlock_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Eligible for Paired Unlock after off wrist event", buf, 2u);
      }

      [*(a1 + 32) setNeedsOffWristBeforePairedUnlock:0];
    }

    v5 = [*(a1 + 32) delayedStartTimer];

    if (v5)
    {
      v6 = paired_unlock_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch off wrist while waiting to start Paired Unlock. Cancelling operation and dismissing banner", v7, 2u);
      }

      [*(a1 + 32) invalidateDelayedStartTimer];
      [*(a1 + 32) resetAndClearState];
    }
  }
}

void sub_100233B98(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Paired Unlock Banner dismissed", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 104))
  {
    v4 = paired_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner dismissed while waiting for user response. Cancelling Paired Unlock", v12, 2u);
    }

    [*(a1 + 32) invalidateDelayedStartTimer];
    v5 = [*(a1 + 32) metrics];

    if (v5)
    {
      v6 = [*(a1 + 32) metrics];
      [v6 setFailureReason:16];
    }

    [*(a1 + 32) sendResetMessage:objc_msgSend(*(*(a1 + 32) + 128) reason:{"unlockSessionID"), 16}];
  }

  else
  {
    v7 = *(v3 + 68);
    v8 = paired_unlock_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dismissed while performing Paired Unlock. Cancelling or relocking watch if necessary", v11, 2u);
      }

      [*(a1 + 32) sendRelockRequestWithReset:1];
    }

    else
    {
      if (v9)
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Banner dismissed after Paired Unlock finished. Doing nothing according to policy.", v10, 2u);
      }
    }
  }
}

id sub_100233DD4(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Paired Unlock Banner lock button tapped. Disabling Paired unlock until watch off wrist or unlocked", buf, 2u);
  }

  [*(a1 + 32) setNeedsOffWristBeforePairedUnlock:1];
  v3 = [*(a1 + 32) delayedStartTimer];

  v4 = paired_unlock_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock button tapped before starting Paired Unlock. Not starting Paired Unlock", v11, 2u);
    }

    [*(a1 + 32) invalidateDelayedStartTimer];
  }

  else
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lock button tapped during or after Paired Unlock. Relocking watch if necessary", v10, 2u);
    }

    [*(a1 + 32) sendRelockRequestWithReset:1];
  }

  v6 = [*(a1 + 32) metrics];

  if (v6)
  {
    v7 = [*(a1 + 32) metrics];
    [v7 setRelockedWatch:1];

    v8 = [*(a1 + 32) metrics];
    [v8 setFailureReason:17];
  }

  return [*(a1 + 32) sendResetMessage:objc_msgSend(*(*(a1 + 32) + 128) reason:{"unlockSessionID"), 17}];
}

id sub_1002345A4(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delayed start timer fired", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return [*(a1 + 32) invalidateDelayedStartTimer];
}

id sub_1002347BC(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Long-term key timer fired, resetting state", v4, 2u);
  }

  *(*(a1 + 32) + 67) = 0;
  [*(a1 + 32) releaseKeyBagAssertion];
  return [*(a1 + 32) abortDevicePairingWithReason:@"com.apple.sharingd.abort-reason.response.timeout"];
}

void sub_100234B14(uint64_t a1)
{
  [*(a1 + 32) setRemoteDeviceLocked:1];
  [*(a1 + 32) resetAndClearState];
  [*(a1 + 32) setSecurityManager:0];
  [*(a1 + 32) updateSecurityManager];
  v2 = *(*(a1 + 32) + 96);
  v3 = objc_opt_new();
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  if (v5 > 0.0 && ![*(a1 + 32) unlockingState])
  {
    v6 = paired_unlock_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Retrying unlock after switch", v9, 2u);
    }

    [*(a1 + 32) startUnlockIfNeeded];
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = 0;
  }
}

void sub_10023516C(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "State timer fired, assuming devices are not connected", v7, 2u);
  }

  v3 = *(a1 + 32);
  v4 = SFUnlockErrorDomian;
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Remote never responded with state";
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:v4 code:113 userInfo:v5];
  [v3 notifyUnlockStateWithState:0 error:v6];
}

void sub_10023556C(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return;
  }

  if (![*(a1 + 32) unlockEnabled])
  {
    v3 = *(a1 + 40);
    v7 = SFUnlockErrorDomian;
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Paired Unlock disabled";
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = v7;
    v10 = 109;
LABEL_9:
    v12 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
    (*(v3 + 16))(v3, 0, v12);

    return;
  }

  v2 = [*(a1 + 32) initiateStashBagCreationWithManifest:0];
  v3 = *(a1 + 40);
  if (!v2)
  {
    v11 = SFUnlockErrorDomian;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Could not initiate stash creation";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = v11;
    v10 = 101;
    goto LABEL_9;
  }

  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  *(v5 + 144) = v4;
}

void sub_1002357F8(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return;
  }

  if (![*(a1 + 32) unlockEnabled])
  {
    v3 = *(a1 + 48);
    v7 = SFUnlockErrorDomian;
    v13 = NSLocalizedDescriptionKey;
    v14 = @"Paired Unlock disabled";
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = v7;
    v10 = 109;
LABEL_9:
    v12 = [NSError errorWithDomain:v9 code:v10 userInfo:v8];
    (*(v3 + 16))(v3, 0, v12);

    return;
  }

  v2 = [*(a1 + 32) initiateStashBagCreationWithManifest:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (!v2)
  {
    v11 = SFUnlockErrorDomian;
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Could not initiate stash creation with manifest";
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = v11;
    v10 = 101;
    goto LABEL_9;
  }

  v4 = [*(a1 + 48) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  *(v5 + 144) = v4;
}

void sub_10023766C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 68);
  v3 = paired_unlock_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Telling watch to finish unlocking", buf, 2u);
    }

    [*(a1 + 32) sendSessionAuthenticationToken:*(a1 + 40) sessionID:{objc_msgSend(*(a1 + 48), "sessionID")}];
    v5 = paired_unlock_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preemptively assuming watch will succeed in unlock. Updating pill to Unlocked", v10, 2u);
    }

    v6 = +[SDHUDManager shared];
    [v6 updatePairedUnlockBannerToUnlocked];

    v7 = +[NSDate date];
    v8 = [*(a1 + 32) metricDates];
    [v8 setPillUpdated:v7];
  }

  else
  {
    if (v4)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempt cancelled. Not sending auth token. Dismissing banner just in case", v9, 2u);
    }

    v7 = +[SDHUDManager shared];
    [v7 dismissPairedUnlockBanner];
  }
}

id sub_1002383A4(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10023B058();
  }

  result = [*(a1 + 32) releaseKeyBagAssertion];
  v4 = *(a1 + 32);
  if (*(v4 + 67) == 1)
  {
    *(v4 + 67) = 0;
    [*(a1 + 32) invalidateLongTermKeyTimer];
    return [*(a1 + 32) abortDevicePairingWithReason:@"com.apple.sharingd.abort-reason.send.request"];
  }

  return result;
}

id sub_100238584(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10023B094();
  }

  return [*(a1 + 32) abortDevicePairingWithReason:@"com.apple.sharingd.abort-reason.send.response"];
}

id sub_100238B78(uint64_t a1)
{
  v2 = [*(a1 + 32) metrics];

  if (v2)
  {
    v3 = [*(a1 + 32) metrics];
    [v3 setFailureReason:24];
  }

  v4 = *(a1 + 32);

  return [v4 resetAndClearState];
}

void sub_100238D54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting state. Error: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) metrics];

  if (v5)
  {
    v6 = [*(a1 + 32) metrics];
    [v6 setFailureReason:24];
  }

  [*(a1 + 32) resetAndClearState];
}

void sub_100238F8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SFUnlockErrorDomian;
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Message failed to send";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:v2 code:103 userInfo:v3];
  [v1 notifyStashStateWithError:v4];
}

void sub_1002391A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SFUnlockErrorDomian;
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Message failed to send";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:v2 code:103 userInfo:v3];
  [v1 notifyStashStateWithError:v4];
}

void sub_100239398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10023B0D0();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"State request failed to send";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:103 userInfo:v7];
  [v5 notifyUnlockStateWithState:0 error:v8];
}

void sub_1002395EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10023B140();
  }
}

void sub_10023A968()
{
  sub_100008A18();
  [v1 pairingCompatibilityState];
  [v0 deviceIsPaired];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10023AA24()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AA60()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AA9C(void *a1)
{
  [a1 pairingCompatibilityState];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10023AB20()
{
  sub_100008A18();
  [v1 hasLongTermKey];
  v7 = [v0 longTermKey];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10023ABE4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023AC54()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023ACC4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023AD34(void *a1, void *a2)
{
  [a1 unlockingState];
  [a2 hasKey];
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10023ADF4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AE30()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AE6C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AF1C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023AF58()
{
  sub_100008A18();
  [v1 hasUnlockEnabled];
  [v0 unlockEnabled];
  [v0 hasPasscodeEnabled];
  [v0 passcodeEnabled];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_10023B058()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B094()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B0D0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023B140()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023B1B0()
{
  sub_100008A18();
  [v0 unlockingState];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10023B248()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10023B2B8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B3AC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B3E8()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023B424()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10023BB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10023BB50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completionHandler];
  v1[2](v1, 1, 0, 1);

  [WeakRetained openLinks];
}

void sub_10023BEB8(id a1)
{
  v1 = objc_alloc_init(SDUnlockLockManager);
  v2 = qword_10098A420;
  qword_10098A420 = v1;
}

void sub_10023C2F8(uint64_t a1)
{
  v2 = +[SDStatusMonitor sharedMonitor];
  v3 = [v2 deviceKeyBagState];

  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "keyBagLockStateChange: %ld", &v21, 0xCu);
  }

  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 deviceKeyBagLocked];

  if (v6)
  {
    [*(a1 + 32) setLastUnlockedByPairedUnlock:0];
  }

  if ([*(a1 + 32) unlockEnabled])
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    v8 = [v7 deviceKeyBagLocking];

    if (v8)
    {
      [*(a1 + 32) sendDeviceLockStateChanged:0];
      v9 = *(a1 + 32);
      v10 = 1;
LABEL_24:
      [v9 setSentLockedState:v10];
      return;
    }

    v12 = +[SDStatusMonitor sharedMonitor];
    v13 = [v12 deviceKeyBagDisabled];

    if (v13)
    {
      v14 = paired_unlock_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Passcode disabled", &v21, 2u);
      }

      [*(a1 + 32) disableUnlockPairing];
      [*(a1 + 32) sendDisableMessage];
      return;
    }

    v15 = +[SDStatusMonitor sharedMonitor];
    if ([v15 deviceKeyBagLocked])
    {
      v16 = [*(a1 + 32) sentLockedState];

      if ((v16 & 1) == 0)
      {
        [*(a1 + 32) sendDeviceLockStateChanged:0];
LABEL_23:
        v9 = *(a1 + 32);
        v10 = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v17 = +[SDStatusMonitor sharedMonitor];
    v18 = [v17 deviceKeyBagUnlocked];

    if (v18)
    {
      [*(a1 + 32) sendDeviceLockStateChanged:1];
      if ([*(a1 + 32) lastUnlockedByPairedUnlock])
      {
        v19 = [*(a1 + 32) dailyMetrics];
        [v19 setSuccessfulAttempts:{objc_msgSend(v19, "successfulAttempts") + 1}];
      }

      v20 = [*(a1 + 32) dailyMetrics];
      [v20 setTotalUnlocks:{objc_msgSend(v20, "totalUnlocks") + 1}];
    }

    goto LABEL_23;
  }

  v11 = paired_unlock_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Paired unlock disabled not sending lock state", &v21, 2u);
  }
}

void sub_10023CAD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dailyMetrics];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 32) unlockEnabled];

    if (v7)
    {
      v8 = [*(a1 + 32) dailyMetrics];
      v9 = [v8 totalAttempts];
      v10 = [*(a1 + 32) dailyMetrics];
      v11 = v9 - [v10 successfulAttempts];
      v12 = [*(a1 + 32) dailyMetrics];
      [v12 setFailedAttempts:v11];

      v13 = [*(a1 + 32) dailyMetrics];
      v14 = [v13 totalUnlocks];
      v15 = [*(a1 + 32) dailyMetrics];
      v16 = v14 - [v15 successfulAttempts];
      v17 = [*(a1 + 32) dailyMetrics];
      [v17 setPasscodeUnlocks:v16];

      v18 = +[SFAutoUnlockManager autoUnlockEnabled];
      v19 = [*(a1 + 32) dailyMetrics];
      [v19 setPhoneAutoUnlockEnabled:v18];

      v20 = [*(a1 + 32) idsController];
      v21 = [v20 activeIDSDevice];

      v22 = [v21 productBuildVersion];
      v23 = [*(a1 + 32) dailyMetrics];
      [v23 setPhoneSoftwareVersion:v22];

      v24 = [v21 modelIdentifier];
      v25 = [*(a1 + 32) dailyMetrics];
      [v25 setPhoneHardwareModel:v24];

      v26 = paired_unlock_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Submitting daily metrics", v29, 2u);
      }

      v27 = [*(a1 + 32) dailyMetrics];
      [v27 submitEvent];
    }
  }

  v28 = objc_alloc_init(SFPairedUnlockDailyEvent);
  [*(a1 + 32) setDailyMetrics:v28];

  v4[2](v4, 1);
}

id sub_10023D010(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Long-term key timer fired, resetting state", v4, 2u);
  }

  return [*(a1 + 32) resetLongTermKeyRequest];
}

void sub_10023D1F8(id *a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Client enabling unlock", v23, 2u);
  }

  v3 = a1[4];
  if (v3 && [v3 length] && a1[7])
  {
    if ([a1[5] isEqualToString:IDSDefaultPairedDevice])
    {
      v4 = [a1[6] idsController];
      v5 = [v4 hasDefaultDevice];

      if (v5)
      {
        v6 = [a1[4] copy];
        v7 = a1[6];
        v8 = v7[15];
        v7[15] = v6;

        v9 = [a1[7] copy];
        v10 = a1[6];
        v11 = v10[27];
        v10[27] = v9;

        *(a1[6] + 66) = 1;
        v12 = paired_unlock_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preventing exit for enable", v23, 2u);
        }

        v13 = +[SDStatusMonitor sharedMonitor];
        [v13 addPreventExitForLocaleReason:@"SDUnlockSetupSessionPreventExitReason"];

        *(a1[6] + 70) = 1;
        [a1[6] enableUnlockForcingLTKTransfer:0];
        return;
      }
    }

    v21 = paired_unlock_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1002411FC((a1 + 5), a1);
    }

    v15 = a1[7];
    if (v15)
    {
      v22 = SFUnlockErrorDomian;
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Bad device identifier";
      v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v18 = v22;
      v19 = 104;
      goto LABEL_15;
    }
  }

  else
  {
    v14 = paired_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1002412C0(a1 + 4, a1, v14);
    }

    v15 = a1[7];
    if (v15)
    {
      v16 = SFUnlockErrorDomian;
      v24 = NSLocalizedDescriptionKey;
      v25 = @"Invalid password";
      v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = v16;
      v19 = 112;
LABEL_15:
      v20 = [NSError errorWithDomain:v18 code:v19 userInfo:v17];
      v15[2](v15, 0, v20);
    }
  }
}

void sub_10023D94C(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  [v1 removePreventExitForLocaleReason:@"SDUnlockSetupSessionPreventExitReason"];
}

void sub_10023F26C(uint64_t a1, int a2, int a3)
{
  v6 = +[NSDate now];
  v7 = [*(a1 + 32) metricDates];
  [v7 setMotionCheckEnded:v6];

  v8 = a3 ^ 1;
  if (((a2 ^ 1) & 1) != 0 || (v8 & 1) != 0 || ![*(a1 + 40) hasKey] || !objc_msgSend(*(a1 + 40), "hasUsingRecord"))
  {
    v14 = paired_unlock_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = @"NO";
      v17 = *(a1 + 40);
      if (a2)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *v21 = 138412802;
      *&v21[4] = v18;
      *&v21[12] = 2112;
      if (a3)
      {
        v16 = @"YES";
      }

      *&v21[14] = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Resetting (on wrist = %@, motion detected = %@, exchange request = %@)", v21, 0x20u);
    }

    if ((a2 & 1) != 0 || a3)
    {
      if ((v8 | a2) == 1)
      {
        if ((a2 ^ 1 | a3) == 1)
        {
          v15 = ![*(a1 + 40) hasKey] || (objc_msgSend(*(a1 + 40), "hasUsingRecord") & 1) == 0;
        }

        else
        {
          v15 = 6;
        }
      }

      else
      {
        v15 = 5;
      }
    }

    else
    {
      v15 = 7;
    }

    [*(a1 + 32) sendResetMessage:objc_msgSend(*(a1 + 40) reason:{"sessionID", *v21, *&v21[8]), v15}];
  }

  else
  {
    v9 = [*(a1 + 32) securityManager];
    [*(a1 + 32) setUnlockAuthSession:{objc_msgSend(v9, "unlockSessionAsOriginator:usingEscrow:escrowSecret:", 0, objc_msgSend(*(a1 + 40), "usingRecord"), 0)}];

    if (([*(a1 + 32) unlockAuthSession] & 0x8000000000000000) != 0)
    {
      v19 = paired_unlock_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100241BB4();
      }

      [*(a1 + 32) sendKeyExchangeResponse:0 sessionID:{objc_msgSend(*(a1 + 40), "sessionID")}];
      [*(a1 + 32) resetAndClearState];
    }

    else
    {
      v10 = [*(a1 + 32) securityManager];
      v11 = [*(a1 + 32) unlockAuthSession];
      v12 = [*(a1 + 40) key];
      v13 = [v10 stepWithAuthSession:v11 data:v12];

      if (v13)
      {
        [*(a1 + 32) sendKeyExchangeResponse:v13 sessionID:{objc_msgSend(*(a1 + 40), "sessionID")}];
        [*(a1 + 32) setWaitingForAuthToken:1];
      }

      else
      {
        v20 = paired_unlock_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100241BF0();
        }

        [*(a1 + 32) sendKeyExchangeResponse:0 sessionID:{objc_msgSend(*(a1 + 40), "sessionID")}];
        [*(a1 + 32) resetAndClearState];
      }
    }
  }
}

void sub_10023FCD0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100241DAC();
  }
}

id sub_10023FE74(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100241E1C();
  }

  [*(a1 + 32) invalidateLongTermKeyTimer];
  return [*(a1 + 32) resetLongTermKeyRequest];
}

void sub_100240030(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100241E58();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Failed to send to other device";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:106 userInfo:v7];
  [v5 notifyEnableStateWithError:v8];
}

void sub_1002402A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100241EC8();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Failed to send to other device";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:106 userInfo:v7];
  [v5 notifyEnableStateWithError:v8];
}

void sub_100240510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = paired_unlock_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100241F38();
  }

  v5 = *(a1 + 32);
  v6 = SFUnlockErrorDomian;
  v9 = NSLocalizedDescriptionKey;
  v10 = @"Failed to send to other device";
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v8 = [NSError errorWithDomain:v6 code:106 userInfo:v7];
  [v5 notifyEnableStateWithError:v8];
}

void sub_100240C64(id a1, NSError *a2)
{
  v2 = a2;
  v3 = paired_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100241FA8();
  }
}

void sub_1002411FC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 48) idsController];
  [v2 hasDefaultDevice];
  sub_10002FCEC();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1002412C0(void *a1, uint64_t a2, os_log_t log)
{
  v3 = @"YES";
  if (*a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (!*(a2 + 56))
  {
    v3 = @"NO";
  }

  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameters (passcode = %@, handler = %@)", &v5, 0x16u);
}

void sub_100241370()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002413AC(void *a1)
{
  [a1 hasRequestID];
  v2 = [a1 requestID];
  sub_10002FCEC();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100241488(void *a1)
{
  [a1 hasLongTermKey];
  v2 = [a1 longTermKey];
  sub_100021F34();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100241540()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10024157C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002415B8(void *a1)
{
  [a1 hasLongTermKey];
  v2 = [a1 longTermKey];
  sub_100021F34();
  sub_100008860();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100241670()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241720()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002417D0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10024180C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241848()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241884(void *a1, void *a2, NSObject *a3)
{
  if ([a1 hasToken])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [a1 token];
  v8 = [a2 securityManager];
  v9 = [v8 localLongTermKey];
  if (v9)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [a2 securityManager];
  v12 = [v11 remoteLongTermKey];
  v15 = 138413058;
  v16 = v6;
  sub_10002FCEC();
  v17 = v7;
  v18 = v13;
  v19 = v10;
  v20 = v13;
  v21 = v14;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Missing information for escrow session (has token = %@, token = %@, local long-term key = %@, remote long-term key = %@)", &v15, 0x2Au);
}

void sub_1002419D4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241A10()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241A80()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241ABC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241B78()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241BB4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241BF0()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241C2C(void *a1)
{
  [a1 inPosition];
  [a1 waitingForAuthToken];
  sub_10002FCEC();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100241D00()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241D3C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241DAC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241E1C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100241E58()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241EC8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241F38()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100241FA8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t SDUnlockSessionAuthTokenReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_65;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_59:
        v36 = 16;
        goto LABEL_64;
      }

      v34 = PBReaderReadData();
      v35 = *(a1 + 8);
      *(a1 + 8) = v34;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v41 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v41 & 0x7F) << v28;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v30;
      }

LABEL_63:
      v36 = 24;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_40;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_55:
      v36 = 20;
    }

LABEL_64:
    *(a1 + v36) = v20;
    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

id sub_100243170(uint64_t a1)
{
  if (a1 >= 0x1A)
  {
    v2 = [NSString stringWithFormat:@"Unknown reason %hu", a1];
  }

  else
  {
    v2 = *(&off_1008D53D8 + a1);
  }

  return v2;
}

void sub_100243E8C(uint64_t a1)
{
  [*(a1 + 32) resetAndClearState];
  v2 = *(a1 + 32);
  v3 = [v2 securityManager];
  [v2 disableUnlockPairingForSecManager:v3];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = SFPairedUnlockStateChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

uint64_t sub_100244064(uint64_t a1)
{
  [*(a1 + 32) disableUnlockPairing];
  [*(a1 + 32) sendDisableMessage];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100244324(uint64_t a1)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Session timer fired, resetting state", v6, 2u);
  }

  v3 = [*(a1 + 32) metrics];

  if (v3)
  {
    v4 = [*(a1 + 32) metrics];
    [v4 setFailureReason:19];
  }

  return [*(a1 + 32) resetAndClearState];
}

void sub_100244524(id a1, NSError *a2)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100245080();
  }
}

void sub_10024460C(id a1, NSError *a2)
{
  v2 = paired_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1002450B4();
  }
}

void sub_1002451EC(id a1)
{
  v1 = objc_alloc_init(SDNearbyAgent);
  v2 = gSFNearbyAgent;
  gSFNearbyAgent = v1;
}

const char *sub_1002453D0(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "?";
  }

  else
  {
    return off_1008D60A0[a1];
  }
}

const char *sub_1002453F4(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "?";
  }

  else
  {
    return off_1008D5A20[a1];
  }
}

void sub_100245418(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 identity];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void *sub_10024581C(void *result)
{
  v2 = result[4];
  v3 = *(v2 + 952);
  if (*(result + 10) == v3)
  {
    return result;
  }

  v4 = result;
  if (dword_100973248 <= 40)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      if (v3 > 0xF)
      {
        v5 = "?";
      }

      else
      {
        v5 = off_1008D5A20[v3];
      }

      v7 = *(v4 + 10);
      if (v7 > 0xF)
      {
        v8 = "?";
      }

      else
      {
        v8 = off_1008D5A20[v7];
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent setAudioRoutingScore:]_block_invoke", 40, "Audio routing score changed: %s -> %s\n", v5, v8);
      v2 = v4[4];
      goto LABEL_13;
    }

    v6 = _LogCategory_Initialize();
    v2 = v4[4];
    if (v6)
    {
      v3 = *(v2 + 952);
      goto LABEL_4;
    }
  }

LABEL_13:
  *(v2 + 952) = *(v4 + 10);
  v9 = v4[4];
  v10 = *(v9 + 88);
  *(v9 + 88) = 0;

  v11 = v4[4];

  return [v11 _update];
}

void *sub_10024599C(void *result)
{
  v2 = *(result + 40);
  v3 = result[4];
  v4 = *(v3 + 944);
  if (v2 == v4)
  {
    return result;
  }

  v5 = result;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      if (v4)
      {
        v6 = "yes";
      }

      else
      {
        v6 = "no";
      }

      if (v2)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent setAutoUnlockActive:]_block_invoke", 30, "AutoUnlocking: %s -> %s\n", v6, v7);
      LOBYTE(v2) = *(v5 + 40);
      v3 = v5[4];
      goto LABEL_12;
    }

    v8 = _LogCategory_Initialize();
    LOBYTE(v2) = *(v5 + 40);
    v3 = v5[4];
    if (v8)
    {
      LOBYTE(v4) = *(v3 + 944);
      goto LABEL_4;
    }
  }

LABEL_12:
  *(v3 + 944) = v2;
  v9 = v5[4];

  return [v9 _update];
}

void *sub_100245AF8(void *result)
{
  v2 = *(result + 40);
  v3 = result[4];
  v4 = *(v3 + 945);
  if (v2 == v4)
  {
    return result;
  }

  v5 = result;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      if (v4)
      {
        v6 = "yes";
      }

      else
      {
        v6 = "no";
      }

      if (v2)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent setBoostNearbyInfo:]_block_invoke", 30, "BoostNearbyInfo: %s -> %s\n", v6, v7);
      LOBYTE(v2) = *(v5 + 40);
      v3 = v5[4];
      goto LABEL_12;
    }

    v8 = _LogCategory_Initialize();
    LOBYTE(v2) = *(v5 + 40);
    v3 = v5[4];
    if (v8)
    {
      LOBYTE(v4) = *(v3 + 945);
      goto LABEL_4;
    }
  }

LABEL_12:
  *(v3 + 945) = v2;
  v9 = v5[4];

  return [v9 _update];
}

void *sub_100245C54(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 532);
  if (*(result + 40))
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3 - 1;
  }

  *(v2 + 532) = v4;
  v5 = result[4];
  v6 = *(v5 + 532);
  v7 = v6 != 0;
  LODWORD(v8) = *(v5 + 946);
  if (v8 != v7)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
LABEL_13:
        v10 = "no";
        if (v8)
        {
          v11 = "yes";
        }

        else
        {
          v11 = "no";
        }

        if (v6)
        {
          v10 = "yes";
        }

        LogPrintF(&dword_100973248, "[SDNearbyAgent setEnhancedDiscovery:]_block_invoke", 30, "EnhancedDiscovery: %s -> %s\n", v11, v10);
        v5 = v1[4];
        goto LABEL_22;
      }

      v12 = _LogCategory_Initialize();
      v5 = v1[4];
      if (v12)
      {
        LOBYTE(v8) = *(v5 + 946);
        goto LABEL_13;
      }
    }

LABEL_22:
    *(v5 + 946) = v7;
    v13 = v1[4];

    return [v13 _update];
  }

  if (dword_100973248 > 30)
  {
    return result;
  }

  if (dword_100973248 == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    v8 = v1[4];
    v6 = *(v8 + 532);
    LOBYTE(v8) = *(v8 + 946);
  }

  if (v8)
  {
    v9 = "enabled";
  }

  else
  {
    v9 = "disabled";
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent setEnhancedDiscovery:]_block_invoke", 30, "Enhanced discovery %s, reference count %d\n", v9, v6);
}

_DWORD *sub_100245E58(_DWORD *result)
{
  v2 = result[10];
  v3 = *(result + 4);
  v4 = *(v3 + 956);
  if (v2 == v4)
  {
    return result;
  }

  v5 = result;
  if (dword_100973248 <= 20)
  {
    if (dword_100973248 == -1)
    {
      v6 = _LogCategory_Initialize();
      v2 = v5[10];
      v3 = *(v5 + 4);
      if (!v6)
      {
        goto LABEL_6;
      }

      v4 = *(v3 + 956);
    }

    LogPrintF(&dword_100973248, "[SDNearbyAgent setHotspotInfo:]_block_invoke", 20, "HotspotInfo: 0x%X -> 0x%X\n", v4, v2);
    v2 = v5[10];
    v3 = *(v5 + 4);
  }

LABEL_6:
  *(v3 + 956) = v2;
  v7 = *(v5 + 4);
  v8 = *(v7 + 128);
  *(v7 + 128) = 0;

  v9 = *(v5 + 4);

  return [v9 _update];
}

_BYTE *sub_100245FA0(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result _activate];
  }

  return result;
}

id sub_1002467F4(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 568);
  state64 = 0;
  notify_get_state(v2, &state64);
  *(*v1 + 70) = state64;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262154(v1);
  }

  return [*v1 _update];
}

id sub_10024687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_10026219C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _bleAdvertisingAddressChanged];
}

id sub_1002468E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1002621B8(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _update];
}

uint64_t sub_10024694C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1002621D4(result, a2, a3);
    }
  }

  *(*(v3 + 32) + 692) = -1;
  return result;
}

id sub_1002469AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1002621F0(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _idsMeDeviceChanged];
}

id sub_100246A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_10026220C(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 72) = -1;
  v4 = *(v3 + 32);

  return [v4 _update];
}

id sub_100246A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100262228(a1, a2, a3);
    }
  }

  [*(v3 + 32) _updateCameraState];
  if ([*(v3 + 32) _shouldDeliverDonStateUpdates])
  {
    [*(v3 + 32) _updateDonState];
  }

  v4 = *(v3 + 32);

  return [v4 _update];
}

id sub_100246B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100262244(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _update];
}

id sub_100246B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100262260(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _update];
}

void sub_100246BDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 976);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100246C50;
  block[3] = &unk_1008CDEA0;
  block[4] = v1;
  dispatch_async(v2, block);
}

id sub_100246C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_10026227C(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 692) = -1;
  if ([*(v3 + 32) _shouldDeliverDonStateUpdates])
  {
    [*(v3 + 32) _updateDonState];
  }

  v4 = *(v3 + 32);

  return [v4 _update];
}

void sub_100246CD8(id a1, CUBluetoothDevice *a2, id a3)
{
  v8 = a2;
  v4 = a3;
  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100262298(v8);
  }

  v5 = [SDHeadphoneEngravingRequest alloc];
  v6 = [(CUBluetoothDevice *)v8 addressString];
  v7 = [(SDHeadphoneEngravingRequest *)v5 initWithBluetoothAddress:v6];

  [(SDHeadphoneEngravingRequest *)v7 setCompletion:v4];
  [(SDHeadphoneEngravingRequest *)v7 start];
}

void *sub_10024743C(void *result, uint64_t a2, uint64_t a3)
{
  if (*(result[4] + 808))
  {
    v3 = result;
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_1002622F4(result, a2, a3);
      }
    }

    v4 = v3[4];

    return [v4 _update];
  }

  return result;
}

void *sub_100247528(void *result, uint64_t a2, uint64_t a3)
{
  if (*(result[4] + 808))
  {
    v3 = result;
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_100262310(result, a2, a3);
      }
    }

    v4 = v3[4];
    v5 = *(v4 + 408);
    *(v4 + 408) = 0;

    v6 = v3[4];

    return [v6 _update];
  }

  return result;
}

void *sub_100248EF0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      v4 = [v3 carplayConnected];
      v5 = "off";
      if (v4)
      {
        v5 = "on";
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent _activityMonitorCarPlayStatusChanged:]_block_invoke", 40, "CarPlay changed to %s\n", v5);
      result = *(a1 + 32);
      goto LABEL_9;
    }

    v6 = _LogCategory_Initialize();
    result = *(a1 + 32);
    if (v6)
    {
      v3 = result[101];
      goto LABEL_4;
    }
  }

LABEL_9:

  return [result _update];
}

void *sub_100249040(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 != -1)
    {
LABEL_4:
      v4 = [v3 multipleUsersLoggedIn];
      v5 = "no";
      if (v4)
      {
        v5 = "yes";
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent _activityMonitorMultipleUsersLoggedInChanged:]_block_invoke", 40, "Multiple users logged in changed: %s\n", v5);
      result = *(a1 + 32);
      goto LABEL_9;
    }

    v6 = _LogCategory_Initialize();
    result = *(a1 + 32);
    if (v6)
    {
      v3 = result[101];
      goto LABEL_4;
    }
  }

LABEL_9:

  return [result _update];
}

id sub_1002491A8(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 808))
  {
    v2 = result;
    *(v1 + 44) = *(result + 40);
    [*(result + 4) _enhancedDiscoveryScreenChange:?];
    v3 = v2[4];

    return [v3 _update];
  }

  return result;
}

id sub_100249270(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  result = *(v1 + 808);
  if (result)
  {
    v4 = *(v1 + 56);
    *(*v2 + 56) = [result deviceUIUnlocked];
    if (dword_100973248 <= 40 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100262DF0(v2);
    }

    v5 = *v2;
    if ((v4 & 1) == 0 && *(v5 + 56) == 1)
    {
      *(v5 + 424) = 0;
      v5 = *v2;
    }

    return [v5 _update];
  }

  return result;
}

void *sub_1002493C0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[101];
    }

    LogPrintF(&dword_100973248, "-[SDNearbyAgent _activityMonitorMediaAccessControlSettingChanged:]_block_invoke", 40, "Media access control setting state changed: %d\n", [v3 mediaAccessControlSetting]);
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _update];
}

void *sub_1002494F8(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[101];
  if (!v3)
  {
    return result;
  }

  if (dword_100973248 <= 40)
  {
    if (dword_100973248 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = result[101];
    }

    LogPrintF(&dword_100973248, "-[SDNearbyAgent _activityMonitorWatchWristStateChanged:]_block_invoke", 40, "Watch wrist state changed: %d\n", [v3 pairedWatchWristState]);
    result = *(a1 + 32);
  }

LABEL_7:
  [result _idsMeDeviceChanged];
  v5 = *(a1 + 32);

  return [v5 _update];
}

uint64_t sub_10024965C(uint64_t a1)
{
  v3 = 0;
  [*(a1 + 32) _activityMonitorCurrentLevelAndNeedsPoll:0 recentUserActivity:&v3];
  return (*(*(a1 + 40) + 16))();
}

void sub_1002496C0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100262FE8(v3);
        v3 = v5;
      }
    }
  }
}

void sub_10024973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100263028(a1, a2, a3);
    }
  }

  v4 = *(*(v3 + 32) + 152);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(v3 + 32);
    v7 = *(v6 + 152);
    *(v6 + 152) = 0;
  }

  *(*(v3 + 32) + 112) = 0;
  [*(*(v3 + 32) + 136) invalidate];
  v8 = *(v3 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = 0;
}

void sub_1002498B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (dword_1009731D8 <= 50)
  {
    if (dword_1009731D8 != -1 || (v4 = _LogCategory_Initialize(), v3 = v10, v4))
    {
      sub_100263060(v3);
      v3 = v10;
    }
  }

  v5 = *(a1 + 32);
  if (!v5[20])
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(a1 + 32);
    v8 = *(v7 + 160);
    *(v7 + 160) = v6;

    v3 = v10;
    v5 = *(a1 + 32);
  }

  [v5 _deviceDiscoveryBLEDeviceFound:v3 type:15];
  v9 = [v10 identifier];
  if (v9)
  {
    [*(*(a1 + 32) + 160) setObject:v10 forKeyedSubscript:v9];
  }
}

id sub_10024999C(uint64_t a1, uint64_t a2)
{
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002630A0();
  }

  v4 = *(a1 + 32);

  return [v4 _deviceDiscoveryBLEScanStateChanged:a2 type:15];
}

uint64_t sub_100249B98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100249BB0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([v7 sessionFlags] & 0x100) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

const char *sub_100249C34(int a1)
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

void sub_100249DAC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_1002633D4(v3);
        v3 = v5;
      }
    }
  }
}

void *sub_10024A704(void *result)
{
  if (result[4] == *(result[5] + 224))
  {
    v2 = result;
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002634D4(v2);
    }

    v3 = *(v2[5] + 224);
    if (v3)
    {
      v4 = v3;
      dispatch_source_cancel(v4);
      v5 = v2[5];
      v6 = *(v5 + 224);
      *(v5 + 224) = 0;
    }

    v7 = v2[5];

    return [v7 _update];
  }

  return result;
}

const char *sub_10024ACD4(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "?";
  }

  else
  {
    return off_1008D5CF8[a1];
  }
}

void sub_10024BDE0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263CBC();
        v3 = v5;
      }
    }
  }
}

void sub_10024BE6C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263D70();
        v3 = v5;
      }
    }
  }
}

void sub_10024BEF8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100263E24();
        v3 = v5;
      }
    }
  }
}

void sub_10024BF84(uint64_t a1, void *a2)
{
  v4 = a2;
  if (dword_100973248 <= 50 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263EBC(v4);
  }

  v3 = [v4 identifier];
  if (v3)
  {
    [*(*(a1 + 32) + 240) removeObjectForKey:v3];
  }

  [*(a1 + 32) _deviceDiscoveryBLEDeviceLost:v4 type:16];
}

id sub_10024C038(uint64_t a1, uint64_t a2)
{
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100263EFC();
  }

  v4 = *(a1 + 32);

  return [v4 _deviceDiscoveryBLEScanStateChanged:a2 type:16];
}

id sub_10024C0B0(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 976));
  if (dword_100973248 <= 20 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002640D4();
  }

  v4 = *(a1 + 32);

  return [v4 _deviceDiscoveryBLEScanStateChanged:a2 type:7];
}

void sub_10024C584(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_1002643DC(v3);
        v3 = v5;
      }
    }
  }
}

void *sub_10024C800(void *result, uint64_t a2, uint64_t a3)
{
  if (*(result[4] + 808))
  {
    v3 = result;
    if (dword_100973248 <= 40)
    {
      if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_1002644AC(result, a2, a3);
      }
    }

    v4 = v3[4];

    return [v4 _update];
  }

  return result;
}

void sub_10024CF64(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) deviceFilter];
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_11;
  }

  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [v5 isEqual:v6];

    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264618();
  }

  [*v2 setDeviceFilter:*(a1 + 40)];
LABEL_11:
  v9 = *(a1 + 104);
  if (v9 != [*(a1 + 32) changeFlags])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264658(v2);
    }

    [*v2 setChangeFlags:*(a1 + 104)];
  }

  v10 = [*(a1 + 32) payloadFilterData];
  v11 = *(a1 + 48);
  v12 = v10;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_23;
  }

  if ((v12 != 0) == (v13 == 0))
  {

    goto LABEL_22;
  }

  v15 = [v12 isEqual:v13];

  if ((v15 & 1) == 0)
  {
LABEL_22:
    [*(a1 + 32) setPayloadFilterData:*(a1 + 48) mask:*(a1 + 48)];
  }

LABEL_23:
  v16 = *(a1 + 80);
  if (v16 != [*(a1 + 32) rssiThreshold])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002646B0();
    }

    [*v2 setRssiThreshold:*(a1 + 80)];
  }

  v17 = *(a1 + 108);
  if (v17 != [*(a1 + 32) scanCache])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002646F0(v2);
    }

    [*v2 setScanCache:*(a1 + 108)];
  }

  v18 = *(a1 + 88);
  if (v18 != [*(a1 + 32) scanRate])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264768(v2, (a1 + 88));
    }

    [*v2 setScanRate:*(a1 + 88)];
  }

  v19 = *(a1 + 96);
  if (v19 != [*(a1 + 32) rescanIntervalScreenOff])
  {
    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264954(v2);
    }

    [*v2 setRescanIntervalScreenOff:*(a1 + 96)];
  }

  v20 = [*(a1 + 32) trackedPeers];
  v21 = *(a1 + 56);
  v22 = v20;
  v23 = v21;
  v24 = v23;
  if (v22 == v23)
  {

    goto LABEL_53;
  }

  if ((v22 != 0) != (v23 == 0))
  {
    v25 = [v22 isEqual:v23];

    if (v25)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_1002649AC();
  }

  [*v2 setTrackedPeers:*(a1 + 56)];
LABEL_53:
  v26 = [*(a1 + 32) useCases];
  v27 = *(a1 + 64);
  v32 = v26;
  v28 = v27;
  if (v32 == v28)
  {
  }

  else
  {
    if ((v32 != 0) != (v28 == 0))
    {
      v29 = [v32 isEqual:v28];

      if (v29)
      {
        return;
      }
    }

    else
    {
    }

    if (dword_100973248 <= 10 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_1002649EC(v2, a1, (a1 + 64));
    }

    v30 = *(a1 + 64);
    v31 = *v2;

    [v31 setUseCases:v30];
  }
}

void sub_10024EA30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264AEC(v6);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 976);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024EB24;
    v9[3] = &unk_1008CE028;
    v9[4] = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

id sub_10024EB24(uint64_t a1)
{
  *(*(a1 + 32) + 709) = [*(a1 + 40) isMounted];
  v2 = *(a1 + 32);

  return [v2 _cameraStateChanged];
}

void *sub_10024ED0C(void *result)
{
  v1 = result[4];
  if (*(v1 + 709) != 1)
  {
    return result;
  }

  v2 = *(v1 + 712);
  if (v2 == -1.0)
  {
    return result;
  }

  v3 = result;
  v4 = *(v1 + 816);
  v5 = *(v1 + 712);
  if (v4 == 1)
  {
    v6 = *(v1 + 716);
    if (v6 == -1.0)
    {
      return result;
    }

    v5 = *(v1 + 712);
    if (v6 > v2)
    {
      v5 = *(v1 + 716);
    }
  }

  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1)
    {
LABEL_10:
      if (v4)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      LogPrintF(&dword_100973248, "[SDNearbyAgent _useLuxValue]_block_invoke", 30, "supportsRearLux: %s ALSLux: %f RearLux: %f usingLux: %f\n", v7, v2, *(v1 + 716), v5);
      goto LABEL_15;
    }

    if (_LogCategory_Initialize())
    {
      v1 = v3[4];
      v2 = *(v1 + 712);
      LOBYTE(v4) = *(v1 + 816);
      goto LABEL_10;
    }
  }

LABEL_15:
  v8 = v5 < 0.0;
  if (v5 > 7.0)
  {
    v8 = 1;
  }

  *(v3[4] + 710) = v8;
  v9 = v3[4];

  return [v9 _updateCameraState];
}

void sub_10024F0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10024F0EC(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([v15 isEqualToString:@"RLuxOutput"])
  {
    v6 = v5;
    v7 = [v6 objectForKeyedSubscript:@"status"];
    v8 = [v7 intValue];
    if (v8)
    {
      if (dword_100973248 <= 30)
      {
        v9 = v8;
        if (dword_100973248 != -1 || _LogCategory_Initialize())
        {
          sub_100264C18(v9);
        }
      }
    }

    else
    {
      v13 = [v6 objectForKeyedSubscript:@"lux"];
      [v13 floatValue];
      *(*(a1 + 32) + 716) = v14;
      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100264C58(a1 + 32);
      }

      [*(a1 + 32) _useLuxValue];
    }

    [*(*(a1 + 32) + 312) unregisterNotificationForKey:@"RLuxOutput"];
  }

  else if ([v15 isEqualToString:@"Lux"])
  {
    [v5 floatValue];
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    *(v11 + 712) = v12;
    [*(*v10 + 39) setProperty:&__kCFBooleanFalse forKey:@"ActivateALS"];
    [*(*v10 + 39) unregisterNotificationForKey:@"Lux"];
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264BCC(v10);
    }

    [*v10 _useLuxValue];
  }
}

id sub_10024F378(uint64_t a1)
{
  result = *(*(a1 + 32) + 880);
  if (result != -1)
  {
    state64 = 0;
    result = notify_get_state(result, &state64);
    if (state64 == 3)
    {
      return [*(a1 + 32) _notifyCameraConfigChange];
    }

    else if (state64 == 2)
    {
      return [*(a1 + 32) _checkConditionsForEnhancedDiscovery];
    }

    else if ((state64 & 0xFFFFFFFE) == 4)
    {
      [*(a1 + 32) _discoverySessionStateChange:state64 == 4];
      [*(a1 + 32) _checkConditionsForEnhancedDiscovery];
      return [*(a1 + 32) _cameraStateChanged];
    }
  }

  return result;
}

void sub_10024F7A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264D30(a1);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10024FA80;
    v16[3] = &unk_1008D5740;
    v13 = *(a1 + 40);
    v17 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18 = v14;
    v19 = v15;
    [v13 sendRequestID:@"com.sharing.donState" request:&off_10090FE88 options:0 responseHandler:v16];

    v5 = v17;
    goto LABEL_18;
  }

  if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100264CA4();
  }

  [*(a1 + 40) invalidate];
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) idsDeviceIdentifier];

    if (v4)
    {
      v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 48) + 976));
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10024FA74;
      handler[3] = &unk_1008CE028;
      handler[4] = *(a1 + 48);
      v21 = *(a1 + 32);
      dispatch_source_set_event_handler(v5, handler);
      SFDispatchTimerSet();
      if (!*(*(a1 + 48) + 520))
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = *(a1 + 48);
        v8 = *(v7 + 520);
        *(v7 + 520) = v6;
      }

      v9 = [*(a1 + 32) idsDeviceIdentifier];
      v10 = [*(*(a1 + 48) + 520) objectForKeyedSubscript:v9];

      if (v10)
      {
        v11 = [*(*(a1 + 48) + 520) objectForKeyedSubscript:v9];
        v12 = v11;
        if (v11)
        {
          dispatch_source_cancel(v11);
        }

        [*(*(a1 + 48) + 520) setObject:0 forKeyedSubscript:v9];
      }

      [*(*(a1 + 48) + 520) setObject:v5 forKeyedSubscript:v9];
      dispatch_resume(v5);

LABEL_18:
    }
  }
}

void sub_10024FA80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264D74(a1, v8);
    }

    [*(a1 + 40) invalidate];
  }

  else
  {
    v9 = [*(a1 + 32) idsDeviceIdentifier];
    if (v9)
    {
      if (!*(*(a1 + 48) + 496))
      {
        v10 = objc_alloc_init(NSMutableDictionary);
        v11 = *(a1 + 48);
        v12 = *(v11 + 496);
        *(v11 + 496) = v10;
      }

      v13 = [*(a1 + 32) model];
      [*(*(a1 + 48) + 496) setObject:v13 forKeyedSubscript:v9];
    }

    [*(a1 + 40) invalidate];
  }
}

void sub_10024FCFC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 model];
  if (([v3 containsString:@"Watch"] & 1) == 0)
  {
    v4 = [v13 model];
    if (([v4 containsString:@"iPhone"] & 1) == 0)
    {
      v5 = [v13 model];
      if (([v5 containsString:@"Mac"] & 1) == 0)
      {
        v6 = [v13 model];
        if (([v6 containsString:@"iMac"] & 1) == 0)
        {
          v11 = [v13 model];
          v12 = [v11 containsString:@"iPad"];

          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
  v7 = v13;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (v8 = _LogCategory_Initialize(), v7 = v13, v8))
    {
      sub_100264DE4(v7);
      v7 = v13;
    }
  }

  v9 = [v7 idsDeviceIdentifier];
  v10 = [*(*(a1 + 32) + 496) objectForKey:v9];

  if (!v10)
  {
    [*(a1 + 32) _deliverDonnedEventToDevice:v13 allowRetry:1];
  }

LABEL_15:
}

void sub_10024FEA8(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  if (v3)
  {
    v4 = v3;
    [*(*(a1 + 32) + 496) removeObjectForKey:v3];
    v3 = v4;
  }
}

void sub_10024FF0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264E24(v6);
    }

    [*(*(a1 + 32) + 16) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v3 = v6;
  }
}

void sub_100250028(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(RPCompanionLinkClient);
  [v7 setDispatchQueue:*(*(a1 + 32) + 976)];
  [v7 setUseCase:131100];
  v8 = [v6 containsString:@"Watch"];

  if (v8)
  {
    v9 = 6291712;
  }

  else
  {
    v9 = 0x800000000000CLL;
  }

  [v7 setControlFlags:v9];
  v10 = objc_alloc_init(RPCompanionLinkDevice);
  [v10 setIdentifier:v5];
  [v7 setDestinationDevice:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100250198;
  v14[3] = &unk_1008D5790;
  v15 = v5;
  v16 = v7;
  v17 = *(a1 + 32);
  v18 = v10;
  v11 = v10;
  v12 = v7;
  v13 = v5;
  [v12 activateWithCompletion:v14];
}

void sub_100250198(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973248, "[SDNearbyAgent _deliverDoffedEvent]_block_invoke_2", 90, "### Error activating doffed send client for %@: Error: %@\n", a1[4], v3);
    }

    [a1[5] invalidate];
    if (a1[4])
    {
      [*(a1[6] + 62) removeObjectForKey:?];
    }

    [a1[6] _invalidateActiveDeviceDiscoveryIfNeeded];
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264E64(a1);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100250324;
    v7[3] = &unk_1008D5740;
    v4 = a1[5];
    v8 = a1[4];
    v6 = *(a1 + 5);
    v5 = v6.i64[0];
    v9 = vextq_s8(v6, v6, 8uLL);
    [v4 sendRequestID:@"com.sharing.donState" request:&off_10090FEB0 options:0 responseHandler:v7];
  }
}

void sub_100250324(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent _deliverDoffedEvent]_block_invoke", 90, "### Error sending doffed state to %@. Error: %@\n", *(a1 + 32), v8);
  }

  v9 = [*(*(a1 + 40) + 520) objectForKeyedSubscript:*(a1 + 32)];

  if (v9)
  {
    v10 = [*(*(a1 + 40) + 520) objectForKeyedSubscript:*(a1 + 32)];
    v11 = v10;
    if (v10)
    {
      dispatch_source_cancel(v10);
    }

    [*(*(a1 + 40) + 520) setObject:0 forKeyedSubscript:*(a1 + 32)];
  }

  [*(a1 + 48) invalidate];
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 496) removeObjectForKey:?];
  }

  [*(a1 + 40) _invalidateActiveDeviceDiscoveryIfNeeded];
}

void sub_100250A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100250AB0(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 idsDeviceIdentifier];
  v4 = (a1 + 32);
  if ([*(a1 + 32) containsObject:v3])
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264EE8(v8);
    }

    if ([v8 activityLevel] >= 7)
    {
      v5 = [v8 idsDeviceIdentifier];
      if (v5)
      {
        [*v4 removeObject:v5];
      }

      if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
      {
        sub_100264F28((a1 + 32), v8);
      }

      if (![*v4 count])
      {
        [*(*(a1 + 40) + 848) invalidate];
        v6 = *(a1 + 40);
        v7 = *(v6 + 848);
        *(v6 + 848) = 0;

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }
}

void sub_100250C04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_100973248 <= 90 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264F7C(v3);
    }

    [*(*(a1 + 32) + 848) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 848);
    *(v4 + 848) = 0;
  }

  else
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100264FBC(a1);
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 976));
    v7 = *(a1 + 32);
    v8 = *(v7 + 840);
    *(v7 + 840) = v6;

    v9 = *(a1 + 32);
    v10 = *(v9 + 840);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100250D9C;
    handler[3] = &unk_1008D57E0;
    handler[4] = v9;
    v12 = *(a1 + 40);
    v11 = v12;
    v14 = v12;
    dispatch_source_set_event_handler(v10, handler);
    SFDispatchTimerSet();
    dispatch_resume(*(*(a1 + 32) + 840));
  }
}

void sub_100250D9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 840);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 840);
    *(v4 + 840) = 0;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
    {
      sub_100265004(a1);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [NSUUID alloc];
          v13 = [v12 initWithUUIDString:{v11, v16}];
          [*(*(a1 + 32) + 504) removeObjectForKey:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) _handleDonnedDevicesChanged];
    [*(*(a1 + 32) + 848) invalidate];
    v14 = *(a1 + 32);
    v15 = *(v14 + 848);
    *(v14 + 848) = 0;
  }
}

void sub_100251014(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 _handleDonStateReceivedRequest:a2 withOptions:a3];
  (*(v7 + 2))(v7, 0, 0, 0);
}

void sub_100251094(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_10026504C(v3);
        v3 = v5;
      }
    }
  }
}

void sub_100251218(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _performTemporaryScan];
  objc_sync_exit(obj);
}

void sub_100251EDC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 bluetoothStateChangedHandler];

  if (v4)
  {
    v5 = [v6 bluetoothStateChangedHandler];
    v5[2](v5, *(a1 + 32));
  }
}

void sub_100254884(uint64_t a1)
{
  [*(a1 + 32) _checkConditionsForEnhancedDiscovery];
  v2 = *(*(a1 + 32) + 360);
  if (v2)
  {
    v5 = v2;
    dispatch_source_cancel(v5);
    v3 = *(a1 + 32);
    v4 = *(v3 + 360);
    *(v3 + 360) = 0;
  }
}

void sub_100255448(uint64_t a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = *(*(a1 + 32) + 488);
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v37;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        if (([v10 discoveryFlags] & 0x10) != 0)
        {
          v7 |= [v10 overrideScreenOff];
        }

        if ([v10 discoveryFlags])
        {
          v6 |= [v10 overrideScreenOff];
        }

        if (([v10 discoveryFlags] & 2) != 0)
        {
          v5 |= [v10 overrideScreenOff];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v7) = 0;
  }

  *(*(a1 + 32) + 449) = v7 & 1;
  *(*(a1 + 32) + 465) = v6 & 1;
  *(*(a1 + 32) + 481) = v5 & 1;
  v11 = [*(a1 + 40) discoveryFlags];
  v12 = v11;
  if ((v11 & 0x20) != 0)
  {
    v13 = [*(a1 + 32) idsBluetoothDeviceIDsForSharing];
LABEL_24:
    v14 = v13;
    [*(a1 + 40) setDeviceFilter:v13];

    goto LABEL_25;
  }

  if ((v11 & 0x100000) != 0)
  {
    v13 = [*(a1 + 32) _idsBluetoothDeviceIDsForMe];
    goto LABEL_24;
  }

  if ((v11 & 0x200000) != 0)
  {
    v13 = [*(a1 + 32) _idsBluetoothDeviceIDsForHomePods];
    goto LABEL_24;
  }

  if ((v11 & 0x1000000) != 0)
  {
    [*(a1 + 32) _unlockDeviceFilterChangedForRequest:*(a1 + 40)];
  }

LABEL_25:
  v15 = [*(a1 + 40) deviceFoundHandler];
  if (v15)
  {
  }

  else
  {
    v16 = [*(a1 + 40) deviceLostHandler];

    if (!v16)
    {
LABEL_30:
      v17 = 0;
      goto LABEL_34;
    }
  }

  if ((v12 & 0x10) != 0)
  {
    v18 = 440;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_30;
    }

    v18 = 456;
  }

  v17 = *(*(a1 + 32) + v18);
LABEL_34:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        v25 = [v19 objectForKeyedSubscript:{v24, v32}];
        if (v25)
        {
          v26 = [*(a1 + 40) deviceFilter];
          if (v26 && (v27 = v26, [*(a1 + 40) deviceFilter], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "containsObject:", v24), v28, v27, (v29 & 1) == 0))
          {
            v30 = [*(a1 + 40) deviceLostHandler];
          }

          else
          {
            v30 = [*(a1 + 40) deviceFoundHandler];
          }

          v31 = v30;
          if (v30)
          {
            (*(v30 + 16))(v30, v25);
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  [*(a1 + 32) _update];
}

void sub_100255FA0(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = NSPrintF("Timeout-%@", a1[6]);
  [v1 _deviceDiscoveryFastScanStop:v2 reset:0 reason:v3];
}

void sub_10025680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100256830(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [v7 rapportIdentifier];
  v9 = [v8 isEqual:a1[4]];

  if (v9 && ([v10 isEqual:a1[5]] & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a4 = 1;
  }
}

const char *sub_100256F3C(unsigned int a1)
{
  if (a1 > 0x66)
  {
    return "?";
  }

  else
  {
    return off_1008D6168[a1];
  }
}

id sub_1002577A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_100973248 <= 30)
  {
    if (dword_100973248 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_100265DC4(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _identificationGetIdentities];
}

void sub_1002579A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 976);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100257A84;
  v10[3] = &unk_1008CE158;
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_100257A84(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  if (v2)
  {
    if (dword_100973248 > 90)
    {
      return;
    }

    if (dword_100973248 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v2 = *(a1 + 40);
    }

    LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationGetIdentities]_block_invoke_2", 90, "### Identification get identities failed: %{error}\n", v2);
    return;
  }

  v3 = *(a1 + 48);
  v4 = *(v3 + 992);
  *(v3 + 992) = 0;

  *(*(a1 + 48) + 58) = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = *(a1 + 56);
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v40;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v40 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v39 + 1) + 8 * i);
      if ([v11 type] == 1)
      {
        v12 = *(a1 + 48);
        v13 = *(v12 + 984);
        if (v13)
        {
          v8 = [v13 compareWithRPIdentity:v11];
          v12 = *(a1 + 48);
        }

        else
        {
          v8 = 2048;
        }

        v14 = (v12 + 984);
        goto LABEL_19;
      }

      if ([v11 type] == 14)
      {
        v14 = (*(a1 + 48) + 992);
LABEL_19:
        objc_storeStrong(v14, v11);
        goto LABEL_20;
      }

      if ([v11 type] == 15)
      {
        *(*(a1 + 48) + 58) = 1;
      }

LABEL_20:
      v15 = *(a1 + 48);
      if (*(v15 + 984) && *(v15 + 992))
      {
        goto LABEL_26;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  }

  while (v7);
LABEL_26:

  v16 = *(*(a1 + 48) + 984);
  if (v16)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
        goto LABEL_29;
      }

      if (_LogCategory_Initialize())
      {
        v16 = *(*(a1 + 48) + 984);
LABEL_29:
        LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationGetIdentities]_block_invoke_2", 30, "Self identity: %@, %#{flags}\n", v16, v8, &unk_1007F5508);
      }
    }
  }

  else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265E18();
  }

  v17 = *(*(a1 + 48) + 992);
  if (v17)
  {
    if (dword_100973248 <= 30)
    {
      if (dword_100973248 != -1)
      {
        goto LABEL_40;
      }

      if (_LogCategory_Initialize())
      {
        v17 = *(*(a1 + 48) + 992);
LABEL_40:
        LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationGetIdentities]_block_invoke_2", 30, "Temporary self identity: %@\n", v17);
      }
    }
  }

  else if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265E4C();
  }

  if (v8)
  {
    v18 = *(a1 + 48);
    v19 = *(v18 + 88);
    *(v18 + 88) = 0;

    v20 = *(a1 + 48);
    v21 = *(v20 + 960);
    *(v20 + 960) = 0;

    v22 = *(a1 + 48);
    v23 = *(v22 + 128);
    *(v22 + 128) = 0;
  }

  v24 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v25 = *(a1 + 56);
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v35 + 1) + 8 * j);
        if ([v30 type] != 1 && objc_msgSend(v30, "type") != 14)
        {
          [v24 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v27);
  }

  v31 = [v24 copy];
  v32 = *(a1 + 48);
  v33 = *(v32 + 904);
  *(v32 + 904) = v31;

  if (dword_100973248 <= 30 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    sub_100265E80((a1 + 56));
  }

  [*(a1 + 48) _identificationReIdentify];
  [*(a1 + 48) _identificationCheckFlagsAndACL];
  [*(a1 + 48) _update];
  v34 = +[NSNotificationCenter defaultCenter];
  [v34 postNotificationName:off_1009731D0 object:0];
}

void sub_1002589E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 discoveryFlags];
  v5 = (v4 & ~*(a1 + 32));
  if (v5 != v4)
  {
    [v6 setDiscoveryFlags:v5];
    if (!v5)
    {
      [v6 setLastUpdateTicks:mach_absolute_time()];
    }
  }
}

void sub_10025AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 64), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10025AA68(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[NSUUID alloc] initWithUUIDString:*(*(&v9 + 1) + 8 * v7)];
        if (v8)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10025C9D4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [v10 serviceType] == *(a1 + 48);
  v7 = v10;
  if (v6)
  {
    v8 = [v10 receivedFramePeerHandler];

    if (v8)
    {
      v9 = [v10 receivedFramePeerHandler];
      v9[2](v9, *(a1 + 49), *(a1 + 32), *(a1 + 40));
    }

    *a4 = 1;
    v7 = v10;
  }
}

void sub_10025D290(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  v6 = [v13 serviceType] == *(a1 + 48);
  v7 = v13;
  if (v6)
  {
    v8 = [v13 peerDevice];
    v9 = [v8 identifier];
    v10 = [v9 isEqual:*(a1 + 32)];

    v7 = v13;
    if (v10)
    {
      v11 = [v13 receivedFrameHandler];

      if (v11)
      {
        v12 = [v13 receivedFrameHandler];
        v12[2](v12, *(a1 + 49), *(a1 + 40));
      }

      *a4 = 1;
      v7 = v13;
    }
  }
}

void sub_10025D654(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 90)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_10026662C();
        v3 = v5;
      }
    }
  }
}

void sub_10025E0F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_100973248 <= 20)
  {
    v5 = v2;
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1002668EC();
      v3 = v5;
    }
  }
}

void sub_10025E17C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_100973248 <= 20)
  {
    v5 = v2;
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_100266938();
      v3 = v5;
    }
  }
}

void sub_10025FD1C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([v8 serviceType] == 9)
  {
    v6 = [v8 receivedFramePeerHandler];

    if (v6)
    {
      v7 = [v8 receivedFramePeerHandler];
      v7[2](v7, 7, *(a1 + 32), *(a1 + 40));

      *a4 = 1;
    }
  }
}

id sub_10025FE34(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 488);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 discoveryFlags] & 0x1000000) != 0)
        {
          [*(a1 + 32) _unlockDeviceFilterChangedForRequest:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _update];
}

_DWORD *sub_1002602CC(_DWORD *result)
{
  v1 = result;
  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_100266FB8(v1);
    }
  }

  v2 = v1[11];
  if ((v2 & 1) != 0 && (v3 = *(v1 + 4), (v1[10] & 1) != *(v3 + 858)))
  {
    *(v3 + 858) = v1[10] & 1;
    v4 = 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(v1 + 4);
  if (((v1[10] >> 1) & 1) != *(v5 + 860))
  {
    *(v5 + 860) = (v1[10] & 2) != 0;
    v4 = 1;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(v1 + 4);
    if (((v1[10] >> 2) & 1) != *(v6 + 857))
    {
      *(v6 + 857) = (v1[10] & 4) != 0;
      v4 = 1;
    }
  }

  if ((v2 & 8) != 0)
  {
    v7 = *(v1 + 4);
    if (((v1[10] >> 3) & 1) != *(v7 + 861))
    {
      *(v7 + 861) = (v1[10] & 8) != 0;
      v4 = 1;
    }
  }

  if ((v2 & 0x10) != 0)
  {
    v8 = *(v1 + 4);
    if (((v1[10] >> 4) & 1) != *(v8 + 856))
    {
      *(v8 + 856) = (v1[10] & 0x10) != 0;
      v4 = 1;
    }
  }

  if ((v2 & 0x20) != 0 && (v9 = *(v1 + 4), ((v1[10] >> 5) & 1) != *(v9 + 859)))
  {
    *(v9 + 859) = (v1[10] & 0x20) != 0;
  }

  else if (!v4)
  {
    return result;
  }

  v10 = *(v1 + 4);

  return [v10 _update];
}

void sub_1002605FC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v2 = *(a1 + 32);
  v3 = [NSData dataWithBytes:&Current length:8];
  [v2 sendUnlockData:v3 toBLEDevice:*(a1 + 40) completion:&stru_1008D5950];
}

void sub_100260670(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_100973248 <= 50)
  {
    v5 = v2;
    if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_10026703C(v3);
      v3 = v5;
    }
  }
}

void sub_1002606E8(uint64_t a1)
{
  v2 = [*(a1 + 32) stopUnlockBLEConnectionWithDevice:*(a1 + 40)];
  v5 = *(*(a1 + 32) + 872);
  if (v5)
  {
    v6 = v5;
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 872);
    *(v7 + 872) = 0;
  }

  if (dword_100973248 <= 50)
  {
    if (dword_100973248 != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      sub_10026708C(v2, v3, v4);
    }
  }
}

void sub_100260D94(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100973248 <= 60)
    {
      v5 = v2;
      if (dword_100973248 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
      {
        sub_100267134(v3);
        v3 = v5;
      }
    }
  }
}

Class sub_100261548(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A448)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100261674;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D5990;
    v5 = 0;
    qword_10098A448 = _sl_dlopen();
  }

  if (!qword_10098A448)
  {
    sub_1002671F0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SSAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100267174();
  }

  qword_10098A440 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100261674(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A448 = result;
  return result;
}

Class sub_1002616E8(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A458)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100261814;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D59A8;
    v5 = 0;
    qword_10098A458 = _sl_dlopen();
  }

  if (!qword_10098A458)
  {
    sub_1002672EC(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100267270();
  }

  qword_10098A450 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100261814(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A458 = result;
  return result;
}

Class sub_100261888(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A468)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1002619B4;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D59C0;
    v5 = 0;
    qword_10098A468 = _sl_dlopen();
  }

  if (!qword_10098A468)
  {
    sub_1002673E8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BrightnessSystemClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10026736C();
  }

  qword_10098A460 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1002619B4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A468 = result;
  return result;
}

Class sub_100261A28(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A478)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100261B54;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D59D8;
    v5 = 0;
    qword_10098A478 = _sl_dlopen();
  }

  if (!qword_10098A478)
  {
    sub_1002674E4(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ANAnnounce");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100267468();
  }

  qword_10098A470 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100261B54(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10098A478 = result;
  return result;
}

uint64_t sub_100261F80(void *a1)
{
  [a1 BOOLForKey:@"hasDoneGenuineDeviceCheck"];
  sub_100261BD8();
  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefillDefaultsForGenuineCheckIfNecessary]", 30, "GenuineCheckOnLaunch: hasDoneGenuineDeviceCheck %@");
}

uint64_t sub_1002620DC(void *a1)
{
  [a1 BOOLForKey:@"hasDoneGenuineDeviceCheck"];
  sub_100261BD8();
  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefillDefaultsForGenuineCheckIfNecessary]", 30, "GenuineCheckOnLaunch: finished genuine check %@");
}

uint64_t sub_10026232C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "BT Pipe enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100262384()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Coordinated Alerts enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_1002623DC()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Coordinated Alerts phone calls: %s -> %s\n", v2, v0);
}

uint64_t sub_100262434()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Coordinated Alerts phone calls only ring donned device: %s -> %s\n", v2, v0);
}

uint64_t sub_10026248C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Coordinated Alerts scan if very active: %s -> %s\n", v2, v0);
}

uint64_t sub_1002624E4()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Coordinated Alerts scan if has visionOS 1.X device(s): %s -> %s\n", v2, v0);
}

uint64_t sub_10026253C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Coordinated Alerts single device: %s -> %s\n", v2, v0);
}

uint64_t sub_100262594()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Identification enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_1002625EC()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Ignore watch wrist lock state: %s -> %s\n", v2, v0);
}

uint64_t sub_100262644()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyAction advertise disabled: %s -> %s\n", v2, v0);
}

uint64_t sub_10026269C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyAction RSSI log: %s -> %s\n", v2, v0);
}

uint64_t sub_1002626F4()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyAction scan always: %s -> %s\n", v2, v0);
}

uint64_t sub_10026274C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyAction scan never: %s -> %s\n", v2, v0);
}

uint64_t sub_1002627A4()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyInfo advertise always: %s -> %s\n", v2, v0);
}

uint64_t sub_1002627FC()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyInfo advertise disabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100262854()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyInfo RSSI log: %s -> %s\n", v2, v0);
}

uint64_t sub_1002628AC()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "NearbyInfo WiFiP2P: %s -> %s\n", v2, v0);
}

uint64_t sub_100262904()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "ContactHashes: %s -> %s\n", v2, v0);
}

uint64_t sub_10026295C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Log ProxPairing advertisement fields: %s -> %s\n", v2, v0);
}

uint64_t sub_1002629B4()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Proximity Enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100262A4C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Proximity RSSI log: %s -> %s\n", v2, v0);
}

uint64_t sub_100262AA4()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "ShareAudio enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100262AFC()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "HomePod identifying as B520: %s -> %s\n", v2, v0);
}

uint64_t sub_100262B54()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "HomePod identifying as B620: %s -> %s\n", v2, v0);
}

uint64_t sub_100262BAC()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "RIClient is enabled: %s -> %s\n", v2, v0);
}

uint64_t sub_100262C04()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Simulate don state changes: %s -> %s\n", v2, v0);
}

uint64_t sub_100262C5C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Assume screen off for Wombat: %s -> %s\n", v2, v0);
}

uint64_t sub_100262CB4()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Assume locked for Wombat: %s -> %s\n", v2, v0);
}

uint64_t sub_100262D0C()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Assume mounted for Wombat: %s -> %s\n", v2, v0);
}

uint64_t sub_100262D64()
{
  sub_100019C60();
  if (v3)
  {
    v0 = v1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent prefsChanged]", 40, "Assume not in pocket for Wombat: %s -> %s\n", v2, v0);
}

uint64_t sub_100262DF0(uint64_t a1)
{
  if (*(*a1 + 56))
  {
    v1 = "unlocked";
  }

  else
  {
    v1 = "locked";
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent _activityMonitorUILockStatusChanged:]_block_invoke", 40, "UI lock status changed to %s\n", v1);
}

void sub_100262E50(void *a1, uint64_t a2)
{
  v3 = [a1 targetAuthTag];
  LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyActionAdvertiserEnsureStarted]", 40, "Avoid setting target auth tag as there is more than one to set {%@, %@}", a2, v3);
}

uint64_t sub_100263248(int a1, char a2, uint64_t a3, id *a4)
{
  if (a1)
  {
    switch(a1)
    {
      case 10:
        v4 = "Off";
        break;
      case 20:
        v4 = "NotConnected";
        break;
      case 30:
        v4 = "Connecting";
        break;
      case 40:
        v4 = "Connected";
        break;
      default:
        v4 = "?";
        break;
    }
  }

  else
  {
    v4 = "Unknown";
  }

  if (a2)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (*(a3 + 176))
  {
    v6 = "on";
  }

  else
  {
    v6 = "off";
  }

  if ([*a4 manateeAvailable])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoAdvertiserUpdate]", 30, "WiFiP2P bit is not set, WiFi state: %s, hostAP: %@, NearbyAction scan: %s, Manatee: %@\n", v4, v5, v6, v7);
}

uint64_t sub_100263518(char a1, unsigned __int8 a2, void *a3, uint64_t a4)
{
  if ((a1 - 5) > 0x3Cu)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1008D5B10[(a1 - 5)];
  }

  v7 = sub_100249C34(a2);
  return LogPrintF(&dword_100973248, "-[SDNearbyAgent _bleNearbyInfoReceivedData:cnx:peer:]", 20, "BLE NearbyInfo frame %s, %s, %ld bytes, peer %@\n", v6, v7, [a3 length] - 2, a4);
}

uint64_t sub_1002635B8(unsigned __int8 a1, _DWORD *a2)
{
  if (dword_100973248 > 50)
  {
    return 1;
  }

  if (dword_100973248 != -1 || _LogCategory_Initialize())
  {
    v4 = sub_10024ACD4(a1);
    LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoReceivedData:cnx:peer:]", 50, "### BLE NearbyInfo frame %s, no service type\n", v4);
  }

  result = 0;
  *a2 = -6750;
  return result;
}

uint64_t sub_10026379C()
{
  if (dword_100973248 > 50)
  {
    return 1;
  }

  sub_100008A18();
  if (v2 != -1 || _LogCategory_Initialize())
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoReceivedData:cnx:peer:]", 50, "### BLE NearbyInfo frame no type (%tu bytes)\n", v1);
  }

  result = 0;
  *v0 = -6750;
  return result;
}

uint64_t sub_100263830(uint64_t result)
{
  if (dword_100973248 <= 50)
  {
    v1 = result;
    if (dword_100973248 != -1)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoReceivedData:cnx:peer:]", 50, "### BLE NearbyInfo frame error: %#m\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleNearbyInfoReceivedData:cnx:peer:]", 50, "### BLE NearbyInfo frame error: %#m\n", v1);
    }
  }

  return result;
}

void sub_100263A2C(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LogPrintF(&dword_100973248, "[SDNearbyAgent bleNearbyInfoStartConnectionToDevice:owner:connected:]", 30, "Reusing BLE connection for %@\n", v2);
}

void sub_100263A8C(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LogPrintF(&dword_100973248, "[SDNearbyAgent bleNearbyInfoStartConnectionToDevice:owner:connected:]", 30, "Creating BLE connection for %@\n", v2);
}

void sub_100263AEC(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LogPrintF(&dword_100973248, "[SDNearbyAgent bleNearbyInfoStopConnectionToDevice:owner:]", 30, "Invalidating BLE connection for %@\n", v2);
}

uint64_t sub_100263B8C(unsigned __int8 a1, unsigned __int8 a2, void *a3, uint64_t a4)
{
  v7 = sub_10024ACD4(a1);
  v8 = sub_100249C34(a2);
  return LogPrintF(&dword_100973248, "-[SDNearbyAgent bleNearbyInfoSendFrameType:serviceType:data:peer:isSession:]", 60, "### BLE Nearby send frame type %s, service %s, %ld bytes, unknown peer %@\n", v7, v8, [a3 length], a4);
}

uint64_t sub_100263C0C(uint64_t result, void *a2, uint64_t a3, _DWORD *a4)
{
  if (dword_100973248 <= 60)
  {
    v7 = result;
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      v8 = sub_10024ACD4(v7);
      result = LogPrintF(&dword_100973248, "-[SDNearbyAgent bleNearbyInfoSendFrameType:serviceType:data:peer:isSession:]", 60, "### BLE Nearby send frame type %s, invalid service 0x%X, %ld bytes, peer %@\n", v8, 0, [a2 length], a3);
    }
  }

  *a4 = -6705;
  return result;
}

uint64_t sub_100263CBC()
{
  sub_100008A18();
  v3 = *(v2 + 56);
  if (v3 > 0x41)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1008D5CF8[v3];
  }

  v5 = *(v1 + 57);
  v6 = sub_100249C34(*(v1 + 58));
  return LogPrintF(&dword_100973248, "-[SDNearbyAgent bleNearbyInfoSendFrameType:serviceType:data:peer:isSession:]_block_invoke", 90, "### BLE Nearby send frame type %s, fragment %u, service %s, %ld of %ld bytes, peer %@ failed: %@\n", v4, v5, v6, [*(v1 + 32) length], objc_msgSend(*(v1 + 40), "length"), *(v1 + 48), v0);
}

uint64_t sub_100263D70()
{
  sub_100008A18();
  v3 = *(v2 + 56);
  if (v3 > 0x41)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1008D5CF8[v3];
  }

  v5 = *(v1 + 57);
  v6 = sub_100249C34(*(v1 + 58));
  return LogPrintF(&dword_100973248, "-[SDNearbyAgent bleNearbyInfoSendFrameType:serviceType:data:peer:isSession:]_block_invoke_2", 90, "### BLE Nearby send frame type %s, last fragment %u, service %s, %ld of %ld bytes, peer %@ failed: %@\n", v4, v5, v6, [*(v1 + 32) length], objc_msgSend(*(v1 + 40), "length"), *(v1 + 48), v0);
}

uint64_t sub_100263E24()
{
  sub_100008A18();
  v3 = *(v2 + 48);
  if (v3 > 0x41)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1008D5CF8[v3];
  }

  v5 = sub_100249C34(*(v1 + 49));
  return LogPrintF(&dword_100973248, "-[SDNearbyAgent bleNearbyInfoSendFrameType:serviceType:data:peer:isSession:]_block_invoke_3", 90, "### BLE Nearby send frame type %s, service %s, %ld bytes, peer %@ failed: %@\n", v4, v5, [*(v1 + 32) length], *(v1 + 40), v0);
}

void sub_100263F9C(void *a1, const char *a2)
{
  objc_msgSend_advertisementFields(a1, a2);
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_1009731D8, "[SDNearbyAgent _bleProximityPairingScannerEnsureStarted]_block_invoke", 30, "BLE Prox found %@\n%@\n");
}

void sub_100264004(void *a1, const char *a2)
{
  objc_msgSend_advertisementFields(a1, a2);
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_1009731D8, "[SDNearbyAgent _bleProximityPairingScannerEnsureStarted]_block_invoke_2", 30, "BLE Prox lost %@\n%@\n");
}

void sub_10026406C(void *a1, const char *a2)
{
  objc_msgSend_advertisementFields(a1, a2);
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_1009731D8, "[SDNearbyAgent _bleProximityPairingScannerEnsureStarted]_block_invoke_3", 30, "BLE Prox changed %@\n%@\n");
}

void sub_1002641C8(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100973248, "[SDNearbyAgent _btPipeHandleFrameType:data:]", 60, "Received message from unexpected device with BT UUID %@. Expected: %@");
}

void *sub_100264290(void *result)
{
  if (dword_100973248 <= 60)
  {
    v1 = result;
    if (dword_100973248 != -1)
    {
      return LogPrintF(&dword_100973248, "-[SDNearbyAgent _btPipeHandleFrameType:data:]", 60, "### Ping response too small: %ld bytes\n", [v1 length]);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_100973248, "-[SDNearbyAgent _btPipeHandleFrameType:data:]", 60, "### Ping response too small: %ld bytes\n", [v1 length]);
    }
  }

  return result;
}

void *sub_100264358(void *result)
{
  if (dword_100973248 <= 60)
  {
    v1 = result;
    if (dword_100973248 != -1)
    {
      return LogPrintF(&dword_100973248, "-[SDNearbyAgent _btPipeHandleFrameType:data:]", 60, "### Ping request too small: %ld bytes\n", [v1 length]);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_100973248, "-[SDNearbyAgent _btPipeHandleFrameType:data:]", 60, "### Ping request too small: %ld bytes\n", [v1 length]);
    }
  }

  return result;
}

uint64_t sub_100264438(uint64_t a1)
{
  [*(a1 + 808) wirelessCritical];
  sub_100261BD8();
  return LogPrintF(&dword_100973248, "[SDNearbyAgent _wirelessCriticalChanged:]", 30, "wirelessCriticalChanged notification, wifiCritical=%@");
}

uint64_t sub_1002644C8(void *a1)
{
  if ([a1 length] == 6)
  {
    v2 = [a1 bytes];
  }

  else
  {
    v2 = 0;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleAdvertisingAddressChanged]", 30, "BLE address changed: %.6a\n", *&v2);
}

uint64_t sub_100264534(void *a1)
{
  if ([a1 length] == 6)
  {
    v2 = [a1 bytes];
  }

  else
  {
    v2 = 0;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleAdvertisingAddressChanged]", 30, "BLE address unchanged: %.6a\n", *&v2);
}

uint64_t sub_1002645A0(uint64_t result, uint64_t a2)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleUpdateAuthTagIfNeeded]", 90, "### Generate BLE Auth Tag failed: %{error}\n", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleUpdateAuthTagIfNeeded]", 90, "### Generate BLE Auth Tag failed: %{error}\n", a2);
    }
  }

  return result;
}

uint64_t sub_1002646F0(uint64_t a1)
{
  v3 = [sub_100023FC4(a1) scanCache];
  v4 = @"NO";
  if (v3)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (*v1)
  {
    v4 = @"YES";
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleUpdateScanner:typeFlag:]_block_invoke", 10, "Updating BLEScanner %p scanCache from %@ to %@", v2, v5, v4);
}

uint64_t sub_100264768(id *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = [*a1 scanRate];
  v5 = "Invalid";
  switch(v4)
  {
    case 0uLL:
      break;
    case 1uLL:
      v5 = "BackgroundOld";
      break;
    case 2uLL:
      v5 = "NormalOld";
      break;
    case 3uLL:
      v5 = "HighOld";
      break;
    case 4uLL:
      v5 = "AggressiveOld";
      break;
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
      goto LABEL_8;
    case 0xAuLL:
      v5 = "Background";
      break;
    default:
      if (v4 == 20)
      {
        v5 = "Normal";
      }

      else if (v4 == 30)
      {
        v5 = "HighNormal";
      }

      else if (v4 == 40)
      {
        v5 = "High";
      }

      else if (v4 == 50)
      {
        v5 = "Aggressive";
      }

      else
      {
LABEL_8:
        v5 = "?";
      }

      break;
  }

  v6 = *a2;
  v7 = "Invalid";
  switch(*a2)
  {
    case 0:
      return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleUpdateScanner:typeFlag:]_block_invoke", 10, "Updating BLEScanner %p scanRate from %s to %s", v3, v5, v7);
    case 1:
      v7 = "BackgroundOld";
      break;
    case 2:
      v7 = "NormalOld";
      break;
    case 3:
      v7 = "HighOld";
      break;
    case 4:
      v7 = "AggressiveOld";
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      goto LABEL_23;
    case 10:
      v7 = "Background";
      break;
    default:
      switch(v6)
      {
        case 20:
          v7 = "Normal";
          break;
        case 30:
          v7 = "HighNormal";
          break;
        case 40:
          v7 = "High";
          break;
        case 50:
          v7 = "Aggressive";
          break;
        default:
LABEL_23:
          v7 = "?";
          break;
      }

      break;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent _bleUpdateScanner:typeFlag:]_block_invoke", 10, "Updating BLEScanner %p scanRate from %s to %s", v3, v5, v7);
}

void sub_1002649EC(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a2 + 72) _useCasesToHexString:*a3];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100973248, "[SDNearbyAgent _bleUpdateScanner:typeFlag:]_block_invoke", 10, "Updating BLEScanner %p useCases to (%@)");
}

void sub_100264CA4()
{
  sub_100008A18();
  v3 = [*(v2 + 32) idsDeviceIdentifier];
  if (*(v1 + 56))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  v5 = v3;
  LogPrintF(&dword_100973248, "[SDNearbyAgent _deliverDonnedEventToDevice:allowRetry:]_block_invoke", 90, "### Error activating donned send client for %@. Error: %@, Retry allowed: %s.\n", v3, v0, v4);
}

void sub_100264D74(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) idsDeviceIdentifier];
  LogPrintF(&dword_100973248, "[SDNearbyAgent _deliverDonnedEventToDevice:allowRetry:]_block_invoke", 90, "### Error sending donned state to %@. Error: %@\n", v3, a2);
}

uint64_t sub_10026516C(uint64_t result)
{
  if (dword_100973248 <= 60)
  {
    v1 = result;
    if (dword_100973248 != -1)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent nearby:didConnectToPeer:transport:error:]", 60, "### DidConnect with NULL peer, error %@\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent nearby:didConnectToPeer:transport:error:]", 60, "### DidConnect with NULL peer, error %@\n", v1);
    }
  }

  return result;
}

uint64_t sub_1002652BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C(&dword_100973248, "[SDNearbyAgent nearby:didReceiveData:fromPeer:]", a3, "### DidReceiveData with NULL peer\n");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C(&dword_100973248, "[SDNearbyAgent nearby:didReceiveData:fromPeer:]", a3, "### DidReceiveData with NULL peer\n");
    }
  }

  return result;
}

uint64_t sub_100265314(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1008D5FC0[a1];
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent nearbyDidUpdateState:]", 40, "Bluetooth state updated: %s\n", v1);
}

uint64_t sub_1002653E4(char a1, unsigned __int8 a2, char a3, char a4)
{
  if (a1)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  v8 = sub_1002453D0(a2);
  if (a3)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (a4)
  {
    v10 = "no";
  }

  else
  {
    v10 = "yes";
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestStart:]", 50, "CoordinatedAlert: Phone call, eligible-to-scan: %s, activity level: 0x%02X (%s), visionOS devices on account: %s, connected to headphones: %s\n", v7, a2, v8, v9, v10);
}

uint64_t sub_100265528(void *a1, uint64_t a2)
{
  v3 = [a1 type];
  if (v3 > 6)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1008D5FF0[v3];
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent coordinatedAlertRequestFinish:]", 50, "CoordinatedAlert finish: device %@ ignored because its %s is disabled\n", a2, v4);
}

uint64_t sub_1002657B0(char a1, uint64_t a2, double a3)
{
  v3 = a3 / 86400.0;
  v4 = "disable";
  if (a1)
  {
    v4 = "enable";
  }
}

void sub_1002659F8()
{
  sub_100008A18();
  v5 = [v2 useCases];
  v3 = [v5 count];
  v4 = [v1 useCases];
  LogPrintF(&dword_100973248, "[SDNearbyAgent deviceDiscoveryTriggerEnhancedDiscovery:reason:useCase:]", 10, "Incoming enhanced discovery trigger for reason '%@' with %ld use cases: %@\n", v0, v3, v4);
}

void sub_100265AA8(void *a1)
{
  [a1 bleDevice];
  objc_claimAutoreleasedReturnValue();
  sub_10002A82C();
  LogPrintF(&dword_100973248, "[SDNearbyAgent _deviceDiscoveryFastScanStart:device:reason:]", 50, "Fast scan rate start '%@' for %@\n");
}

void sub_100266008(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 identifier];
  mach_absolute_time();
  v5 = UpTicksToMicroseconds();
  LogPrintF(&dword_100973248, "[SDNearbyAgent _identificationIdentifyDevice:sfDevice:]", 30, "Identification identified device %@ -> %@, %llu mus\n", v4, a3, v5);
}

void sub_1002662B4()
{
  if (dword_100973248 <= 60 && (dword_100973248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973248, "[SDNearbyAgent serviceStop:]", 60, "### Service stop failed: %#m\n", 4294960551);
  }
}

void sub_100266328(void *a1, void *a2)
{
  v14 = [a1 identifier];
  v3 = [a2 identifier];
  sub_100261BFC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_100973248, "[SDNearbyAgent serviceSendRequest:service:]", 60, "### Completing error response for service request %@ for service %@\n");
}

void sub_1002663A4(void *a1, uint64_t a2)
{
  v3 = [a1 serviceUUID];
  LogPrintF(&dword_100973248, "[SDNearbyAgent sessionStart:]", 30, "Session start: service %@, %@\n", v3, a2);
}

void sub_100266688(void *a1, void *a2)
{
  v14 = [a1 identifier];
  v3 = [a2 identifier];
  sub_100261BFC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF(&dword_100973248, "[SDNearbyAgent sessionSendRequest:session:]", 60, "### Completing error response for request %@ for session %@\n");
}

_DWORD *sub_100266744(_DWORD *result, uint64_t a2, void *a3)
{
  *result = -6708;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_100973248, "[SDNearbyAgent _sendMessage:frameType:service:session:]", 60, "### Send message no connection\n");
    }
  }

  *a3 = a2;
  return result;
}

_DWORD *sub_1002667C4(_DWORD *result)
{
  *result = -6708;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent _sendMessage:frameType:service:session:]", 60, "### Send message no connection\n", v1, v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_100973248, "[SDNearbyAgent _sendMessage:frameType:service:session:]", 60, "### Send message no connection\n", v1, v2);
    }
  }

  return result;
}

void sub_100266984(void *a1, uint64_t a2)
{
  v4 = [a1 peerDevice];
  v3 = [v4 identifier];
  LogPrintF(&dword_100973248, "[SDNearbyAgent _setupHandleCreateSession:data:]", 50, "BLE SetupCreateSession received from %@: %'.32@\n", v3, a2);
}

void sub_100266A40(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v6 = [a2 peerDevice];
  v5 = [v6 identifier];
  LogPrintF(&dword_100973248, "[SDNearbyAgent _setupHandleSessionEncryptedFrame:type:cnx:]", 30, "BLE SetupEMsg type 0x%02X received from %@: %'.32@\n", a1, v5, a3);
}

void sub_100266B14(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v5 = [a2 peerDevice];
  v6 = [v5 identifier];
  LogPrintF(&dword_100973248, "[SDNearbyAgent _setupHandleSessionEncryptedFrame:type:cnx:]", 60, "### BLE SetupEMsg type 0x%02X received from %@ failed: %#m\n", a1, v6, a3);
}

_DWORD *sub_100266C98(_DWORD *result)
{
  v1 = result;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_100973248, "[SDNearbyAgent _setupSendCreateSession:cnx:]", 60, "### BLE SetupSendCreateSession failed: %#m\n", 4294960591);
    }
  }

  *v1 = -6705;
  return result;
}

void sub_100266D60(void *a1)
{
  v1 = [a1 sendDataQueue];
  LogPrintF(&dword_100973248, "-[SDNearbyAgent _setupSendData:sessionIdentifier:cnx:clientSession:]", 30, "BLE SetupSendMsg queuing data until session created (%ld)\n", [v1 count]);
}

_DWORD *sub_100266DC4(_DWORD *result)
{
  v1 = result;
  if (dword_100973248 <= 60)
  {
    if (dword_100973248 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_100973248, "[SDNearbyAgent _setupSendData:sessionIdentifier:cnx:clientSession:]", 60, "### BLE SetupSendMsg no setup session after re-create?\n");
    }
  }

  *v1 = -6762;
  return result;
}

uint64_t sub_10026703C(const __CFString *a1)
{
  v1 = @"success";
  if (a1)
  {
    v1 = a1;
  }

  return LogPrintF(&dword_100973248, "[SDNearbyAgent unlockStartTestClientWithDevice:]_block_invoke_2", 50, "Unlock test send: %@\n", v1);
}

void sub_100267174()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getSSAccountStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:89 description:{@"Unable to find class %s", "SSAccountStore"}];

  __break(1u);
}

void sub_1002671F0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *StoreServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:87 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100267270()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getAKAccountManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:82 description:{@"Unable to find class %s", "AKAccountManager"}];

  __break(1u);
}

void sub_1002672EC(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AuthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:80 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10026736C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getBrightnessSystemClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:97 description:{@"Unable to find class %s", "BrightnessSystemClient"}];

  __break(1u);
}

void sub_1002673E8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CoreBrightnessLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:96 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100267468()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getANAnnounceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyAgent.m" lineNumber:112 description:{@"Unable to find class %s", "ANAnnounce"}];

  __break(1u);
}

void sub_1002674E4(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AnnounceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyAgent.m" lineNumber:110 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100267564(void *a1)
{
  v1 = a1;
  v12 = 0;
  if (v1)
  {
    if (dword_100973320 <= 30 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268E6C(v1);
    }

    v4 = sub_100268868(v1, &v12);
    v2 = v4;
    if (v12)
    {
      v3 = 0;
    }

    else
    {
      v3 = [v4 username];
      if (v3)
      {
        pthread_mutex_lock(&stru_100973390);
        [qword_10098A480 removeObjectForKey:v3];
        pthread_mutex_unlock(&stru_100973390);
        if (dword_100973320 <= 30 && (dword_100973320 != -1 || _LogCategory_Initialize()))
        {
          sub_100268EAC(v1);
        }

        v5 = [v2 accountStore];
        v11 = 0;
        [v5 setCredential:0 forAccount:v2 serviceID:@"com.apple.gs.authagent.auth" error:&v11];
        v6 = v11;

        if (v6 && dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100973320, "void SDAppleIDClearGSTokenCache(NSString * _Nullable __strong)", 90, "### Remove Account token cache entry for %{mask} failed: %@\n", v1, v6);
        }

        v7 = [v2 accountStore];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100267854;
        v9[3] = &unk_1008CE090;
        v3 = v3;
        v10 = v3;
        [v7 saveAccount:v2 withCompletionHandler:v9];
      }

      else
      {
        v12 = 201201;
      }
    }

    v8 = v12;
    if (v12 && dword_100973320 <= 90)
    {
      if (dword_100973320 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v8 = v12;
      }

      LogPrintF(&dword_100973320, "void SDAppleIDClearGSTokenCache(NSString * _Nullable __strong)", 90, "### Remove GS token cache entry failed: %d\n", v8);
    }
  }

  else
  {
    if (dword_100973320 <= 30 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268EEC();
    }

    pthread_mutex_lock(&stru_100973390);
    [qword_10098A480 removeAllObjects];
    pthread_mutex_unlock(&stru_100973390);
    v2 = 0;
    v3 = 0;
    v12 = 0;
  }

LABEL_6:
}

void sub_100267854(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (dword_100973320 <= 30)
    {
      v9 = v5;
      if (dword_100973320 != -1 || (v7 = _LogCategory_Initialize(), v6 = v9, v7))
      {
        sub_100268F0C(a1);
LABEL_9:
        v6 = v9;
      }
    }
  }

  else if (dword_100973320 <= 90)
  {
    v9 = v5;
    if (dword_100973320 != -1 || (v8 = _LogCategory_Initialize(), v6 = v9, v8))
    {
      LogPrintF(&dword_100973320, "void SDAppleIDClearGSTokenCache(NSString * _Nullable __strong)_block_invoke", 90, "### Save Account %@ for token remove failed: %@\n", *(a1 + 32), v6);
      goto LABEL_9;
    }
  }
}

void sub_100267938(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  v9 = v8;
  v54[0] = 0;
  v36 = v6;
  v37 = v5;
  if (!v5)
  {
    v34 = 0;
    v35 = 0;
    v20 = 0;
    v19 = 0;
    v11 = 0;
    v18 = 0;
    v33 = 4294960591;
LABEL_50:
    v54[0] = v33;
    goto LABEL_51;
  }

  if (!v7)
  {
    v35 = 0;
    v18 = 0;
    v11 = 0;
    v19 = 0;
    v17 = 0;
    v13 = 0;
    v20 = 0;
    v21 = 0;
    v16 = 0;
    goto LABEL_44;
  }

  v10 = sub_100268868(v5, v54);
  v11 = [v10 username];
  if (!v11)
  {
    v11 = v5;
  }

  pthread_mutex_lock(&stru_100973390);
  v12 = [qword_10098A480 objectForKeyedSubscript:v11];
  v35 = v10;
  if (v12)
  {
    v13 = v12;
    v14 = [v12 objectForKeyedSubscript:@"altDSID"];
    v15 = [v13 objectForKeyedSubscript:@"gsToken"];
    if (dword_100973320 <= 40 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268F50(v11);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100268108;
    block[3] = &unk_1008D0E80;
    v53 = v7;
    v16 = v14;
    v51 = v16;
    v17 = v15;
    v52 = v17;
    dispatch_async(v9, block);

    pthread_mutex_unlock(&stru_100973390);
    v18 = 0;
    v19 = 0;
LABEL_13:
    v20 = 0;
    v21 = 0;
LABEL_44:
    v54[0] = 0;
    goto LABEL_45;
  }

  pthread_mutex_unlock(&stru_100973390);
  if (!v10)
  {
    v22 = 0;
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  v22 = [v10 aa_altDSID];
  v23 = [v10 accountType];
  v24 = [v23 identifier];
  v25 = [v24 isEqualToString:ACAccountTypeIdentifierAppleIDAuthentication];

  if (!v25)
  {
    if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100268F90(v10, v11);
    }

    goto LABEL_31;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100269004(v10);
    }

    goto LABEL_31;
  }

  v26 = [v10 aida_tokenForService:@"com.apple.gs.authagent.auth"];
  v27 = v26;
  if (v22 && v26)
  {
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_10026908C(v11);
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100268124;
    v46[3] = &unk_1008D0E80;
    v49 = v7;
    v16 = v22;
    v47 = v16;
    v18 = v27;
    v48 = v18;
    dispatch_async(v9, v46);

    v19 = 0;
    v17 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    sub_100269044(v22 != 0, v27 != 0);
  }

LABEL_32:
  v19 = +[NSDate date];
  v28 = sub_1001BBD7C();
  [v19 timeIntervalSinceDate:v28];
  v30 = fabs(v29);

  v34 = v22;
  if (v30 <= 5.0)
  {
    v18 = v27;
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_1002690CC(v30);
    }

    v20 = 0;
    v33 = 201229;
    goto LABEL_50;
  }

  v31 = BYSetupAssistantNeedsToRun();
  if (!v31)
  {
LABEL_37:
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      sub_100269140(v11);
    }

    goto LABEL_40;
  }

  if (dword_100973320 <= 50)
  {
    if (dword_100973320 != -1 || _LogCategory_Initialize())
    {
      sub_10026910C();
    }

    goto LABEL_37;
  }

LABEL_40:
  v32 = v22;
  v18 = v27;
  v21 = objc_alloc_init(AKAppleIDAuthenticationContext);
  [v21 setServiceType:1];
  [v21 setServiceIdentifier:@"com.apple.gs.authagent.auth"];
  [v21 setUsername:v11];
  [v21 _setPassword:0];
  [v21 setAltDSID:v32];
  [v21 setIsUsernameEditable:0];
  if (v31)
  {
    [v21 setAuthenticationType:1];
  }

  [v21 setShouldUpdatePersistentServiceTokens:1];
  v20 = objc_alloc_init(AKAppleIDAuthenticationController);
  if (v21)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100268140;
    v41[3] = &unk_1008D64A8;
    v16 = v34;
    v42 = v16;
    v11 = v11;
    v43 = v11;
    v45 = v7;
    v44 = v9;
    [v20 authenticateWithContext:v21 completion:v41];

    v17 = 0;
    v13 = 0;
    goto LABEL_44;
  }

  v33 = 4294960534;
  v54[0] = -6762;
  v5 = v37;
LABEL_51:
  if (dword_100973320 <= 90)
  {
    if (dword_100973320 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_55;
      }

      v33 = v54[0];
    }

    LogPrintF(&dword_100973320, "void SDAppleIDGetGSToken(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDGSTokenCompletion  _Nullable __strong)", 90, "### Request GS token for %{mask} failed: %d\n", v5, v33);
  }

LABEL_55:
  if (v7)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1002685C0;
    v38[3] = &unk_1008D0BE0;
    v39 = v7;
    v40 = v54[0];
    dispatch_async(v9, v38);
  }

  v17 = 0;
  v13 = 0;
  v21 = 0;
  v16 = v34;
LABEL_45:
}

void sub_100268140(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v8 = [v5 objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
    if (!v8)
    {
      v8 = *(a1 + 32);
    }

    v9 = [v5 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
    v10 = [v9 objectForKeyedSubscript:@"com.apple.gs.authagent.auth"];
    v11 = v10;
    if (v8)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_100973320, "void SDAppleIDGetGSToken(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDGSTokenCompletion  _Nullable __strong)_block_invoke_3", 90, "### authenticateWithContext completion called with AltDSID = %@, token = %d\n", v8, v11 != 0);
      }
    }

    else
    {
      pthread_mutex_lock(&stru_100973390);
      if (!qword_10098A480)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = qword_10098A480;
        qword_10098A480 = v13;
      }

      v27[0] = @"altDSID";
      v27[1] = @"gsToken";
      v28[0] = v8;
      v28[1] = v11;
      v15 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
      [qword_10098A480 setObject:v15 forKeyedSubscript:*(a1 + 40)];

      pthread_mutex_unlock(&stru_100973390);
      if (dword_100973320 <= 50)
      {
        if (dword_100973320 != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&dword_100973320, "void SDAppleIDGetGSToken(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDGSTokenCompletion  _Nullable __strong)_block_invoke_3", 50, "AltDSID for %@: %@\n", *(a1 + 40), v8);
        }

        if (dword_100973320 <= 10 && (dword_100973320 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100973320, "void SDAppleIDGetGSToken(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDGSTokenCompletion  _Nullable __strong)_block_invoke_3", 10, "GS token for %@: %@\n", *(a1 + 40), v11);
        }
      }
    }

    v18 = *(a1 + 56);
    if (v18)
    {
      v19 = *(a1 + 48);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10026854C;
      v23[3] = &unk_1008D0E80;
      v26 = v18;
      v24 = v8;
      v25 = v11;
      dispatch_async(v19, v23);
    }

    goto LABEL_34;
  }

  if ([v6 code] == -7003)
  {
    sub_1001BBC60();
    sub_1001BBDD4();
  }

  if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973320, "void SDAppleIDGetGSToken(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDGSTokenCompletion  _Nullable __strong)_block_invoke_3", 90, "### Request GS token for %@ failed: %@\n", *(a1 + 40), v7);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100268574;
    block[3] = &unk_1008CF578;
    v22 = v16;
    v21 = v7;
    dispatch_async(v17, block);

    v8 = v22;
LABEL_34:
  }
}

uint64_t sub_100268574(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) code];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

uint64_t sub_1002685E0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v21 = 0;
  if (![v5 count] || !v6)
  {
    v7 = 0;
    v8 = 0;
    v20 = -6705;
    goto LABEL_21;
  }

  if (SFAppleIDVerifyCertificateChainSync())
  {
    v8 = [v5 objectAtIndexedSubscript:0];

    if (v8)
    {
      v9 = SFAppleIDCommonNameForCertificate();
      v8 = 0;
      v21 = v9;
      if (!v9)
      {
        v10 = [v6 accountIdentifier];
        v11 = [v8 isEqualToString:v10];

        if (v11)
        {
          v21 = 0;
          v7 = 1;
          if (!a3)
          {
            goto LABEL_19;
          }

          goto LABEL_13;
        }

        sub_1002691C4(&v21);
      }

      v7 = 0;
      if (!a3)
      {
        goto LABEL_19;
      }

LABEL_13:
      v12 = v21;
      if (v21)
      {
        v22 = NSLocalizedDescriptionKey;
        v13 = [NSString stringWithUTF8String:DebugGetErrorString()];
        v14 = v13;
        v15 = @"?";
        if (v13)
        {
          v15 = v13;
        }

        v23 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v12 userInfo:v16];
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      *a3 = v17;

      goto LABEL_19;
    }

    v7 = 0;
    v20 = -6762;
LABEL_21:
    v21 = v20;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    sub_100269180(&v21);
  }

  v7 = 0;
  v8 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_19:

  return v7;
}

void *sub_100268868(void *a1, int *a2)
{
  v3 = a1;
  if (!v3)
  {
    v5 = 0;
    v7 = 0;
    v11 = 0;
    v10 = 0;
    obj = 0;
    v9 = 0;
    v8 = 0;
    v25 = -6705;
    goto LABEL_44;
  }

  v4 = +[AKAccountManager sharedInstance];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    v11 = 0;
LABEL_53:
    v10 = 0;
    goto LABEL_54;
  }

  v6 = [v4 appleIDAccountWithAppleID:v3];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    obj = 0;
    v10 = 0;
    v11 = 0;
LABEL_39:
    if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973320, "ACAccount * _Nullable AccountForAppleID(NSString * _Nonnull __strong, OSStatus * _Nullable)", 50, "AccountForAppleID found account %@\n", v7);
    }

    v25 = 0;
    goto LABEL_44;
  }

  if (dword_100973320 <= 50 && (dword_100973320 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100973320, "ACAccount * _Nullable AccountForAppleID(NSString * _Nonnull __strong, OSStatus * _Nullable)", 50, "AccountForAppleID falling back to account aliases\n");
  }

  v12 = [v5 store];
  v11 = v12;
  if (!v12)
  {
    v7 = 0;
    goto LABEL_53;
  }

  v10 = [v12 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierIDMS];
  if (!v10 || ([v11 accountsWithAccountType:v10], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = 0;
LABEL_54:
    obj = 0;
    v9 = 0;
    v8 = 0;
    v25 = 201204;
    goto LABEL_44;
  }

  v28 = v10;
  v29 = v11;
  v30 = a2;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v9 = 0;
    v16 = 0;
    v32 = *v38;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        v19 = [v5 aliasesForAccount:v18];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = v19;
        v20 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = v5;
          v23 = *v34;
LABEL_19:
          v24 = 0;
          while (1)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v9);
            }

            if (![*(*(&v33 + 1) + 8 * v24) caseInsensitiveCompare:v3])
            {
              break;
            }

            if (v21 == ++v24)
            {
              v21 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
              if (v21)
              {
                goto LABEL_19;
              }

              v5 = v22;
              goto LABEL_34;
            }
          }

          v5 = v22;
          v8 = [v22 altDSIDForAccount:v18];

          if (!v8)
          {
            if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_100973320, "ACAccount * _Nullable AccountForAppleID(NSString * _Nonnull __strong, OSStatus * _Nullable)", 90, "### AccountForAppleID altDSIDForAccount:%@ returned nil\n", v18);
            }

            v16 = 0;
            goto LABEL_34;
          }

          v7 = [v22 appleIDAccountWithAltDSID:v8];

          if (!v7)
          {
            v16 = v8;
            continue;
          }

          v11 = v29;
          a2 = v30;
          v10 = v28;
          goto LABEL_39;
        }

LABEL_34:
      }

      v15 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
    v16 = 0;
  }

  v7 = 0;
  v25 = 201204;
  v8 = v16;
  v11 = v29;
  a2 = v30;
  v10 = v28;
LABEL_44:
  if (a2)
  {
    *a2 = v25;
  }

  v26 = v7;

  return v7;
}

void sub_100268CD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:{0, a4}];

    if (v5)
    {
      v6 = SFAppleIDCommonNameForCertificate();
      v7 = 0;
      if (!v6)
      {
        v8 = [*(a1 + 40) accountIdentifier];
        v9 = [v7 isEqualToString:v8];

        if ((v9 & 1) == 0 && dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_100973320, "void SDAppleIDAuthenticateCertificateChain(NSArray * _Nonnull __strong, SDAppleIDVerifiedIdentity * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDCertificateChainAuthenticationHandler  _Nonnull __strong)_block_invoke", 90, "Account identifier check failed");
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (dword_100973320 <= 90 && (dword_100973320 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100973320, "void SDAppleIDAuthenticateCertificateChain(NSArray * _Nonnull __strong, SDAppleIDVerifiedIdentity * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDCertificateChainAuthenticationHandler  _Nonnull __strong)_block_invoke", 90, "SFAppleIDVerifyCertificateChain failed with err=%#m", a4);
    }

    v7 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100268F90(void *a1, uint64_t a2)
{
  v3 = [a1 accountType];
  v4 = [v3 identifier];
  LogPrintF(&dword_100973320, "void SDAppleIDGetGSToken(NSString * _Nonnull __strong, dispatch_queue_t  _Nullable __strong, SDAppleIDGSTokenCompletion  _Nullable __strong)", 90, "### account identifier is %@ for %@\n", v4, a2);
}

_DWORD *sub_1002691C4(_DWORD *result)
{
  v1 = result;
  if (dword_100973320 <= 90)
  {
    if (dword_100973320 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&dword_100973320, "BOOL SDAppleIDAuthenticateCertificateChainSync(NSArray * _Nonnull __strong, SDAppleIDVerifiedIdentity * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)", 90, "Account identifier check failed");
    }
  }

  *v1 = 201238;
  return result;
}

uint64_t SDAuthenticationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        break;
      }

      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 64;
            break;
          case 4:
            v14 = PBReaderReadData();
            v15 = 40;
            break;
          case 5:
            v14 = PBReaderReadData();
            v15 = 48;
            break;
          default:
            goto LABEL_63;
        }

LABEL_62:
        v35 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_81;
      }

      if (v13 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 80) |= 0x10u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v44 & 0x7F) << v25;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_72;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_72:
        v37 = 76;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_63;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 80) |= 8u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v44 & 0x7F) << v18;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_68:
        v37 = 72;
      }

      *(a1 + v37) = v24;
LABEL_81:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        *(a1 + 80) |= 4u;
        v44 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v44;
        v40 = 24;
        goto LABEL_80;
      }

      if (v13 != 7)
      {
LABEL_63:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_81;
      }

      v14 = PBReaderReadData();
      v15 = 32;
    }

    else
    {
      if (v13 == 8)
      {
        *(a1 + 80) |= 2u;
        v44 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v44;
        v40 = 16;
LABEL_80:
        *(a1 + v40) = v39;
        goto LABEL_81;
      }

      if (v13 != 9)
      {
        if (v13 != 10)
        {
          goto LABEL_63;
        }

        *(a1 + 80) |= 1u;
        v44 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v44;
        v40 = 8;
        goto LABEL_80;
      }

      v14 = PBReaderReadString();
      v15 = 56;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

void sub_10026B504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v19 - 128));
  _Unwind_Resume(a1);
}

void sub_10026B554(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained alertManager:*(*(a1 + 32) + 48) cancelingTransferWithRecordID:*(a1 + 40) withFailureReason:0];
}

id sub_10026B5B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _unpublish];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 40);

  return [v4 setObject:0 forKeyedSubscript:v3];
}

void sub_10026B74C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 dispatchQueue];
  dispatch_assert_queue_V2(v4);

  [v5 transferWithIdentifierWasAccepted:*(a1 + 40)];
}

void sub_10026B908(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  v4 = [v3 dispatchQueue];
  dispatch_assert_queue_V2(v4);

  [v5 transferWithIdentifierWasDeclined:a1[5] withFailureReason:a1[6]];
}

uint64_t sub_10026BF28()
{
  result = _UISolariumEnabled();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

id sub_10026BF6C()
{
  v0 = qword_10098A488;
  if (!qword_10098A488)
  {
    v1 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = qword_10098A488;
    qword_10098A488 = v1;

    v0 = qword_10098A488;
  }

  return v0;
}

id _ShareSheetBundleIDFromAuditToken(_OWORD *a1)
{
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v1 = 0;
  }

  else
  {
    v1 = CPCopyBundleIdentifierFromAuditToken();
  }

  if (!v1)
  {
    NSLog(@"Cannot get bundle ID from audit token.");
  }

  return v1;
}

id share_sheet_log(uint64_t a1)
{
  if (qword_10098A4A8[0] != -1)
  {
    sub_10026C520();
  }

  v2 = qword_10098A4A0;

  return v2;
}

id magic_head_log(uint64_t a1)
{
  if (qword_10098A498 != -1)
  {
    sub_10026C534();
  }

  v2 = qword_10098A490;

  return v2;
}

void sub_10026C104(id a1)
{
  v1 = os_log_create("com.apple.sharing", "MagicHead");
  v2 = qword_10098A490;
  qword_10098A490 = v1;
}

void sub_10026C148(id a1)
{
  v1 = os_log_create("com.apple.ShareSheet", "ShareSheet");
  v2 = qword_10098A4A0;
  qword_10098A4A0 = v1;
}

id sub_10026C18C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v19 = *v27;
    v20 = v3;
    do
    {
      v7 = 0;
      v21 = v5;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:@"attachments"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v10 = v9;
            v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v23;
              do
              {
                for (i = 0; i != v12; i = i + 1)
                {
                  if (*v23 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v22 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 = [v15 objectForKey:@"registeredTypeIdentifiers"];
                    if (v16)
                    {
                      [v2 addObjectsFromArray:v16];
                    }
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v12);
            }

            v6 = v19;
            v3 = v20;
            v5 = v21;
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  v17 = [v2 copy];

  return v17;
}

id sub_10026C400(void *a1)
{
  sub_10026C18C(a1);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (!SFIsImage())
        {

          v6 = 0;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = v1;
LABEL_11:

  return v6;
}

void sub_10026C804(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10026D2A0();
    }

    [*(a1 + 32) invalidateResponseTimer];
    v5 = *(a1 + 32);
    v6 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:151 userInfo:0];
    [v5 notifyDelegateWithError:v6];
  }
}

void sub_10026CC98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) invalidateResponseTimer];
    v3 = *(a1 + 32);
    v4 = SFAutoUnlockErrorDomain;
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Step failed";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v4 code:151 userInfo:v5];
    [v3 notifyDelegateWithError:v6];
  }
}

id *sub_10026D15C(id *result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 == 504)
  {
    v4 = auto_unlock_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeRegistrationFinalize", v5, 2u);
    }

    [v1[4] invalidateResponseTimer];
    return [v1[4] handleFinalize:v1[5]];
  }

  else if (v2 == 502)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received SDAutoUnlockMessageTypeRegistrationResponse", buf, 2u);
    }

    [v1[4] invalidateResponseTimer];
    return [v1[4] handleInitialResponse:v1[5]];
  }

  return result;
}

void sub_10026E350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10026E378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerImport];
}

void sub_10026E628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && v5)
  {
    if ([v5 success])
    {
      v8 = [v5 openAppURL];

      if (v8)
      {
        v9 = [v5 openAppURL];
        v17 = v9;
        v10 = [NSArray arrayWithObjects:&v17 count:1];
        v11 = [*(a1 + 32) transfer];
        [v11 setCompletedURLs:v10];

        if (+[SFAirDropUserDefaults_objc moveToAppEnabled](SFAirDropUserDefaults_objc, "moveToAppEnabled") && [v5 shouldOfferOpenAction])
        {
          v12 = [*(a1 + 32) updateTransferStateHandler];
          v12[2](v12, 7);
          v13 = 1;
LABEL_14:

          goto LABEL_15;
        }

        if ((+[SFAirDropUserDefaults_objc moveToAppEnabled](SFAirDropUserDefaults_objc, "moveToAppEnabled") & 1) == 0 && ([v5 shouldOfferOpenAction] & 1) == 0)
        {
          v14 = *(a1 + 32);
          v12 = [v5 openAppURL];
          v16 = v12;
          v15 = [NSArray arrayWithObjects:&v16 count:1];
          v13 = [v14 openURLs:v15];

          goto LABEL_14;
        }
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

LABEL_15:
    v7 = [*(a1 + 32) completionHandler];
    (v7)[2](v7, v13, [v5 shouldOfferOpenAction], objc_msgSend(v5, "shouldCleanupItems"));
    goto LABEL_16;
  }

  v7 = [*(a1 + 32) completionHandler];
  v7[2](v7, 0, 0, 1);
LABEL_16:
}

void sub_10026EBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10026EBD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10026EBF0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v30 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v31)
  {
    v29 = *v34;
    v27 = v2;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v33 + 1) + 8 * i);
        v5 = [v4 pathExtension];
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, v5, 0);
        if (SFIsPhotosAssetBundle())
        {
          v7 = [[PFAssetBundle alloc] initWithAssetBundleAtURL:v4];
          if (v7)
          {
            v8 = [PHAssetCreationRequest creationRequestForAssetFromAssetBundle:v7];
          }

          else
          {
            v10 = airdrop_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v4;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "PFAssetBundle initWithAssetBundleAtURL(%@) returned nil", buf, 0xCu);
            }

            v8 = 0;
          }

          if (*(a1 + 72) == 1)
          {
            v11 = *(a1 + 40);
            v32 = 0;
            v12 = [v7 writeDowngradedRepresentationToDirectory:v11 error:&v32];
            v13 = v32;
            if (v12)
            {
              [v2 addObject:v12];
            }

            else
            {
              v16 = airdrop_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v38 = v4;
                v39 = 2112;
                v40 = v13;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to downgrade asset bundle %@ with error: %@", buf, 0x16u);
              }

              v2 = v27;
            }

            goto LABEL_38;
          }
        }

        else if (SFIsLivePhotos())
        {
          v7 = [[PFVideoComplement alloc] initWithBundleAtURL:v4];
          if (v7)
          {
            v8 = [PHAssetCreationRequest creationRequestForAssetFromVideoComplementBundle:v7];
          }

          else
          {
            v14 = airdrop_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v4;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "PFVideoComplement initWithBundleAtURL(%@) returned nil", buf, 0xCu);
            }

            v8 = 0;
          }

          if (*(a1 + 72) == 1)
          {
            v15 = [v7 videoPath];
            v13 = [NSURL fileURLWithPath:v15];

            if (v13)
            {
              [v2 addObject:v13];
LABEL_39:

              goto LABEL_40;
            }

            v12 = airdrop_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v4;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No video URL exists for Live Photo %@", buf, 0xCu);
            }

LABEL_38:

            goto LABEL_39;
          }
        }

        else
        {
          if (SFIsVideo())
          {
            v9 = 2;
            goto LABEL_22;
          }

          if (SFIsImage())
          {
            v9 = 1;
LABEL_22:
            v8 = +[PHAssetCreationRequest creationRequestForAsset];
            v7 = objc_alloc_init(PHAssetResourceCreationOptions);
            [v8 addResourceWithType:v9 fileURL:v4 options:v7];
            if (*(a1 + 72) == 1)
            {
              [v2 addObject:v4];
            }

            goto LABEL_40;
          }

          v7 = airdrop_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v38 = v4;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Not a Photos type %@. Ignoring", buf, 0xCu);
          }

          v8 = 0;
        }

LABEL_40:

        [v8 setImportSessionID:*(a1 + 48)];
        v17 = [v8 placeholderForCreatedAsset];
        v18 = [v17 localIdentifier];
        [v30 addObject:v18];

        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          v19 = [v8 placeholderForCreatedAsset];
          v20 = [v19 localIdentifier];
          v21 = [NSString stringWithFormat:@"photos://asset?albumname=camera-roll&identifier=%@", v20];

          v22 = [NSURL URLWithString:v21];
          v23 = *(*(a1 + 64) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v31);
  }

  v25 = [v2 copy];
  [*(a1 + 56) setUnprivatizedURLs:v25];

  v26 = [v30 copy];
  [*(a1 + 56) setAssetIdentifiers:v26];
}

void sub_10026F1CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = airdrop_log();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      v17[0] = 67109120;
      v17[1] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary performChanges reported success for %d items", v17, 8u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10026FCC4();
  }

  v9 = a2;
  if ((+[SFAirDropUserDefaults_objc moveToAppEnabled]& 1) == 0)
  {
    v10 = +[SDStatusMonitor sharedMonitor];
    v11 = [v10 systemUIFlags];

    v9 = (v11 & 0x3006) != 0;
    if (_os_feature_enabled_impl())
    {
      v9 = _os_feature_enabled_impl();
    }
  }

  v12 = [SDAirDropHandlerPhotosImportResult alloc];
  v13 = [*(a1 + 40) unprivatizedURLs];
  v14 = *(*(*(a1 + 56) + 8) + 40);
  v15 = [*(a1 + 40) assetIdentifiers];
  v16 = [(SDAirDropHandlerPhotosImportResult *)v12 initWithImportedFiles:v13 openAppURL:v14 assetIdentifiers:v15 success:a2 shouldOfferOpenAction:v9 shouldCleanupItems:1];

  (*(*(a1 + 48) + 16))();
}

void sub_10026F590(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = airdrop_log();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHPhotoLibrary expunge reported success for %d items", v9, 8u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10026FD74();
  }
}

void sub_10026F970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10026F9B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained transfer];
  v3 = [v2 completedURLs];
  v4 = [v3 firstObject];

  if (v4)
  {
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    [WeakRetained openURLs:v5];
  }

  v6 = [WeakRetained completionHandler];
  v6[2](v6, 1, 0, 1);
}

void sub_10026FAB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained unprivatizedURLs];
  [WeakRetained launchMoveToAppShareSheetForFiles:v1];
}

void sub_100270180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1002701B4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = airdrop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 49);
      v11[0] = 67109376;
      v11[1] = v4;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turning on AirDrop, turning on WLAN=%d, Bluetooth=%d", v11, 0xEu);
    }

    if (*(a1 + 48) == 1)
    {
      v6 = +[SDStatusMonitor sharedMonitor];
      [v6 setWirelessEnabled:1];
    }

    if (*(a1 + 49) == 1)
    {
      v7 = +[SDStatusMonitor sharedMonitor];
      [v7 setBluetoothEnabled:1];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_1002702F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error presenting enable radios alert %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}