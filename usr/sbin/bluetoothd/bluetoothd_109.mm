void sub_1007D8300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D8344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_100B54ED0 != -1)
  {
    sub_10087A08C();
  }

  v5 = off_100B54EC8;

  sub_1007D8654(v5, v4, a3);
}

uint64_t sub_1007D83A0(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_1002EFF1C(v2, 1818);
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100851590();
    }

    v3 = 1;
  }

  sub_10002249C(&v5);
  return v3;
}

void sub_1007D843C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10087A188();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v7 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v16 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming connection attempt from device %{public}s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = sub_10057DFAC(a1, v6);
  if (v9)
  {
    v10 = sub_1002EFBAC(sub_1007D8344, a3, v9);
    v11 = v9 ^ 1;
    if (v10)
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      sub_10057E218(a1, v6, a3);
      sub_10057D9B0(a1, v6, 1);
    }
  }

  else
  {
    v12 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Denying connection attempt", __p, 2u);
    }

    v10 = sub_1002EFBAC(sub_1007D8344, a3, v9);
  }

  v13 = v10;
  if (v10)
  {
    v14 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865EB8(v9, v13, v14);
    }
  }
}

void sub_1007D8654(void *a1, int a2, uint64_t a3)
{
  v5 = sub_10057E420(a1, a2);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v7 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v6, __p);
        v9 = v11 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v13 = v9;
        v14 = 1024;
        v15 = a3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Connection to device %{public}s failed - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B50AA0 != -1)
      {
        sub_10087A19C();
      }

      v8 = sub_1000DD584(off_100B50A98, a3, 20000);
      sub_10057DA84(a1, v6, v8);
    }

    sub_10057DA84(a1, v5, 0);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A27C();
  }
}

void sub_1007D8864(void *a1, int a2, uint64_t a3, int a4)
{
  v7 = sub_10057E420(a1, a2);
  if (v7)
  {

    sub_1003FD79C((a1 + 32), v7, a3, a4, 0);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A2B8();
  }
}

void sub_1007D88F8(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  if (v3)
  {

    sub_1003FD9B4((a1 + 32), v3);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A2F4();
  }
}

BOOL sub_1007D896C(void *a1, unint64_t a2, char *a3, unsigned __int16 a4)
{
  v6 = sub_10057E30C(a1, a2);
  v9 = 0;
  sub_1000216B4(&v9);
  v7 = sub_1002EF8B0(sub_1007D8A38, v6, a3, a4);
  sub_100022214(&v9);
  if (v7 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A330();
  }

  sub_10002249C(&v9);
  return v7 == 0;
}

void sub_1007D8A38(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A3A0();
  }

  if (qword_100B54ED0 != -1)
  {
    sub_10087A410();
  }

  sub_1007D88F8(off_100B54EC8, a1);
}

void sub_1007D8ACC(uint64_t a1, uint64_t a2)
{
  if (qword_100B54ED0 != -1)
  {
    sub_10087A08C();
  }

  v4 = off_100B54EC8;

  sub_1005272C0(v4, a1, a2);
}

void sub_1007D8B28(int a1, uint64_t a2, int a3)
{
  if (qword_100B54ED0 != -1)
  {
    sub_10087A08C();
  }

  v6 = off_100B54EC8;

  sub_1007D8864(v6, a1, a2, a3);
}

void sub_1007D8E04(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = UserNotification;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1007D9220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = UninstallObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1007D9D58(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100BC7D90;
  qword_100BC7D90 = v1;
}

void sub_1007DA030(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v4 = [*(*v2 + 152) objectForKey:v2[1]];
  v5 = v4;
  v6 = *(a1 + 48);
  if ((v6 - 1) < 2)
  {
    if (v4)
    {
      [*(*(a1 + 32) + 152) removeObjectForKey:*(a1 + 40)];
    }

    if (v3 && [v3 isApp] && (objc_msgSend(v3, "isExtension") & 1) == 0)
    {
      [v3 setHasLiveActivityRunning:0];
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v3;
        v17 = 2112;
        *v18 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ACActivityStateEnded/ACActivityStateDismissed dispatching appSessionStateChanged %@ %@", buf, 0x16u);
      }

      v8 = *(*(a1 + 32) + 8);
      if (v8)
      {
        sub_100007E30(__p, [*(a1 + 40) UTF8String]);
        (**v8)(v8, __p, [v3 getAppState]);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    goto LABEL_38;
  }

  if (v6 || v4)
  {
    goto LABEL_38;
  }

  v5 = [LiveActivityInfo liveActivityWithBundleID:*(a1 + 40) startedWithCBInForeground:0];
  if ([v3 getAppInternalState] == 16 && (objc_msgSend(v3, "isExtension") & 1) == 0)
  {
    if (!v3 || ![v3 isApp] || (objc_msgSend(v3, "isExtension") & 1) != 0)
    {
      goto LABEL_34;
    }

    [v3 setHasLiveActivityRunning:1];
    v9 = qword_100BCE8D8;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_33:

LABEL_34:
      [v5 setStartedWithCBInForeground:1];
      goto LABEL_35;
    }

    v10 = [v3 getAppInternalState];
    if (v10 <= 7)
    {
      if (v10 == 2)
      {
        v11 = "terminated";
        goto LABEL_32;
      }

      if (v10 == 4)
      {
        v11 = "suspended";
        goto LABEL_32;
      }
    }

    else
    {
      switch(v10)
      {
        case 8:
          v11 = "background-running";
          goto LABEL_32;
        case 16:
          v11 = "foreground-running";
          goto LABEL_32;
        case 32:
          v11 = "daemon";
LABEL_32:
          *buf = 136315906;
          v16 = v11;
          v17 = 1024;
          *v18 = [v3 getAppInternalState];
          *&v18[4] = 2112;
          *&v18[6] = v3;
          v19 = 2112;
          v20 = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ACActivityStateActive App state:%s(%d) %@ %@", buf, 0x26u);
          goto LABEL_33;
      }
    }

    v11 = "unknown";
    goto LABEL_32;
  }

LABEL_35:
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registered Live Activity application - %@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 152) setObject:v5 forKey:*(a1 + 40)];
LABEL_38:
}

void sub_1007DA790(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "LiveActivity monitor triggered", v5, 2u);
  }

  [*(a1 + 32) _handleActivityContentUpdate:v3];
}

void sub_1007DA8E4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v3 = [*(*(a1 + 32) + 48) applicationStateForApplication:*(a1 + 40)];
    v4 = v3 != 0;
    v5 = *(a1 + 40);
    if (v5 && !v3)
    {
      v6 = [*(a1 + 40) containsString:@"."];
      v5 = *(a1 + 40);
      if (v6)
      {
        v4 = [*(a1 + 40) hasPrefix:@"com.apple"] ^ 1;
        v5 = *(a1 + 40);
      }

      else
      {
        v4 = 0;
      }
    }

    v2 = [AppInfo appInfoWithPID:*(a1 + 48) isApp:v4 isExtension:*(a1 + 52) bundleID:v5];
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registered application - %@", buf, 0xCu);
    }

    if (v2 && *(a1 + 40))
    {
      [v2 setBundleID:?];
      [*(*(a1 + 32) + 40) setObject:v2 forKey:*(a1 + 40)];
      v8 = [*(*(a1 + 32) + 152) objectForKey:*(a1 + 40)];
      v9 = v8;
      if (v8 && [v8 startedWithCBInForeground])
      {
        [v2 setHasLiveActivityRunning:1];
      }
    }

    if (v4)
    {
      v10 = [*(*(a1 + 32) + 48) interestedBundleIDs];
      v11 = [NSMutableArray arrayWithArray:v10];

      if (*(a1 + 40))
      {
        [v11 addObject:?];
      }

      [*(*(a1 + 32) + 48) updateInterestedBundleIDs:v11 states:15];
      v12 = [*(*(a1 + 32) + 48) bundleInfoValueForKey:@"UIBackgroundModes" PID:*(a1 + 48)];
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_1007DABF8;
          v13[3] = &unk_100B0E1C8;
          v14 = v2;
          [v12 enumerateObjectsUsingBlock:v13];
        }
      }
    }

    [*(a1 + 32) reconfigureRunningBoardProcessMonitor];
  }
}

void sub_1007DABF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([@"bluetooth-central" isEqualToString:?])
  {
    [*(a1 + 32) setSupportsBackgroundedCentrals:1];
  }

  else if ([@"bluetooth-peripheral" isEqualToString:v3])
  {
    [*(a1 + 32) setSupportsBackgroundedPeripherals:1];
  }
}

void sub_1007DAD2C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    if ([v3 isApp])
    {
      v5 = [*(*(a1 + 32) + 48) interestedBundleIDs];
      v6 = [NSMutableArray arrayWithArray:v5];

      [v6 removeObject:*v2];
      v7 = *(*(a1 + 32) + 48);
      if ([v6 count])
      {
        v8 = 15;
      }

      else
      {
        v8 = 0;
      }

      [v7 updateInterestedBundleIDs:v6 states:v8];
      v9 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
      if (v9)
      {
        v10 = qword_100BCE8D8;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*v2 UTF8String];
          v18 = 136446210;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing outstanding process assertion for unregistered application %{public}s", &v18, 0xCu);
        }

        [v9 invalidate];
        [*(*(a1 + 32) + 88) removeObjectForKey:*(a1 + 40)];
      }

      v12 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];

      if (v12)
      {
        v13 = qword_100BCE8D8;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*v2 UTF8String];
          v18 = 136446210;
          v19 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing (URGENT) outstanding process assertion for unregistered application %{public}s", &v18, 0xCu);
        }

        [v12 invalidate];
        [*(*(a1 + 32) + 96) removeObjectForKey:*(a1 + 40)];
      }
    }

    [*(a1 + 32) reconfigureRunningBoardProcessMonitor];
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unregistered application - %@", &v18, 0xCu);
    }

    [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_10087A44C();
    }

    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v2;
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cannot unregister application %{public}@ - info is empty", &v18, 0xCu);
    }
  }
}

void sub_1007DB168(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 pid];
}

void sub_1007DB398(id *a1)
{
  v2 = [*(a1[4] + 5) objectForKey:a1[5]];
  v3 = v2;
  if (v2)
  {
    if ([v2 isApp])
    {
      if ([v3 isExtension])
      {
        v4 = qword_100BCE9E0;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
        {
          v5 = a1[5];
          *v18 = 138543362;
          *&v18[4] = v5;
          v6 = "Application %{public}@ is an extension (not supported).";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v18, 0xCu);
        }
      }

      else
      {
        v9 = +[NSMutableDictionary dictionary];
        if ([a1[6] count])
        {
          [v9 setObject:a1[6] forKey:@"UIApplicationLaunchOptionsBluetoothCentralsKey"];
        }

        if ([a1[7] count])
        {
          [v9 setObject:a1[7] forKey:@"UIApplicationLaunchOptionsBluetoothPeripheralsKey"];
        }

        v23[0] = BKSOpenApplicationOptionKeyActivateSuspended;
        v23[1] = BKSOpenApplicationOptionKeyPayloadOptions;
        v24[0] = &__kCFBooleanTrue;
        v24[1] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        v11 = qword_100BCE9E0;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 isAlive];
          v13 = a1[5];
          v14 = [v3 pid];
          v15 = "false";
          *v18 = 136315650;
          if (v12)
          {
            v15 = "true";
          }

          *&v18[4] = v15;
          v19 = 2112;
          v20 = v13;
          v21 = 1024;
          v22 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "launchApplication:{isAlive: %s, bundleId: %@, pid: %d}", v18, 0x1Cu);
        }

        if ([v3 pid] && (objc_msgSend(v3, "isAlive") & 1) != 0)
        {
          v16 = qword_100BCE9E0;
          if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
          {
            v17 = a1[5];
            *v18 = 138543362;
            *&v18[4] = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Application pending termination, delaying resurrection - %{public}@", v18, 0xCu);
          }

          [*(a1[4] + 14) setObject:v10 forKey:{a1[5], *v18}];
        }

        else
        {
          [a1[4] openBundle:a1[5] options:{v10, *v18}];
        }
      }
    }

    else
    {
      v4 = qword_100BCE9E0;
      if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        *v18 = 138543362;
        *&v18[4] = v8;
        v6 = "Application %{public}@ is a daemon (not supported).";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10087A5C8([a1[5] UTF8String], v18);
    }
  }
}

void sub_1007DB9E0(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_10087A63C();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);

  sub_1003BD38C(v2, v3);
}

void sub_1007DBA34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087A650();
    }

    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v9 + 16);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007DBCB0;
    v14[3] = &unk_100B0E218;
    v14[4] = v9;
    v15 = v8;
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    dispatch_after(v7, v10, v14);
  }

  else if ([v5 isValid])
  {
    v11 = qword_100BCE9E0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v19 = v12;
      v20 = 1026;
      v21 = [v5 pid];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resurrected: %{public}@, pid: %{public}u", buf, 0x12u);
    }

    v13 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:*(a1 + 32)];
    if (v13)
    {
      [v13 setPid:{objc_msgSend(v5, "pid")}];
      [*(a1 + 40) takeAssertionForProcess:*(a1 + 32) duration:10 isUrgent:0];
    }

    else if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087A744();
    }
  }

  else if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087A6D0();
  }
}

void sub_1007DBD60(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v2)
  {
    v3 = *v15;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        v6 = [v5 applicationIdentifier];
        v7 = [*(*(a1 + 40) + 40) objectForKey:v6];
        v8 = qword_100BCE9E0;
        if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 40) + 40);
          *buf = 138543874;
          v19 = v6;
          v20 = 2112;
          v21 = v7;
          v22 = 2112;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ %@", buf, 0x20u);
        }

        v10 = qword_100BCE9E0;
        v11 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          if (v11)
          {
            *buf = 138543362;
            v19 = v6;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Application %{public}@ has been uninstalled!", buf, 0xCu);
          }

          if (*(*(a1 + 40) + 8))
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1007DC058;
            block[3] = &unk_100AE0B60;
            block[4] = *(a1 + 40);
            block[5] = v5;
            dispatch_async(&_dispatch_main_q, block);
          }
        }

        else if (v11)
        {
          *buf = 138543362;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable To Uninstall %{public}@, AppInfo Not Found", buf, 0xCu);
        }

        [*(*(a1 + 40) + 152) removeObjectForKey:v6];
      }

      v2 = [obj countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v2);
  }
}

void sub_1007DC058(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) applicationIdentifier];
  sub_100007E30(__p, [v2 UTF8String]);
  (*(*v1 + 16))(v1, __p, 2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007DC0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007DC1D0(id a1, NSDictionary *a2)
{
  v3 = a2;
  v2 = +[BTAppInteraction instance];
  [v2 applicationStateChanged:v3];
}

void sub_1007DC250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:23];
  v7 = FBSSceneVisibilityEndowmentNamespace;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  [v3 setServiceClass:33];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007DC3C8;
  v6[3] = &unk_100B0E288;
  v6[4] = *(a1 + 32);
  [v3 setUpdateHandler:v6];
  [v3 setPredicates:*(a1 + 40)];
}

void sub_1007DC4A0(uint64_t a1)
{
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_10087A7B8();
  }

  v2 = [*(a1 + 32) bundle];
  v3 = [v2 identifier];

  v4 = [*(a1 + 32) pid];
  if (v3 || ([*(a1 + 32) isDaemon] & 1) != 0)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_100042544;
    v50 = sub_1000426CC;
    v51 = [*(*(a1 + 48) + 40) objectForKeyedSubscript:v3];
    v5 = v47[5];
    if (!v5)
    {
      v6 = *(*(a1 + 48) + 40);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1007DD178;
      v44[3] = &unk_100B0E300;
      v45 = v4;
      v44[4] = &v46;
      [v6 enumerateKeysAndObjectsUsingBlock:v44];
      v5 = v47[5];
      if (!v5)
      {
        if (v3 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10087A8AC();
        }

        goto LABEL_163;
      }
    }

    if (![v5 isExtension] || (objc_msgSend(*(a1 + 40), "state"), v7 = objc_claimAutoreleasedReturnValue(), v8 = +[BTAppInteraction translateRunningBoardProcessState:overrideForeground:](BTAppInteraction, "translateRunningBoardProcessState:overrideForeground:", v7, objc_msgSend(v47[5], "isExtension")), v7, objc_msgSend(v47[5], "getAppState") == v8))
    {
LABEL_163:
      _Block_object_dispose(&v46, 8);

      goto LABEL_164;
    }

    v9 = [*(a1 + 40) previousState];
    v40 = +[BTAppInteraction translateRunningBoardProcessState:overrideForeground:](BTAppInteraction, "translateRunningBoardProcessState:overrideForeground:", v9, [v47[5] isExtension]);

    v10 = [*(a1 + 40) previousState];
    v11 = [v10 taskState];

    v12 = [*(a1 + 40) state];
    v13 = [v12 taskState];

    v14 = qword_100BCE8D8;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_40:

      if (([v47[5] monitorForDeath] & 1) == 0)
      {
        [v47[5] setMonitorForDeath:1];
        v20 = *(a1 + 32);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1007DD20C;
        v43[3] = &unk_100B0E328;
        v43[4] = *(a1 + 48);
        [v20 monitorForDeath:v43];
      }

      [v47[5] setAppState:v8];
      v21 = [v47[5] getAppState];
      if ([v47[5] pid] == v4)
      {
        v22 = qword_100BCE8D8;
        if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
        {
LABEL_154:
          if (*(*(a1 + 48) + 8) && v8 != 2)
          {
            memset(buf, 0, 24);
            v37 = v3;
            sub_100007E30(buf, [v3 UTF8String]);
            v38 = *(*(a1 + 48) + 8);
            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(__p, *buf, *&buf[8]);
            }

            else
            {
              *__p = *buf;
              v42 = *&buf[16];
            }

            (**v38)(v38, __p, v8);
            if (SHIBYTE(v42) < 0)
            {
              operator delete(__p[0]);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          goto LABEL_163;
        }

        if (v40 <= 7)
        {
          if (v40 == 2)
          {
            v23 = "terminated";
            goto LABEL_81;
          }

          if (v40 == 4)
          {
            v23 = "suspended";
            goto LABEL_81;
          }
        }

        else
        {
          switch(v40)
          {
            case 8:
              v23 = "background-running";
              goto LABEL_81;
            case 16:
              v23 = "foreground-running";
              goto LABEL_81;
            case 32:
              v23 = "daemon";
              goto LABEL_81;
          }
        }

        v23 = "unknown";
LABEL_81:
        if (v8 <= 7)
        {
          if (v8 == 2)
          {
            v33 = "terminated";
            goto LABEL_93;
          }

          if (v8 == 4)
          {
            v33 = "suspended";
            goto LABEL_93;
          }
        }

        else
        {
          switch(v8)
          {
            case 8:
              v33 = "background-running";
              goto LABEL_93;
            case 0x10:
              v33 = "foreground-running";
              goto LABEL_93;
            case 0x20:
              v33 = "daemon";
LABEL_93:
              *buf = 67109634;
              *&buf[4] = v4;
              *&buf[8] = 2080;
              *&buf[10] = v23;
              *&buf[18] = 2080;
              *&buf[20] = v33;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Process state updated. PID unchanged:%u %s to %s", buf, 0x1Cu);
              goto LABEL_154;
          }
        }

        v33 = "unknown";
        goto LABEL_93;
      }

      if (![v47[5] pid] && v4 && v21 != 2)
      {
        v24 = qword_100BCE8D8;
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
LABEL_114:

          [v47[5] setIsAlive:1];
          goto LABEL_154;
        }

        v25 = [v47[5] pid];
        if (v40 <= 7)
        {
          if (v40 == 2)
          {
            v26 = "terminated";
            goto LABEL_101;
          }

          if (v40 == 4)
          {
            v26 = "suspended";
            goto LABEL_101;
          }
        }

        else
        {
          switch(v40)
          {
            case 8:
              v26 = "background-running";
              goto LABEL_101;
            case 16:
              v26 = "foreground-running";
              goto LABEL_101;
            case 32:
              v26 = "daemon";
              goto LABEL_101;
          }
        }

        v26 = "unknown";
LABEL_101:
        if (v8 <= 7)
        {
          if (v8 == 2)
          {
            v34 = "terminated";
            goto LABEL_113;
          }

          if (v8 == 4)
          {
            v34 = "suspended";
            goto LABEL_113;
          }
        }

        else
        {
          switch(v8)
          {
            case 8:
              v34 = "background-running";
              goto LABEL_113;
            case 0x10:
              v34 = "foreground-running";
              goto LABEL_113;
            case 0x20:
              v34 = "daemon";
LABEL_113:
              *buf = 67109890;
              *&buf[4] = v25;
              *&buf[8] = 1024;
              *&buf[10] = v4;
              *&buf[14] = 2080;
              *&buf[16] = v26;
              *&buf[24] = 2080;
              *&buf[26] = v34;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Process state updated: Alive, PID changed:%u to %u, %s to %s", buf, 0x22u);
              goto LABEL_114;
          }
        }

        v34 = "unknown";
        goto LABEL_113;
      }

      if (v4)
      {
        v27 = qword_100BCE8D8;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
LABEL_135:

          goto LABEL_154;
        }

        v28 = [v47[5] pid];
        if (v40 <= 7)
        {
          if (v40 == 2)
          {
            v29 = "terminated";
            goto LABEL_122;
          }

          if (v40 == 4)
          {
            v29 = "suspended";
            goto LABEL_122;
          }
        }

        else
        {
          switch(v40)
          {
            case 8:
              v29 = "background-running";
              goto LABEL_122;
            case 16:
              v29 = "foreground-running";
              goto LABEL_122;
            case 32:
              v29 = "daemon";
              goto LABEL_122;
          }
        }

        v29 = "unknown";
LABEL_122:
        if (v8 <= 7)
        {
          if (v8 == 2)
          {
            v35 = "terminated";
            goto LABEL_134;
          }

          if (v8 == 4)
          {
            v35 = "suspended";
            goto LABEL_134;
          }
        }

        else
        {
          switch(v8)
          {
            case 8:
              v35 = "background-running";
              goto LABEL_134;
            case 0x10:
              v35 = "foreground-running";
              goto LABEL_134;
            case 0x20:
              v35 = "daemon";
LABEL_134:
              *buf = 67109890;
              *&buf[4] = v28;
              *&buf[8] = 1024;
              *&buf[10] = v4;
              *&buf[14] = 2080;
              *&buf[16] = v29;
              *&buf[24] = 2080;
              *&buf[26] = v35;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Process state updated: PID changed:%u to %u, %s to %s", buf, 0x22u);
              goto LABEL_135;
          }
        }

        v35 = "unknown";
        goto LABEL_134;
      }

      [v47[5] setPid:0];
      [v47[5] setIsAlive:0];
      v30 = qword_100BCE8D8;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
LABEL_153:

        goto LABEL_154;
      }

      v31 = [v47[5] pid];
      if (v40 <= 7)
      {
        if (v40 == 2)
        {
          v32 = "terminated";
          goto LABEL_140;
        }

        if (v40 == 4)
        {
          v32 = "suspended";
          goto LABEL_140;
        }
      }

      else
      {
        switch(v40)
        {
          case 8:
            v32 = "background-running";
            goto LABEL_140;
          case 16:
            v32 = "foreground-running";
            goto LABEL_140;
          case 32:
            v32 = "daemon";
            goto LABEL_140;
        }
      }

      v32 = "unknown";
LABEL_140:
      if (v8 <= 7)
      {
        if (v8 == 2)
        {
          v36 = "terminated";
          goto LABEL_152;
        }

        if (v8 == 4)
        {
          v36 = "suspended";
          goto LABEL_152;
        }
      }

      else
      {
        switch(v8)
        {
          case 8:
            v36 = "background-running";
            goto LABEL_152;
          case 0x10:
            v36 = "foreground-running";
            goto LABEL_152;
          case 0x20:
            v36 = "daemon";
LABEL_152:
            *buf = 67109890;
            *&buf[4] = v31;
            *&buf[8] = 1024;
            *&buf[10] = 0;
            *&buf[14] = 2080;
            *&buf[16] = v32;
            *&buf[24] = 2080;
            *&buf[26] = v36;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Process state updated: Terminated, PID changed:%u to %u, %s to %s", buf, 0x22u);
            goto LABEL_153;
        }
      }

      v36 = "unknown";
      goto LABEL_152;
    }

    v39 = v8;
    if (v40 <= 7)
    {
      if (v40 == 2)
      {
        v15 = "terminated";
        goto LABEL_27;
      }

      if (v40 == 4)
      {
        v15 = "suspended";
        goto LABEL_27;
      }
    }

    else
    {
      switch(v40)
      {
        case 8:
          v15 = "background-running";
          goto LABEL_27;
        case 16:
          v15 = "foreground-running";
          goto LABEL_27;
        case 32:
          v15 = "daemon";
          goto LABEL_27;
      }
    }

    v15 = "unknown";
LABEL_27:
    v16 = [BTAppInteraction RBSTaskStateToString:v11];
    if (v39 <= 7)
    {
      if (v39 == 2)
      {
        v17 = "terminated";
        goto LABEL_39;
      }

      if (v39 == 4)
      {
        v17 = "suspended";
        goto LABEL_39;
      }
    }

    else
    {
      switch(v39)
      {
        case 8:
          v17 = "background-running";
          goto LABEL_39;
        case 16:
          v17 = "foreground-running";
          goto LABEL_39;
        case 32:
          v17 = "daemon";
LABEL_39:
          v18 = [BTAppInteraction RBSTaskStateToString:v13];
          v19 = v47[5];
          *buf = 67110402;
          *&buf[4] = v4;
          *&buf[8] = 2080;
          *&buf[10] = v15;
          *&buf[18] = 2112;
          *&buf[20] = v16;
          *&buf[28] = 2080;
          *&buf[30] = v17;
          v53 = 2112;
          v54 = v18;
          v55 = 2112;
          v56 = v19;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "runningBoardApplicationStateChanged Process[%u] state updated %s(%@) to %s(%@) for %@", buf, 0x3Au);

          v8 = v39;
          goto LABEL_40;
      }
    }

    v17 = "unknown";
    goto LABEL_39;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A83C();
  }

LABEL_164:
}

void sub_1007DD078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_1007DD178(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 40);
  v9 = v7;
  if (v8 == [v7 pid])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1007DD36C(uint64_t a1)
{
  v2 = [*(a1 + 32) bundle];
  v3 = [v2 identifier];

  v4 = [*(a1 + 32) pid];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100042544;
  v26 = sub_1000426CC;
  v27 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v3];
  v5 = v23[5];
  if (v5 || (v6 = *(*(a1 + 40) + 40), v20[0] = _NSConcreteStackBlock, v20[1] = 3221225472, v20[2] = sub_1007DD6FC, v20[3] = &unk_100B0E300, v21 = v4, v20[4] = &v22, [v6 enumerateKeysAndObjectsUsingBlock:v20], (v5 = v23[5]) != 0))
  {
    if ([v5 isExtension])
    {
      v7 = [*(a1 + 48) status];
      v8 = [v7 domain];
      v9 = [v7 domain];
      [v23[5] setExitReasonDomain:v9];
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v23[5];
        v12 = v3;
        v13 = [v3 UTF8String];
        v14 = [v7 domain];
        v15 = "terminated";
        *buf = 138413058;
        v29 = v11;
        v30 = 2082;
        if (v8 == 10)
        {
          v15 = "killed by the user";
        }

        v31 = v13;
        v32 = 2082;
        v33 = v15;
        v34 = 1024;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ Process %{public}s has been %{public}s with reason [%d]", buf, 0x26u);
      }

      if ([v23[5] isExtension])
      {
        v16 = *(*(a1 + 40) + 8);
        if (v16)
        {
          v17 = v3;
          sub_100007E30(__p, [v3 UTF8String]);
          (*(*v16 + 16))(v16, __p, v8 == 10);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A928();
  }

  _Block_object_dispose(&v22, 8);
}

void sub_1007DD684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

void sub_1007DD6FC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(a1 + 40);
  v9 = v7;
  if (v8 == [v7 pid])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1007DD988(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 setIsApp:1];
    [v3 setSupportsBackgroundedCentrals:1];
  }

  else
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10087A5C8([*(a1 + 40) UTF8String], &v5);
    }
  }
}

void sub_1007DDB14(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 setIsApp:1];
    [v3 setSupportsBackgroundedPeripherals:1];
  }

  else
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10087A5C8([*(a1 + 40) UTF8String], &v5);
    }
  }
}

void sub_1007DDCD8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    if ([v2 isApp])
    {
      if ([v3 isAlive])
      {
        if ([v3 getAppState] == 1)
        {
          v4 = [*(a1 + 32) translateApplicationState:{objc_msgSend(*(*(a1 + 32) + 48), "applicationStateForApplication:", *(a1 + 40))}];
        }

        else
        {
          v4 = [v3 getAppState];
        }

        *(*(*(a1 + 48) + 8) + 24) = v4;
        goto LABEL_18;
      }

      v7 = *(*(a1 + 48) + 8);
      v8 = 2;
    }

    else
    {
      if ([v3 isExtension])
      {
        v6 = qword_100BCE8D8;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_10087A9D4([*(a1 + 40) UTF8String], v9);
        }
      }

      v7 = *(*(a1 + 48) + 8);
      v8 = 32;
    }

    *(v7 + 24) = v8;
    goto LABEL_18;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10087A5C8([*(a1 + 40) UTF8String], v9);
  }

LABEL_18:
}

void sub_1007DDF14(uint64_t a1)
{
  v2 = BKSApplicationStateKey;
  v3 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateKey];
  v61 = [v3 intValue];

  v63 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
  v4 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateProcessIDKey];
  v5 = [v4 intValue];

  v6 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateExtensionKey];
  v58 = v5;
  v60 = [v6 BOOLValue];

  v7 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v63];
  v62 = v7;
  if (!v7)
  {
    if (!v63)
    {
      goto LABEL_116;
    }

    v21 = qword_100BCE9E0;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

    v22 = [*(a1 + 40) translateApplicationState:v61];
    if (v22 <= 7)
    {
      if (v22 == 2)
      {
        v23 = "terminated";
        goto LABEL_77;
      }

      if (v22 == 4)
      {
        v23 = "suspended";
        goto LABEL_77;
      }
    }

    else
    {
      switch(v22)
      {
        case 8:
          v23 = "background-running";
          goto LABEL_77;
        case 16:
          v23 = "foreground-running";
          goto LABEL_77;
        case 32:
          v23 = "daemon";
LABEL_77:
          v47 = "";
          *buf = 138413058;
          v77 = v63;
          v78 = 1024;
          if (v60)
          {
            v47 = " (Is an extension)";
          }

          *v79 = v58;
          *&v79[4] = 2080;
          *&v79[6] = v23;
          v80 = 2080;
          v81 = v47;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ [%d] is not in the application map. State: %s%s", buf, 0x26u);
LABEL_80:

          goto LABEL_115;
      }
    }

    v23 = "unknown";
    goto LABEL_77;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v77 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "applicationStateChanged %@", buf, 0xCu);
  }

  v59 = [*(a1 + 40) translateApplicationState:v61];
  v9 = *(a1 + 32);
  v10 = [v9 objectForKeyedSubscript:v2];
  v11 = [v10 intValue];

  if (v11 == 4)
  {
    [v9 objectForKeyedSubscript:BKSApplicationStateRunningReasonsKey];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v12 = v73 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v72 objects:buf count:16];
    if (v13)
    {
      v14 = *v73;
      v15 = BKSApplicationStateRunningReasonAssertionReasonKey;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v73 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v72 + 1) + 8 * i) objectForKeyedSubscript:v15];
          v18 = [v17 unsignedIntValue];

          if (v18 == 16 || v18 == 50004)
          {
            v20 = 1;
            goto LABEL_27;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v72 objects:buf count:16];
        v20 = 0;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_27:
  }

  else
  {
    v20 = 0;
  }

  if (([v62 isExtension] & 1) == 0 && v60 | v20)
  {
    v24 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v77 = v63;
      v78 = 1024;
      *v79 = v60;
      *&v79[4] = 1024;
      *&v79[6] = v20;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Overriding bundle %@ state to foregroundRunning isExtension:%d isAssertionReasonWatchConnectivity:%d", buf, 0x18u);
    }

    v59 = 16;
  }

  if (v61 != 1)
  {
    if ([v62 pid])
    {
      v34 = qword_100BCE9E0;
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_88:

        goto LABEL_97;
      }

      v35 = v63;
      v36 = [v63 UTF8String];
      v37 = [v62 pid];
      if (v59 <= 7)
      {
        if (v59 == 2)
        {
          v38 = "terminated";
          goto LABEL_85;
        }

        if (v59 == 4)
        {
          v38 = "suspended";
          goto LABEL_85;
        }
      }

      else
      {
        switch(v59)
        {
          case 8:
            v38 = "background-running";
            goto LABEL_85;
          case 16:
            v38 = "foreground-running";
            goto LABEL_85;
          case 32:
            v38 = "daemon";
LABEL_85:
            v48 = [v62 isAlive];
            v49 = "false";
            *buf = 136446978;
            v77 = v36;
            v78 = 1024;
            if (v48)
            {
              v49 = "true";
            }

            *v79 = v37;
            *&v79[4] = 2082;
            *&v79[6] = v38;
            v80 = 2080;
            v81 = v49;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Application %{public}s is still at pid %d, with state %{public}s, isAlive: %s", buf, 0x26u);
            goto LABEL_88;
        }
      }

      v38 = "unknown";
      goto LABEL_85;
    }

    [v62 setPid:v58];
    v39 = qword_100BCE9E0;
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
LABEL_96:

      [*(a1 + 40) takeAssertionForProcess:v63 duration:10 isUrgent:0];
LABEL_97:
      v52 = qword_100BCE9E0;
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_111;
      }

      v53 = v63;
      v54 = [v63 UTF8String];
      if (v59 <= 7)
      {
        if (v59 == 2)
        {
          v55 = "terminated";
          goto LABEL_110;
        }

        if (v59 == 4)
        {
          v55 = "suspended";
          goto LABEL_110;
        }
      }

      else
      {
        switch(v59)
        {
          case 8:
            v55 = "background-running";
            goto LABEL_110;
          case 16:
            v55 = "foreground-running";
            goto LABEL_110;
          case 32:
            v55 = "daemon";
LABEL_110:
            *buf = 136446466;
            v77 = v54;
            v78 = 2082;
            *v79 = v55;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "State of application %{public}s is now %{public}s", buf, 0x16u);
LABEL_111:

            v7 = v62;
            if ([v62 isExtension])
            {
              goto LABEL_116;
            }

            [v62 setAppState:v59];
            if (!*(*(a1 + 40) + 8) || ([v62 isExtension] & 1) != 0)
            {
              goto LABEL_116;
            }

            v64[0] = _NSConcreteStackBlock;
            v64[1] = 3221225472;
            v64[2] = sub_1007DECC8;
            v64[3] = &unk_100AE2550;
            v56 = v62;
            v57 = *(a1 + 40);
            v65 = v56;
            v66 = v57;
            v67 = v63;
            dispatch_async(&_dispatch_main_q, v64);

LABEL_115:
            v7 = v62;
            goto LABEL_116;
        }
      }

      v55 = "unknown";
      goto LABEL_110;
    }

    v40 = v63;
    v41 = [v63 UTF8String];
    v42 = [v62 pid];
    if (v59 <= 7)
    {
      if (v59 == 2)
      {
        v43 = "terminated";
        goto LABEL_93;
      }

      if (v59 == 4)
      {
        v43 = "suspended";
        goto LABEL_93;
      }
    }

    else
    {
      switch(v59)
      {
        case 8:
          v43 = "background-running";
          goto LABEL_93;
        case 16:
          v43 = "foreground-running";
          goto LABEL_93;
        case 32:
          v43 = "daemon";
LABEL_93:
          v50 = [v62 isAlive];
          v51 = "false";
          *buf = 136446978;
          v77 = v41;
          v78 = 1024;
          if (v50)
          {
            v51 = "true";
          }

          *v79 = v42;
          *&v79[4] = 2082;
          *&v79[6] = v43;
          v80 = 2080;
          v81 = v51;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Application %{public}s is now at pid %d, with state %{public}s, isAlive: %s", buf, 0x26u);
          goto LABEL_96;
      }
    }

    v43 = "unknown";
    goto LABEL_93;
  }

  if ([v62 isExtension])
  {
    goto LABEL_97;
  }

  v25 = [*(a1 + 32) objectForKeyedSubscript:BKSApplicationStateExitReasonKey];
  v26 = [v25 unsignedIntValue];

  v27 = qword_100BCE9E0;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v63;
    v29 = [v63 UTF8String];
    v30 = "terminated";
    if (v26 == 1)
    {
      v30 = "killed by the user";
    }

    *buf = 136446466;
    v77 = v29;
    v78 = 2082;
    *v79 = v30;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Application %{public}s has been %{public}s", buf, 0x16u);
  }

  [v62 setPid:0];
  if (*(*(a1 + 40) + 8))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007DEB5C;
    block[3] = &unk_100AE2470;
    v31 = v63;
    v71 = v26 == 1;
    v32 = *(a1 + 40);
    v69 = v31;
    v70 = v32;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (v26 != 1)
  {
    v44 = [*(*(a1 + 40) + 112) objectForKey:v63];
    v45 = qword_100BCE9E0;
    v46 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
    if (v44)
    {
      if (v46)
      {
        *buf = 138543362;
        v77 = v63;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Found bundleID in launch queue, attempting to resurrect - %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) openBundle:v63 options:v44 attempt:0];
      [*(*(a1 + 40) + 112) removeObjectForKey:v63];
    }

    else if (v46)
    {
      *buf = 138543362;
      v77 = v63;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "BundleID not in launch queue - not resurrecting: %{public}@", buf, 0xCu);
    }

    goto LABEL_115;
  }

  v33 = qword_100BCE9E0;
  v7 = v62;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v77 = v63;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "bundleID %{public}@ in launch queue but won't resurrect. Reason: killed by user.", buf, 0xCu);
  }

LABEL_116:
}

void sub_1007DEB5C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4 = "terminated";
    if (*(a1 + 48))
    {
      v4 = "killed by the user";
    }

    *buf = 136446466;
    v9 = v3;
    v10 = 2082;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "applicationStateChanged Process %{public}s has been %{public}s", buf, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  (*(*v5 + 16))(v5, __p, *(a1 + 48));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007DECC8(uint64_t a1)
{
  v2 = [*(a1 + 32) getAppState];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 8);
  sub_100007E30(__p, [v3 UTF8String]);
  (**v4)(v4, __p, v2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007DED6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007DEE64(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    if ([v2 isExtension])
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v4 = [v6 isApp];
    v3 = v6;
    if (v4)
    {
      if (*(a1 + 56) == 1)
      {
        v5 = [v6 supportsBackgroundedCentrals];
      }

      else
      {
        v5 = [v6 supportsBackgroundedPeripherals];
      }

      *(*(*(a1 + 48) + 8) + 24) = v5;
      v3 = v6;
    }
  }
}

void sub_1007DEFD4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (([v2 isApp] & 1) == 0)
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10087AA18([*(a1 + 40) UTF8String], &v13);
    }

    goto LABEL_15;
  }

  if ([v2 isExtension])
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (![v2 pid])
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10087AA50([*(a1 + 40) UTF8String], v17);
    }
  }

  v4 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 40) UTF8String];
      v13 = 134218242;
      v14 = v6;
      v15 = 2082;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attempting to add %lu seconds to process assertion for application %{public}s", &v13, 0x16u);
    }

    [v4 setSecondsLeft:{objc_msgSend(v4, "secondsLeft") + *(a1 + 48)}];
    if ([v4 secondsLeft] > 9)
    {
      v8 = 10;
    }

    else
    {
      v8 = [v4 secondsLeft];
    }

    [v4 setSecondsLeft:v8];
  }

  else
  {
    [*(a1 + 32) createAssertionForBundleID:*(a1 + 40) duration:*(a1 + 48) isUrgent:0 withPid:{objc_msgSend(v2, "pid")}];
  }

  if (*(a1 + 56) == 1 && [v2 requiresUrgentAssertion])
  {
    [*(a1 + 32) disableHIP];
    v11 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];

    v10 = v11;
    if (v11)
    {
      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "(EE) Refreshing URGENT Process Assertion", &v13, 2u);
      }

      [v11 setSecondsLeft:3];
    }

    else
    {
      v10 = 0;
      [*(a1 + 32) createAssertionForBundleID:*(a1 + 40) duration:3 isUrgent:1 withPid:{objc_msgSend(v2, "pid")}];
    }
  }

  else
  {
    v10 = v4;
  }

LABEL_16:
}

void sub_1007DF6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(v22);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1007DF758(uint64_t a1)
{
  v3 = +[BTAppInteraction instance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 urgentAssertionInvalidationCallback:WeakRetained];
}

void sub_1007DF7DC(uint64_t a1)
{
  v3 = +[BTAppInteraction instance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 assertionInvalidationCallback:WeakRetained];
}

void sub_1007DF8F8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v7 = [*(a1 + 40) name];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 96);
    v8 = [v5 name];
    [v6 removeObjectForKey:?];
  }
}

void sub_1007DFA60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = [*(a1 + 40) name];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) name];
      v11 = 136446210;
      v12 = [v7 UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removing invalidated process assertion for application %{public}s", &v11, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 88);
    v10 = [v8 name];
    [v9 removeObjectForKey:v10];
  }
}

void sub_1007DFDE8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) keysOfEntriesPassingTest:&stru_100B0E3B8];
  v3 = *(*(a1 + 32) + 88);
  v4 = [v2 allObjects];
  [v3 removeObjectsForKeys:v4];

  v7 = [*(*(a1 + 32) + 96) keysOfEntriesPassingTest:&stru_100B0E3D8];

  v5 = *(*(a1 + 32) + 96);
  v6 = [v7 allObjects];
  [v5 removeObjectsForKeys:v6];

  if (![*(*(a1 + 32) + 88) count] && !objc_msgSend(*(*(a1 + 32) + 96), "count"))
  {
    [*(a1 + 32) invalidateAssertionTimer];
  }
}

BOOL sub_1007DFF30(id a1, NSString *a2, ProcessAssertion *a3, BOOL *a4)
{
  v4 = a3;
  [(ProcessAssertion *)v4 setSecondsLeft:[(ProcessAssertion *)v4 secondsLeft]- 1];
  v5 = [(ProcessAssertion *)v4 secondsLeft];
  if (!v5)
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ProcessAssertion *)v4 name];
      v9 = 136446210;
      v10 = [v7 UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removing expired process assertion for application %{public}s", &v9, 0xCu);
    }

    [(ProcessAssertion *)v4 invalidate];
  }

  return v5 == 0;
}

BOOL sub_1007E006C(id a1, NSString *a2, ProcessAssertion *a3, BOOL *a4)
{
  v4 = a3;
  [(ProcessAssertion *)v4 setSecondsLeft:[(ProcessAssertion *)v4 secondsLeft]- 1];
  v5 = [(ProcessAssertion *)v4 secondsLeft];
  if (!v5)
  {
    [(ProcessAssertion *)v4 invalidate];
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "(EE) Expired URGENT Process Assertion", v8, 2u);
    }
  }

  return v5 == 0;
}

void sub_1007E02BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (*(a1 + 48) != 1 || ([v2 isApp]) && !*(*(a1 + 32) + 64))
  {
    v4 = [[UserNotification alloc] initWithType:0 device:0 bundleID:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v7 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 40)];
    v8 = [v7 localizedNameForContext:0];
    v22 = sub_100438B14(@"CLOSE", @"Close");
    v9 = sub_100438B14(@"SETTINGS", @"Settings");
    if (*(a1 + 49) == 1)
    {
      v10 = sub_100438B14(@"LE_DENYLIST_ENABLED_HEADER", @"Allow New Connections");
      v24 = 0;
      v11 = v8;
      if (!v8)
      {
        v11 = *(a1 + 40);
      }

      v12 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v24, v11];
      v13 = v24;

      if (v12)
      {
        v14 = sub_100438B14(@"LE_DENYLIST_ENABLED_BODY", &stru_100B0F9E0);
        v28[0] = kCFUserNotificationAlertHeaderKey;
        v28[1] = kCFUserNotificationAlertMessageKey;
        v29[0] = v12;
        v29[1] = v14;
        v28[2] = kCFUserNotificationDefaultButtonTitleKey;
        v28[3] = kCFUserNotificationAlternateButtonTitleKey;
        v29[2] = v22;
        v29[3] = v9;
        v28[4] = SBUserNotificationAllowMenuButtonDismissal;
        v29[4] = &__kCFBooleanTrue;
        v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:5];

        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087ABA0();
      }
    }

    else
    {
      v16 = sub_100438B14(@"LE_POWER_OFF_HEADER", @"Power Off");
      v23 = 0;
      v17 = v8;
      if (!v8)
      {
        v17 = *(a1 + 40);
      }

      v12 = [NSString stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v23, v17];
      v13 = v23;

      if (v12)
      {
        v26[0] = kCFUserNotificationAlertHeaderKey;
        v26[1] = kCFUserNotificationDefaultButtonTitleKey;
        v27[0] = v12;
        v27[1] = v22;
        v26[2] = kCFUserNotificationAlternateButtonTitleKey;
        v26[3] = SBUserNotificationAllowMenuButtonDismissal;
        v27[2] = v9;
        v27[3] = &__kCFBooleanTrue;
        v15 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
LABEL_13:
        v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v15);
        if (v18)
        {
          [*(*(a1 + 32) + 64) setNotification:v18];
          CFRelease(v18);
          RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v18, sub_1007E0848, 0);
          if (RunLoopSource)
          {
            [*(*(a1 + 32) + 64) setRunLoopSource:RunLoopSource];
            CFRelease(RunLoopSource);
          }

          else
          {
            v21 = qword_100BCE8D8;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_10087AB30([*(a1 + 40) UTF8String], v25);
            }
          }

          v13 = v15;
        }

        else
        {
          v20 = qword_100BCE8D8;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10087AB68([*(a1 + 40) UTF8String], v25);
          }
        }

        goto LABEL_28;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087AAC0();
      }
    }

    v12 = 0;
LABEL_28:
  }
}

void sub_1007E0848(uint64_t a1, uint64_t a2)
{
  v4 = +[BTAppInteraction instance];
  [v4 powerAlertCallback:a1 flags:a2];
}

void sub_1007E0930(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 64) bundleID];
    v4 = [v3 UTF8String];
    v5 = *(a1 + 40);
    v6 = "unknown";
    if (v5 == 1)
    {
      v6 = "settings";
    }

    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = "cancel";
    }

    v12 = 136446466;
    v13 = v4;
    v14 = 2082;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User responded to power notification callback for application %{public}s with %{public}s button", &v12, 0x16u);
  }

  if (*(a1 + 40) == 1)
  {
    v8 = +[LSApplicationWorkspace defaultWorkspace];
    v9 = [NSURL URLWithString:@"prefs:root=Bluetooth"];
    [v8 openSensitiveURL:v9 withOptions:0];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  *(v10 + 64) = 0;
}

void sub_1007E0BA8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if ([v2 isApp])
  {
    v26 = [[UserNotification alloc] initWithType:*(a1 + 56) device:*(a1 + 48) bundleID:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 72);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1007E1274;
    v28[3] = &unk_100B0E400;
    v29 = *(a1 + 40);
    v4 = [v3 indexOfObjectPassingTest:v28];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:v4];
      v5 = [(__CFString *)v24 device];
      if ([v5 isEqual:*(a1 + 48)])
      {
        v6 = *(a1 + 56) == 1;

        if (!v6)
        {
          log = qword_100BCE8D8;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v7 = [*(a1 + 40) UTF8String];
            *buf = 136446210;
            *&buf[4] = v7;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Suppressing duplicate notification for application %{public}s", buf, 0xCu);
          }

          goto LABEL_34;
        }
      }

      else
      {
      }

      [*(a1 + 32) cancelAppLaunchAlert:*(a1 + 40)];
    }

    if (*(a1 + 56) == 1)
    {
      v8 = @"APP_LAUNCH_HEADER_DISCONNECTED";
    }

    else
    {
      v8 = @"APP_LAUNCH_HEADER_GENERAL";
    }

    v24 = v8;
    log = sub_100438B14(v24, @"APP_LAUNCH_BODY");
    v9 = [(UserNotification *)v26 bundleID];
    v23 = [LSApplicationProxy applicationProxyForIdentifier:v9];

    v10 = [v23 localizedNameForContext:0];
    v11 = v10;
    if (!v10)
    {
      v11 = *(a1 + 40);
    }

    v12 = v11;
    if (qword_100B508D0 != -1)
    {
      sub_10087AC10();
    }

    sub_10004FFDC(off_100B508C8, *(a1 + 48), buf);
    if (v33 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = [NSString stringWithUTF8String:v13];
    if (v33 < 0)
    {
      operator delete(*buf);
    }

    v27 = 0;
    v15 = [NSString stringWithValidatedFormat:log validFormatSpecifiers:@"%@%@" error:&v27, v14, v12];
    v22 = v27;
    if (!v15)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087ACA8();
      }

      goto LABEL_33;
    }

    v21 = sub_100438B14(@"CLOSE", @"Close");
    v16 = sub_100438B14(@"VIEW", @"View");
    v30[0] = kCFUserNotificationAlertHeaderKey;
    v30[1] = kCFUserNotificationAlertMessageKey;
    v31[0] = v12;
    v31[1] = v15;
    v30[2] = kCFUserNotificationDefaultButtonTitleKey;
    v30[3] = kCFUserNotificationAlternateButtonTitleKey;
    v30[4] = kCFUserNotificationAlertTopMostKey;
    v30[5] = SBUserNotificationDontDismissOnUnlock;
    v31[4] = &__kCFBooleanTrue;
    v31[5] = &__kCFBooleanTrue;
    v30[6] = SBUserNotificationButtonTagForUnlockActionKey;
    v30[7] = SBUserNotificationSoundRepeatDurationKey;
    v31[2] = v16;
    v31[3] = v21;
    v31[6] = &off_100B33D20;
    v31[7] = &off_100B33D38;
    v30[8] = SBUserNotificationSystemSoundIDKey;
    v31[8] = &off_100B33D50;
    v17 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:9];
    v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v17);
    if (v18)
    {
      [(UserNotification *)v26 setNotification:v18];
      CFRelease(v18);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v18, sub_1007E12C8, 0);
      if (RunLoopSource)
      {
        [(UserNotification *)v26 setRunLoopSource:RunLoopSource];
        CFRelease(RunLoopSource);
        [*(*(a1 + 32) + 72) addObject:v26];
LABEL_32:

LABEL_33:
LABEL_34:

        goto LABEL_35;
      }

      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10087AC38([*(a1 + 40) UTF8String], buf);
      }
    }

    else
    {
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10087AC70([*(a1 + 40) UTF8String], buf);
      }
    }

    goto LABEL_32;
  }

LABEL_35:
}

id sub_1007E1274(uint64_t a1, void *a2)
{
  v3 = [a2 bundleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1007E12C8(uint64_t a1, uint64_t a2)
{
  v4 = +[BTAppInteraction instance];
  [v4 appLaunchCallback:a1 flags:a2];
}

void sub_1007E13D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007E149C;
  v4[3] = &unk_100B0E400;
  v5 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v4];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 72) removeObjectAtIndex:v3];
  }
}

id sub_1007E149C(uint64_t a1, void *a2)
{
  v3 = [a2 bundleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1007E1568(void *a1)
{
  v2 = *(a1[4] + 72);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1007E18F0;
  v24[3] = &unk_100B0E420;
  v24[4] = a1[5];
  v3 = [v2 indexOfObjectPassingTest:v24];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10087AD18();
    }
  }

  else
  {
    v4 = [*(a1[4] + 72) objectAtIndexedSubscript:v3];
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 bundleID];
      v7 = v6;
      v8 = [v6 UTF8String];
      v9 = a1[6];
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = "cancel";
        }

        else
        {
          v11 = [&off_100B33D20 intValue];
          v10 = "unknown";
          if (v9 == v11)
          {
            v10 = "unlock";
          }
        }
      }

      else
      {
        v10 = "default";
      }

      *buf = 136446466;
      v26 = v8;
      v27 = 2082;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User responded to app launch notification callback for application %{public}s with %{public}s button", buf, 0x16u);
    }

    v12 = a1[6];
    if (!v12 || v12 == [&off_100B33D20 intValue])
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v4 bundleID];
        v15 = v14;
        v16 = [v14 UTF8String];
        *buf = 136446210;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to launch application %{public}s", buf, 0xCu);
      }

      v17 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v18 = [v4 bundleID];
      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_1007E1924;
      v22 = &unk_100B0E448;
      v23 = v4;
      [v17 openApplication:v18 withOptions:0 completion:&v19];
    }

    [*(a1[4] + 72) removeObjectAtIndex:{v3, v19, v20, v21, v22}];
  }
}

void sub_1007E1924(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) bundleID];
      v9 = [NSString stringWithFormat:@"Failed to launch application %@ with error %@", v8, v6];
      *buf = 136446210;
      v15 = [v9 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    v10 = [v5 isValid];
    v11 = qword_100BCE8D8;
    v7 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) bundleID];
        *buf = 136446466;
        v15 = [v12 UTF8String];
        v16 = 1026;
        v17 = [v5 pid];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Launched application: %{public}s, pid: %{public}ul", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) bundleID];
      *buf = 136446210;
      v15 = [v13 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to lookup the process ID of %{public}s", buf, 0xCu);
    }
  }
}

void sub_1007E1CCC(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40) || (v2 = *(*(a1 + 32) + 80), v3 = -[PairingNotification initWithType:passkey:device:]([PairingNotification alloc], "initWithType:passkey:device:", *(a1 + 56), *(a1 + 48), *(*(*(a1 + 40) + 8) + 40)), [v2 addObject:v3], v3, objc_msgSend(*(*(a1 + 32) + 80), "count") < 2))
  {
    if ([*(*(a1 + 32) + 80) count])
    {
      v6 = [*(*(a1 + 32) + 80) objectAtIndexedSubscript:0];
      v7 = v6;
      if (v6 && ![v6 notification])
      {
        buf = 0uLL;
        v81 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10087AD94();
        }

        v8 = off_100B508C8;
        v9 = [v7 device];
        sub_10004FFDC(v8, v9, v77);
        if ((v79 & 0x80u) == 0)
        {
          v10 = v79;
        }

        else
        {
          v10 = v78;
        }

        if (v10)
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v11 = off_100B508C8;
          v12 = [v7 device];
          sub_10004FFDC(v11, v12, &buf);
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v13 = off_100B508C8;
          v12 = [v7 device];
          v14 = sub_100046458(v13, v12, 0);
          v15 = sub_100063D0C(v14);
          v16 = v15;
          sub_100007E30(&buf, [v15 UTF8String]);
        }

        if (v79 < 0)
        {
          operator delete(*v77);
        }

        v61 = sub_100438B14(@"PAIRING_TITLE", @"Pairing");
        v58 = sub_100438B14(@"CANCEL", @"Cancel");
        v57 = sub_100438B14(@"PAIR", @"Pair");
        if (v81 >= 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        v59 = [NSString stringWithUTF8String:p_buf];
        v60 = MGCopyAnswer();
        v75[0] = kCFUserNotificationAlertTopMostKey;
        v75[1] = SBUserNotificationAllowMenuButtonDismissal;
        v76[0] = &__kCFBooleanTrue;
        v76[1] = &__kCFBooleanTrue;
        v75[2] = SBUserNotificationDismissOnLock;
        v75[3] = kCFUserNotificationAlertHeaderKey;
        v76[2] = &__kCFBooleanTrue;
        v76[3] = v61;
        v18 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:4];
        dictionary = [v18 mutableCopy];

        v21 = sub_10000C798(v19, v20);
        v22 = (*(*v21 + 392))(v21);
        v23 = v22;
        v25 = sub_10000C798(v22, v24);
        v26 = (*(*v25 + 296))(v25);
        if (qword_100B508D0 != -1)
        {
          sub_10087AC10();
        }

        v27 = off_100B508C8;
        v28 = [v7 device];
        v29 = sub_10078DEFC(v27, v28);

        v30 = [v7 pairingType];
        v31 = 0;
        v63 = &stru_100B0F9E0;
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v43 = sub_100438B14(@"PASSKEY_ENTRY_MESSAGE", @"Body");
            v65 = 0;
            v63 = [NSString stringWithValidatedFormat:v43 validFormatSpecifiers:@"%@%@%@%@" error:&v65, v59, v60, v59, v59];
            v31 = v65;

            if (!v63)
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_10087AE18();
              }

              goto LABEL_59;
            }

            v33 = v57;
            v32 = v58;
            v73[0] = kCFUserNotificationTextFieldTitlesKey;
            v73[1] = kCFUserNotificationKeyboardTypesKey;
            v74[0] = &stru_100B0F9E0;
            v74[1] = &off_100B33D68;
            v44 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
            [(__CFDictionary *)dictionary addEntriesFromDictionary:v44];

LABEL_70:
            [(__CFDictionary *)dictionary setObject:v63 forKey:kCFUserNotificationAlertMessageKey];
            if (v33)
            {
              [(__CFDictionary *)dictionary setObject:v33 forKey:kCFUserNotificationDefaultButtonTitleKey];
            }

            if (v32)
            {
              [(__CFDictionary *)dictionary setObject:v32 forKey:kCFUserNotificationAlternateButtonTitleKey];
            }

            v52 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x10003uLL, 0, dictionary);
            if (v52)
            {
              [v7 setNotification:v52];
              CFRelease(v52);
              RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v52, sub_1007E2B5C, 0);
              if (RunLoopSource)
              {
                [v7 setRunLoopSource:RunLoopSource];
                CFRelease(RunLoopSource);
                goto LABEL_83;
              }

              v54 = qword_100BCE8D8;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v56 = [v7 device];
                sub_10087AFD8(v56, v77);
              }
            }

            else
            {
              v54 = qword_100BCE8D8;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = [v7 device];
                sub_10087B020(v55, v77);
              }
            }

            [*(*(a1 + 32) + 80) removeObjectAtIndex:0];
LABEL_83:

            if (SHIBYTE(v81) < 0)
            {
              operator delete(buf);
            }

            goto LABEL_18;
          }

          v32 = 0;
          v33 = 0;
          if (v30 != 4)
          {
            goto LABEL_70;
          }

          v35 = sub_100438B14(@"NUMERIC_MESSAGE", @"Body");
          v64 = 0;
          v63 = +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", v35, @"%@%@%06u%@", &v64, v59, v60, [v7 passkey], v59, v57, v58);
          v31 = v64;

          if (!v63)
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_10087ADA8();
            }

            goto LABEL_59;
          }

LABEL_69:
          v33 = v57;
          v32 = v58;
          goto LABEL_70;
        }

        if (v30)
        {
          v32 = 0;
          v33 = 0;
          if (v30 != 1)
          {
            goto LABEL_70;
          }

          v34 = sub_100438B14(@"PASSKEY_DISPLAY_MESSAGE", @"Body");
          v66 = 0;
          v63 = +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", v34, @"%@%@%06u%@", &v66, v59, v60, [v7 passkey], v59, v57);
          v31 = v66;

          if (v63)
          {
            v33 = v58;
            v32 = 0;
            goto LABEL_70;
          }

          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10087AE88();
          }

LABEL_59:
          v32 = 0;
          v33 = 0;
          v63 = 0;
          goto LABEL_83;
        }

        v36 = sub_100438B14(@"JUST_WORKS_MESSAGE", @"Body");
        v72 = 0;
        v63 = [NSString stringWithValidatedFormat:v36 validFormatSpecifiers:@"%@%@" error:&v72, v59, v60];
        v31 = v72;

        if (!v63)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10087AF68();
          }

          goto LABEL_59;
        }

        if ((v23 & v26 & v29) != 1)
        {
          goto LABEL_69;
        }

        v37 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Pairing LE HID with old iPad. Show modified message", v77, 2u);
        }

        if (_os_feature_enabled_impl())
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v38 = off_100B508C8;
          v39 = [v7 device];
          sub_10078380C(v38, v39, @"HIDDeviceUnknownBehavior");

          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v40 = off_100B508C8;
          v41 = [v7 device];
          sub_100007E30(v70, "HIDDeviceKnownPoorBehavior");
          sub_10078787C(v40, v41, v70);
          if ((v71 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v42 = v70;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10087AC10();
          }

          v45 = off_100B508C8;
          v41 = [v7 device];
          sub_100007E30(v68, "HIDDeviceUnknownBehavior");
          sub_10078787C(v45, v41, v68);
          if ((v69 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v42 = v68;
        }

        operator delete(*v42);
LABEL_65:

        v46 = MGGetBoolAnswer();
        v47 = @"WIFI";
        if (v46)
        {
          v47 = @"WLAN";
        }

        v48 = [NSString stringWithFormat:@"%@_JUST_WORKS_MESSAGE_HID_OLD", v47];
        v49 = sub_100438B14(v48, @"Body");
        v67 = v31;
        v50 = [NSString stringWithValidatedFormat:v49 validFormatSpecifiers:@"%@%@" error:&v67, v59, v60];
        v51 = v67;

        if (!v50)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10087AEF8();
          }

          v32 = 0;
          v33 = 0;
          v63 = 0;
          v31 = v51;
          goto LABEL_83;
        }

        v31 = v51;
        v63 = v50;
        goto LABEL_69;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_18:

    return;
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Waiting for current pairing prompt to go away before displaying prompt for device %@", &buf, 0xCu);
  }
}

void sub_1007E2920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1007E2B5C(uint64_t a1, uint64_t a2)
{
  v4 = +[BTAppInteraction instance];
  [v4 pairingAlertCallback:a1 flags:a2];
}

void sub_1007E2C68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 80);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1007E2D6C;
    v7[3] = &unk_100B059F8;
    v4 = v2;
    v5 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    [v3 enumerateObjectsUsingBlock:v7];
  }

  else
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Clearing all active pairing notifications", buf, 2u);
    }

    [*(*(a1 + 40) + 80) removeAllObjects];
  }
}

void sub_1007E2D6C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 device];
  v9 = [v8 isEqual:*(a1 + 32)];

  if (v9)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "queued";
      v12 = *(a1 + 32);
      if (!a3)
      {
        v11 = "active";
      }

      v13 = 136446466;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Clearing %{public}s pairing notification for device %@", &v13, 0x16u);
    }

    [*(*(a1 + 40) + 80) removeObjectAtIndex:a3];
    *a4 = 1;
  }
}

void sub_1007E2F30(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1007E33A8;
  v23[3] = &unk_100B0E420;
  v23[4] = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v23];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10087B090();
    }

    return;
  }

  v4 = [*(*(a1 + 32) + 80) objectAtIndexedSubscript:v3];
  v5 = [v4 pairingType];
  v6 = 0;
  v7 = 1;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v13 = CFUserNotificationGetResponseValue(*(a1 + 40), kCFUserNotificationTextFieldValuesKey, 0);
      v8 = v13;
      if (v13)
      {
        [v4 setPasskey:{-[NSObject intValue](v13, "intValue")}];
      }

      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 device];
        v16 = [v4 passkey];
        v17 = *(a1 + 48);
        v18 = [v4 pairingType];
        v19 = "unknown";
        *buf = 138413314;
        v25 = v15;
        if (v17 == 1)
        {
          v19 = "cancel";
        }

        v27 = v16;
        v28 = 2082;
        v26 = 2048;
        if (!v17)
        {
          v19 = "pair";
        }

        v29 = v19;
        v30 = 2048;
        v31 = v17;
        v32 = 1024;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User responded to pairing notification for device %@ with passkey %lu and %{public}s (%ld) button for pairing type:%d", buf, 0x30u);
      }

      v6 = 0;
      goto LABEL_25;
    }

    if (v5 == 4)
    {
LABEL_10:
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 device];
        v10 = *(a1 + 48);
        v11 = [v4 pairingType];
        v12 = "unknown";
        *buf = 138413058;
        v25 = v9;
        if (v10 == v7)
        {
          v12 = "cancel";
        }

        v26 = 2082;
        if (v10 == v6)
        {
          v12 = "pair";
        }

        v27 = v12;
        v28 = 2048;
        v29 = v10;
        v30 = 1024;
        LODWORD(v31) = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User responded to pairing notification for device %@ with %{public}s (%ld) button for pairing type:%d", buf, 0x26u);
      }

LABEL_25:
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      v7 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  if (qword_100B508C0 != -1)
  {
    sub_10087B068();
  }

  v20 = off_100B508B8;
  v21 = [v4 device];
  sub_1007BFA80(v20, v21, *(a1 + 48) == v6, [v4 passkey]);

  [*(*(a1 + 32) + 80) removeObjectAtIndex:v3];
  if ([*(*(a1 + 32) + 80) count] && *(*(a1 + 32) + 8))
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1007E33DC;
    v22[3] = &unk_100ADF820;
    v22[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v22);
  }
}

void sub_1007E33DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4 = [*(v1 + 80) objectAtIndexedSubscript:0];
  v3 = [v4 device];
  (*(*v2 + 24))(v2, v3);
}

void sub_1007E3968(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v20 = 0;
  v2 = [CBAccessoryLogging getProductNameFromProductID:*(a1 + 48)];
  v3 = [NSString stringWithFormat:@"%@ Issue Detected", v2];
  alertHeader = sub_100438B14(@"TITLE", v3);

  v4 = [NSString stringWithFormat:@"An issue was detected with your %@. Do you wish to file a radar with AirWave?", v2];
  v5 = sub_100438B14(@"CONTENT", v4);

  v6 = sub_100438B14(@"OPEN_AIRWAVE", @"Open AirWave");
  v7 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, alertHeader, v5, v6, v7, 0, &v20);
  if (v20)
  {
    if (v20 == 1)
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "displayAirWaveLaunchNotification: Dismissing crash log";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      }
    }

    else
    {
      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "displayAirWaveLaunchNotification: No response";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = [NSURLComponents componentsWithString:@"wayfinder://"];
    [v10 setHost:@"debug"];
    v11 = objc_opt_new();
    v12 = [[NSString alloc] initWithFormat:@"%u", *(a1 + 52)];
    v13 = [NSURLQueryItem queryItemWithName:@"opcode" value:v12];
    [v11 addObject:v13];

    v14 = [NSURLQueryItem queryItemWithName:@"findMySerialNumber" value:*(a1 + 40)];
    [v11 addObject:v14];

    [v10 setQueryItems:v11];
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 string];
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "displayAirWaveLaunchNotification: Launching AirWave with URL %{public}@", buf, 0xCu);
    }

    v17 = +[LSApplicationWorkspace defaultWorkspace];
    v18 = [v10 URL];
    [v17 openURL:v18 configuration:0 completionHandler:&stru_100B0E4B0];
  }

  *(*(a1 + 32) + 32) = 0;
}

void sub_1007E3DD8(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSError *)v5 description];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "displayAirWaveLaunchNotification: AirWave launch result %@, error %@", &v8, 0x16u);
  }
}

void sub_1007E42C4(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v10 = 0;
  v2 = sub_100438B14(@"FILE_A_RADAR", @"File a Radar");
  v3 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 40), *(a1 + 48), v2, v3, 0, &v10);
  if (v10)
  {
    if (v10 == 1)
    {
      if (qword_100B51308 != -1)
      {
        sub_10087B1E8();
      }

      v4 = sub_1004B22F4(qword_100B51300, a1 + 64, 6, 1u);
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "showFoundAccessoryCrashAlert: Dismissing crash log (result = %d)", buf, 8u);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10087B210();
    }
  }

  else
  {
    if (qword_100B51308 != -1)
    {
      sub_10087B1E8();
    }

    v6 = sub_1004B22F4(qword_100B51300, a1 + 64, 5, 1u);
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showFoundAccessoryCrashAlert: Requesting crash log (result = %d)", buf, 8u);
    }

    if (v6 == 312 || v6 == 12)
    {
      v8 = [NSString stringWithFormat:@"Crash retrieval failed as the connection to %@ has been lost.  You will be prompted again after you re-connect.", *(a1 + 56)];
      v9 = sub_100438B14(@"OK", @"OK");
      CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, @"No Longer Connected", v8, v9, 0, 0, &v10);
    }
  }

  *(*(a1 + 32) + 32) = 0;
}

void sub_1007E49B0(uint64_t a1)
{
  v5 = 0;
  v2 = sub_100438B14(@"FILE_A_RADAR", @"File a Radar");
  v3 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 32), *(a1 + 40), v2, v3, 0, &v5);
  if (!v5)
  {
    if (*(a1 + 72))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [*(a1 + 48) openTapToRadarWithAccessoryLogs:*(a1 + 56) reason:v4 pid:*(a1 + 64)];
  }
}

void sub_1007E4F5C(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v6 = 0;
  v2 = sub_100438B14(@"FILE_A_RADAR", @"File a Radar");
  v3 = sub_100438B14(@"NO_THANKS", @"No thanks");
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, *(a1 + 40), *(a1 + 48), v2, v3, 0, &v6);
  if (!v6)
  {
    if (qword_100B50950 != -1)
    {
      sub_10087B37C();
    }

    if (sub_100354C8C(off_100B50948, *(a1 + 76) | (*(a1 + 80) << 32)))
    {
      [*(a1 + 32) openTapToRadarWithAccessoryLogs:0 reason:*(a1 + 72) pid:*(a1 + 64)];
    }

    else
    {
      v4 = [NSString stringWithFormat:@"Your connection to the %@ does not exist not opening Tap-to-Radar.  Please re-connect your %@ and file a radar separately.", *(a1 + 56), *(a1 + 56)];;
      v5 = sub_100438B14(@"OK", @"OK");
      CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, @"No Longer Connected", v4, v5, 0, 0, &v6);
    }
  }

  *(*(a1 + 32) + 32) = 0;
}

void sub_1007E5B80(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087B414();
  }
}

void sub_1007E5D04(uint64_t a1)
{
  v24 = 0;
  CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, @"Your device has BT Issues", @"File a radar now?", @"OK", @"Cancel", 0, &v24);
  if (v24)
  {
    return;
  }

  v2 = *(a1 + 64);
  switch(v2)
  {
    case 0:
      v8 = @"tap-to-radar://new?Title=BT%20Controller%20Crashed&Classification=Crash%2FHang%2FData%20Loss";
      goto LABEL_9;
    case 2:
      v6 = sub_1007E60E4(*(a1 + 32));
      v4 = [@"tap-to-radar://new?Title=" stringByAppendingString:v6];

      v5 = [v4 stringByAppendingString:@"&Classification=Security"];
      goto LABEL_7;
    case 1:
      v3 = sub_1007E60E4(*(a1 + 32));
      v4 = [@"tap-to-radar://new?Title=BT%20Controller%20Error%20Found%3A%20" stringByAppendingString:v3];

      v5 = [v4 stringByAppendingString:@"&Classification=Crash%2FHang%2FData%20Loss"];
LABEL_7:
      v7 = v5;

      v8 = v7;
LABEL_9:
      v9 = [(__CFString *)v8 stringByAppendingString:@"&ComponentID="];

      v10 = [v9 stringByAppendingString:*(a1 + 40)];

      v11 = [v10 stringByAppendingString:@"&ComponentName="];

      v12 = sub_1007E60E4(*(a1 + 48));
      v13 = [v11 stringByAppendingString:v12];

      v14 = [v13 stringByAppendingString:@"&ComponentVersion="];

      v15 = sub_1007E60E4(*(a1 + 56));
      v16 = [v14 stringByAppendingString:v15];

      v17 = qword_100BCE8D8;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
        v19 = [v16 UTF8String];
        *buf = 136446210;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "btControllerTapToRadar: Launch TapToRadar URL : %{public}s", buf, 0xCu);
      }

      v20 = [NSURL URLWithString:v16];
      v21 = +[LSApplicationWorkspace defaultWorkspace];
      [v21 openURL:v20 configuration:0 completionHandler:&stru_100B0E568];

      return;
  }

  v22 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 64);
    *buf = 67109120;
    LODWORD(v26) = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Invalid Tap-To-Radar Type %d", buf, 8u);
  }
}

id sub_1007E60E4(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  return v3;
}

void sub_1007E647C()
{
  v0 = objc_autoreleasePoolPush();
  qword_100BC7D88 = [NSSet setWithObjects:@"d84ce3142fa61cd22beef74189754af4c0e56f9a98fa18ff2d9c84610585c349", @"df9a4ebeed75ee796aa09fc2a011436ecdb0ad20a3b3391f10dc279bfe16dfcd", @"2974cb2f2c08e11b8e5d536ab9c8ec5e519d9149adf767f522a371a2a57889eb", @"5781d21efafa3958b73feb2132b454fb069ee116bb771fb7f6581a14bbc551a4", @"feff0aa949da2316fad76d3431dd87a1c59b13b8ce55f3a122251a1eb95e9b2b", @"c6f6ecfedcc9004f2a083b1c187e68e7d3159fee8be3377c8f08b41adaab6bf9", @"056b468ef4a7246bf08d91d27fb80d6641211385e46c49231344c556b726d338", 0];

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1007E651C(uint64_t a1, uint64_t a2)
{
  result = sub_1000154A8(a1, a2);
  if (result)
  {
    v3 = *(*result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1007E6570(uint64_t a1, uint64_t a2)
{
  result = sub_1000154A8(a1, a2);
  if (result)
  {
    v3 = *(*result + 40);

    return v3();
  }

  return result;
}

uint64_t sub_1007E65E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  *a1 = off_100B0E6B0;
  *(a1 + 8) = &off_100B0E7C0;
  *(a1 + 16) = 0;
  v4 = sub_100007EE8(a1, a2);
  sub_100321440((a1 + 24), a1, "com.apple.BTServer.le", *(v4 + 8));
  sub_100321480(a1 + 24);
  v5 = objc_opt_new();
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;

  if (qword_100B50F78 != -1)
  {
    sub_10087B484();
  }

  sub_100580E68(qword_100B50F70, v3);
  return a1;
}

uint64_t sub_1007E66CC(uint64_t a1)
{
  *a1 = off_100B0E6B0;
  v2 = a1 + 8;
  *(a1 + 8) = &off_100B0E7C0;
  if (qword_100B50F78 != -1)
  {
    sub_10087B484();
  }

  sub_100580EFC(qword_100B50F70, v2);
  sub_10032147C(a1 + 24);

  return a1;
}

void sub_1007E6764(_Unwind_Exception *a1)
{
  sub_10032147C(v1 + 24);

  _Unwind_Resume(a1);
}

void sub_1007E6784(uint64_t a1)
{
  sub_1007E66CC(a1);

  operator delete();
}

void sub_1007E67C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
  sub_1003216CC(a1 + 24, "ConnectOnce", v4, 0);
}

void sub_1007E6898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = xpc_array_create(0, 0);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        *uuid = 0;
        v16 = 0;
        [v10 getUUIDBytes:{uuid, v11}];
        xpc_array_set_uuid(v5, 0xFFFFFFFFFFFFFFFFLL, uuid);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(v4, "kPeerIdentifiers", v5);
  xpc_release(v5);
  sub_1003216CC(a1 + 24, "ConnectAlways", v4, 0);
}

void sub_1007E6A48(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "kPiconetClock", a2);
  xpc_dictionary_set_uint64(v6, "kPiconetPhaseClock", a3);

  sub_1003216CC(a1 + 24, "NotifyPiconetClock", v6, 0);
}

void sub_1007E6AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    sub_1007E6B50(a1, v3);
  }
}

void sub_1007E6B50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    *uuid = 0;
    v6 = 0;
    [v3 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
    sub_1003216CC(a1 + 24, "CATTBatteryServiceDeviceConnected", v4, 0);
  }
}

void sub_1007E6C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
  sub_1003216CC(a1 + 24, "DOAPDeviceConnected", v4, 0);
}

void sub_1007E6D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (qword_100B508D0 == -1)
  {
    v4 = v3;
  }

  else
  {
    sub_10087B498();
    v4 = v8;
  }

  v5 = sub_100046458(off_100B508C8, v4, 0);
  if (qword_100B508F0 != -1)
  {
    sub_10087B4AC();
  }

  v6 = sub_1000504C8(off_100B508E8, v5, 0);
  if (v6 && sub_10053A440(v6))
  {
    sub_1007E6E14(a1, v8);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a1 + 24, "UARPDeviceConnected", v7, 0);
}

void sub_1007E6E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kUARPDeviceUUID", uuid);
  sub_1003216CC(a1 + 24, "UARPAACPTransportChange", v4, 0);
}

void sub_1007E6EEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending HRM connected xpc message", v6, 2u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  sub_1003216CC(a1 + 24, "HRMDeviceConnected", v5, 0);
}

void sub_1007E6FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  sub_1007E7058(a1, v3, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E703C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7058(uint64_t a1, unsigned int a2, const char *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "kEasyPairingVersion", a2);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  xpc_dictionary_set_string(v6, "kCloudAccount", a3);

  sub_1003216CC(a1 + 24, "VersionInfoRequest", v6, 0);
}

void sub_1007E70F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  sub_1007E7190(a1, v5, __p, v4);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7190(uint64_t a1, unsigned int a2, const char *a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "kEasyPairingVersion", a2);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  xpc_dictionary_set_string(v8, "kCloudAccount", a3);
  xpc_dictionary_set_uint64(v8, "kEasyPairingStatus", a4);

  sub_1003216CC(a1 + 24, "VersionInfoResponse", v8, 0);
}

void sub_1007E7248(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007E72D4(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E72B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E72D4(uint64_t a1, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v4, "kDeviceAddress", a2);

  sub_1003216CC(a1 + 24, "ClassicPairStateRequest", v5, 0);
}

void sub_1007E7358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_1007E73EC(a1, __p, v3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E73D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E73EC(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kDevicePairState", a3);

  sub_1003216CC(a1 + 24, "ClassicPairStateResponse", v7, 0);
}

void sub_1007E7488(uint64_t a1, uint64_t a2, const char *a3, const void *a4, uint64_t a5)
{
  v5 = a5;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  sub_1007E7534(a1, __p, a3, a4, v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7534(uint64_t a1, const char *a2, const char *a3, const void *a4, unsigned int a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v10, "kDeviceAddress", a2);
  xpc_dictionary_set_string(v11, "kDeviceName", a3);
  xpc_dictionary_set_data(v11, "kDeviceLinkKey", a4, a5);

  sub_1003216CC(a1 + 24, "StoreClassicLinkKeyRequest", v11, 0);
}

void sub_1007E75F8(uint64_t a1, uint64_t a2, const char *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  sub_1007E76BC(a1, __p, a3, a4, v9, v8, v7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E76A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E76BC(uint64_t a1, const char *a2, const char *a3, const void *a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v14, "kDeviceAddress", a2);
  xpc_dictionary_set_string(v15, "kDeviceName", a3);
  xpc_dictionary_set_data(v15, "kDeviceLinkKey", a4, a5);
  xpc_dictionary_set_uint64(v15, "kDeviceServiceMask", a6);
  xpc_dictionary_set_uint64(v15, "kClassOfDeviceMask", a7);

  sub_1003216CC(a1 + 24, "StoreClassicLinkKeyRequestExtended", v15, 0);
}

void sub_1007E77B8(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v7 = a3;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  sub_1007E7870(a1, __p, v7, a4);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7870(uint64_t a1, const char *a2, void *a3, const char *a4)
{
  v13 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v7, "kDeviceAddress", a2);
  xpc_dictionary_set_string(v8, "kDeviceName", a4);
  v9 = [v13 objectForKey:@"kCfgMicSide"];
  xpc_dictionary_set_uint64(v8, "kClassicDeviceMicMode", [v9 intValue]);

  v10 = [v13 objectForKey:@"kCfgInEarMode"];
  xpc_dictionary_set_uint64(v8, "kClassicDeviceInEarEnable", [v10 BOOLValue]);

  v11 = [v13 objectForKey:@"kCfgDoubleTap"];
  xpc_dictionary_set_uint64(v8, "kClassicDeviceDoubleTapMode", [v11 intValue]);

  v12 = sub_1005B2A10(v13);
  xpc_dictionary_set_value(v8, "kClassicDeviceSettings", v12);
  xpc_release(v12);
  sub_1003216CC(a1 + 24, "StoreClassicDeviceSettings", v8, 0);
}

void sub_1007E7A14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007E7AA0(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7AA0(uint64_t a1, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v4, "kDeviceAddress", a2);

  sub_1003216CC(a1 + 24, "ClassicDeviceUnexpectedDisconnection", v5, 0);
}

void sub_1007E7B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_1007E7BB8(a1, __p, v3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7BB8(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kQuickDisconnectEnabled", a3);

  sub_1003216CC(a1 + 24, "ConnectClassicDevice", v7, 0);
}

void sub_1007E7C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_1007E7CE8(a1, __p, v3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E7CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7CE8(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kPrimaryBudSide", a3);

  sub_1003216CC(a1 + 24, "NotifyPrimaryBudSide", v7, 0);
}

void sub_1007E7D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v6 = 0;
  [v3 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v4, "kPeerIdentifier", uuid);
  sub_1003216CC(a1 + 24, "MFiAccessoryAuth", v4, 0);
}

void sub_1007E7E60(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_1005B2A10(v4);
  sub_1003216CC(a1 + 24, "LaunchBTLEServerWithOptions", v3, 0);
}

void sub_1007E7ED4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);

  sub_1003216CC(a1 + 24, "PreWarmMFiAccessoryAuth", v2, 0);
}

void sub_1007E7F2C(uint64_t a1, void *a2, unsigned int a3, const void *a4)
{
  v7 = a2;
  v8 = xpc_dictionary_create(0, 0, 0);
  *uuid = 0;
  v10 = 0;
  [v7 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v8, "kUARPDeviceUUID", uuid);
  xpc_dictionary_set_data(v8, "kUARPData", a4, a3);
  sub_1003216CC(a1 + 24, "UARPDataOverAACP", v8, 0);
}

void sub_1007E8028(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  sub_1007E80F0(a1, __p, v7, v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007E80F0(uint64_t a1, const char *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v9, "kLeaDeviceAddress", a2);
  v11 = [v7 UUIDString];
  xpc_dictionary_set_string(v10, "kLeaDeviceIdentifier", [v11 UTF8String]);

  v12 = sub_1005B2B8C(v8);
  xpc_dictionary_set_value(v10, "kLeaDeviceTags", v12);
  xpc_release(v12);
  v13 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 UUIDString];
    v15 = 136315138;
    v16 = [v14 UTF8String];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending requestLeaEasyPairMsg: kLeaDeviceIdentifier = %s", &v15, 0xCu);
  }

  sub_1003216CC(a1 + 24, "LeaEasyPairRequest", v10, 0);
}

void sub_1007E82C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, const void *a6, const void *a7)
{
  v10 = a4;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v16 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v14 = *(a3 + 16);
  }

  sub_1007E83D4(a1, __dst, __p, v10, a5, a6, a7);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1007E83A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E83D4(uint64_t a1, const char *a2, const char *a3, unsigned int a4, const void *a5, const void *a6, const void *a7)
{
  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v14;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v14, "kLeaDeviceAddress", a2);
  if (a3[23] < 0)
  {
    a3 = *a3;
  }

  xpc_dictionary_set_string(v15, "kLeaDeviceName", a3);
  xpc_dictionary_set_uint64(v15, "kLeaDeviceEdiv", a4);
  xpc_dictionary_set_data(v15, "kLeaDeviceRand", a5, 8uLL);
  xpc_dictionary_set_data(v15, "kLeaDeviceLtk", a6, 0x10uLL);
  xpc_dictionary_set_data(v15, "kLeaDeviceIrk", a7, 0x10uLL);

  sub_1003216CC(a1 + 24, "LeaStoreBondingInfoRequest", v15, 0);
}

void sub_1007E84F8(uint64_t a1)
{
  if (qword_100B50F78 != -1)
  {
    sub_10087B484();
  }

  v2 = sub_100580A38(qword_100B50F70);

  sub_1007E8554(a1, v2);
}

void sub_1007E8554(uint64_t a1, BOOL a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, "kPersist", a2);

  sub_1003216CC(a1 + 24, "PersistServerServices", v4, 0);
}

void sub_1007E85C8(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kStoreClassicLinkKeyResult", a3);

  sub_1003216CC(a1 + 24, "StoreClassicLinkKeyResponse", v7, 0);
}

void sub_1007E8664(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending LeaEasyPairResponse: status=%d", v9, 8u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v7, "kLeaDeviceAddress", a2);
  xpc_dictionary_set_uint64(v8, "kLeaDevicePairState", a3);
  sub_1003216CC(a1 + 24, "LeaEasyPairResponse", v8, 0);
}

void sub_1007E8778(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  xpc_dictionary_set_string(v6, "kLeaDeviceAddress", a2);
  xpc_dictionary_set_uint64(v7, "kLeaStoreBondingInfoResult", a3);

  sub_1003216CC(a1 + 24, "LeaStoreBondingInfoResponse", v7, 0);
}

void sub_1007E8814(uint64_t a1, const char *a2, void *a3)
{
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received XPC message %{public}s", buf, 0xCu);
  }

  if (!strcmp(a2, "SetConnectionParameters"))
  {
    *buf = 0;
    *&buf[8] = 0;
    uuid = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, uuid);
    v9 = xpc_dictionary_get_double(a3, "kMinInterval");
    v10 = xpc_dictionary_get_double(a3, "kPreferredInterval");
    v11 = xpc_dictionary_get_double(a3, "kMaxInterval");
    int64 = xpc_dictionary_get_int64(a3, "kMinCELength");
    v13 = xpc_dictionary_get_int64(a3, "kMaxCELength");
    v14 = xpc_dictionary_get_int64(a3, "kPreferredPeripheralLatency");
    v15 = xpc_dictionary_get_int64(a3, "kMaxPeripheralLatency");
    v16 = xpc_dictionary_get_int64(a3, "kTimeout");
    xpc_dictionary_get_int64(a3, "kMaxDeferment");
    if (qword_100B508B0 != -1)
    {
      sub_10087BC7C();
    }

    v17 = v9;
    v18 = v10;
    v19 = v11;
    sub_100767160(off_100B508A8, buf, int64, v13, v14, v15, v16, v17, v18, v19);
  }

  else if (!strcmp(a2, "AuthenticationDidSucceed"))
  {
    memset(dst, 0, sizeof(dst));
    v20 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(dst, v20);
    v21 = xpc_dictionary_get_int64(a3, "kCertClass");
    memset(buf, 0, sizeof(buf));
    if (v21 == 0x7FFFFFFF)
    {
      strcpy(buf, "IsMFiAuthenticated");
    }

    else
    {
      snprintf(buf, 0x20uLL, "IsMFiAuthenticated_CertClass%02X", v21);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v25 = off_100B508C8;
    v26 = sub_10004DF60(dst);
    sub_100007E30(__p, buf);
    sub_10078787C(v25, v26, __p);
    if (v302 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (!strcmp(a2, "AuthenticationDidFail"))
  {
    *buf = 0;
    *&buf[8] = 0;
    v22 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, v22);
    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v23 = off_100B508C8;
    v24 = sub_10004DF60(buf);
    sub_10078380C(v23, v24, @"IsMFiAuthenticated");
  }

  else if (!strcmp(a2, "PeerIsUsingBuiltinService"))
  {
    *buf = 0;
    *&buf[8] = 0;
    v27 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, v27);
    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v28 = off_100B508C8;
    v29 = sub_10004DF60(buf);
    sub_100007E30(v299, "HasBuiltinServices");
    sub_10078787C(v28, v29, v299);
    if (v300 < 0)
    {
      operator delete(v299[0]);
    }
  }

  else if (!strcmp(a2, "PeerIsNotUsingBuiltinService"))
  {
    *buf = 0;
    *&buf[8] = 0;
    v30 = xpc_dictionary_get_uuid(a3, "kPeerIdentifier");
    uuid_copy(buf, v30);
    if (qword_100B508D0 != -1)
    {
      sub_10087B4E8();
    }

    v31 = off_100B508C8;
    v32 = sub_10004DF60(buf);
    sub_10078380C(v31, v32, @"HasBuiltinServices");
  }

  else
  {
    if (!strcmp(a2, "DisconnectClassicDevice"))
    {
      memset(buf, 0, 24);
      string = xpc_dictionary_get_string(a3, "kDeviceAddress");
      sub_100007E30(buf, string);
      *&v306[4] = 0;
      *v306 = 0;
      if (buf[23] >= 0)
      {
        v34 = buf;
      }

      else
      {
        v34 = *buf;
      }

      if (!sub_10009D0B4(v306, v34))
      {
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          sub_10087BBAC();
        }

        goto LABEL_127;
      }

      if (qword_100B508F0 != -1)
      {
        sub_10087B4C0();
      }

      v35 = sub_1000E6554(off_100B508E8, v306, 1);
      if (!v35)
      {
        v43 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          sub_1000BE6F8(v306, dst);
          sub_10087BC08(dst, v308, v43);
        }

        goto LABEL_127;
      }

      if (qword_100B50F68 != -1)
      {
        sub_10087BBE0();
      }

      if (sub_1000C039C(off_100B50F60, v35))
      {
        if (qword_100B50AC0 != -1)
        {
          sub_10087B7E0();
        }

        sub_100593A4C(off_100B50AB8, v35, -1);
        goto LABEL_127;
      }

      v44 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_127;
      }

      sub_1000E5A58(v35, dst);
      if (v314 >= 0)
      {
        v45 = dst;
      }

      else
      {
        v45 = *dst;
      }

      *v308 = 136446210;
      *&v308[4] = v45;
      v46 = "Ignoring disconnection request as device %{public}s is not connected";
      v47 = v308;
      v48 = v44;
      v49 = 12;
      goto LABEL_93;
    }

    if (!strcmp(a2, "EnableBTSync"))
    {
      v36 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
      v37 = xpc_dictionary_get_int64(a3, "kPeriod");
      v38 = v37;
      v40 = sub_10000C7D0(v37, v39);
      (*(*v40 + 936))(v40, v36, v38);

      return;
    }

    if (!strcmp(a2, "DevMgmtPipeConnected"))
    {
      v41 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
      if (qword_100B50910 != -1)
      {
        sub_10087BB84();
      }

      sub_1005BBE88(off_100B50908, 1);
      [*(a1 + 16) addObject:v41];
      if (qword_100B50950 != -1)
      {
        sub_10087B510();
      }

      sub_10033C6C0(off_100B50948, v41);
      if (qword_100B50920 != -1)
      {
        sub_10087B630();
      }

      sub_1006487F0(qword_100B50918, v41);
    }

    else
    {
      if (strcmp(a2, "DevMgmtPipeDisconnected"))
      {
        if (!strcmp(a2, "VersionInfoRequest"))
        {
          v51 = xpc_dictionary_get_int64(a3, "kEasyPairingVersion");
          memset(buf, 0, 24);
          v52 = xpc_dictionary_get_string(a3, "kCloudAccount");
          sub_100007E30(buf, v52);
          if (qword_100B53FC8 != -1)
          {
            sub_10087BB5C();
          }

          v53 = qword_100B53FC0;
          if ((buf[23] & 0x80000000) != 0)
          {
            sub_100008904(&__dst, *buf, *&buf[8]);
          }

          else
          {
            __dst = *buf;
          }

          sub_1003190A4(v53, v51, &__dst);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_127;
          }

          v50 = __dst.__r_.__value_.__r.__words[0];
          goto LABEL_126;
        }

        if (!strcmp(a2, "VersionInfoResponse"))
        {
          v54 = xpc_dictionary_get_int64(a3, "kEasyPairingVersion");
          memset(buf, 0, 24);
          v55 = xpc_dictionary_get_string(a3, "kCloudAccount");
          sub_100007E30(buf, v55);
          v56 = xpc_dictionary_get_int64(a3, "kEasyPairingStatus");
          if (qword_100B53FC8 != -1)
          {
            sub_10087BB5C();
          }

          v57 = qword_100B53FC0;
          if ((buf[23] & 0x80000000) != 0)
          {
            sub_100008904(&v297, *buf, *&buf[8]);
          }

          else
          {
            v297 = *buf;
          }

          sub_100319540(v57, v54, &v297, v56);
          if ((SHIBYTE(v297.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_127;
          }

          v50 = v297.__r_.__value_.__r.__words[0];
          goto LABEL_126;
        }

        if (!strcmp(a2, "ClassicPairStateRequest"))
        {
          memset(buf, 0, 24);
          v58 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v58);
          *&dst[4] = 0;
          *dst = 0;
          if (buf[23] >= 0)
          {
            v59 = buf;
          }

          else
          {
            v59 = *buf;
          }

          if (sub_10009D0B4(dst, v59))
          {
            if (qword_100B53FC8 != -1)
            {
              sub_10087BB5C();
            }

            sub_100319658(qword_100B53FC0, dst);
          }

          else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_10087BB28();
          }

          goto LABEL_127;
        }

        if (!strcmp(a2, "ClassicPairStateResponse"))
        {
          memset(buf, 0, 24);
          v60 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v60);
          v61 = xpc_dictionary_get_int64(a3, "kDevicePairState");
          *&dst[4] = 0;
          *dst = 0;
          if (buf[23] >= 0)
          {
            v62 = buf;
          }

          else
          {
            v62 = *buf;
          }

          if (sub_10009D0B4(dst, v62))
          {
            if (qword_100B508F0 != -1)
            {
              sub_10087B4C0();
            }

            v63 = sub_1000E6554(off_100B508E8, dst, 1);
            if (qword_100B50950 != -1)
            {
              sub_10087B510();
            }

            sub_10033CE4C(off_100B50948, v63, v61);
          }

          else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_10087BAF4();
          }

          goto LABEL_127;
        }

        if (!strcmp(a2, "StoreClassicLinkKeyRequest"))
        {
          memset(buf, 0, 24);
          v65 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v65);
          memset(dst, 0, sizeof(dst));
          v314 = 0;
          v66 = xpc_dictionary_get_string(a3, "kDeviceName");
          sub_100007E30(dst, v66);
          value = xpc_dictionary_get_value(a3, "kDeviceLinkKey");
          WORD2(v303) = 0;
          LODWORD(v303) = 0;
          if (buf[23] >= 0)
          {
            v68 = buf;
          }

          else
          {
            v68 = *buf;
          }

          if (!sub_10009D0B4(&v303, v68))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087B978();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v295, *buf, *&buf[8]);
            }

            else
            {
              v295 = *buf;
              v296 = *&buf[16];
            }

            sub_1007E85C8(a1, &v295, 1u);
            if ((SHIBYTE(v296) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v108 = v295;
            goto LABEL_310;
          }

          count = xpc_array_get_count(value);
          if (!value || count != 16)
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087BAC0();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v293, *buf, *&buf[8]);
            }

            else
            {
              v293 = *buf;
              v294 = *&buf[16];
            }

            sub_1007E85C8(a1, &v293, 1u);
            if ((SHIBYTE(v294) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v108 = v293;
            goto LABEL_310;
          }

          v70 = 0;
          v312 = 0uLL;
          v310 = 0;
          v311 = 0;
          do
          {
            dst[v70 - 16] = xpc_array_get_int64(value, v70);
            ++v70;
          }

          while (v70 != 16);
          if (qword_100B508F0 != -1)
          {
            sub_10087B4C0();
          }

          v71 = sub_1000E6554(off_100B508E8, &v303, 1);
          v72 = v71;
          if (v312 != v310 || *(&v312 + 1) != v311)
          {
            memset(v306, 0, 20);
            sub_1006D1B74(v306);
            if (qword_100B512E8 != -1)
            {
              sub_10087B9AC();
            }

            if (sub_1006E7E2C(off_100B512E0, v72, v306) != 150)
            {
              goto LABEL_153;
            }

            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            if ((sub_1000E2570(off_100B50AA8, v72) & 1) == 0)
            {
              sub_1006D1BAC(v308, &v312, 5u);
              sub_1006D1B80(v306, v308);
              nullsub_21();
              if (qword_100B512E8 != -1)
              {
                sub_10087B9AC();
              }

              v141 = sub_1006E7F2C(off_100B512E0, v72, v306, 0);
              if (v141)
              {
                v75 = 1;
              }

              else
              {
                v263[0] = 0;
                sub_100016250(v263);
                *v308 = SLODWORD(v263[0]);
                *&v308[8] = SWORD2(v263[0]);
                sub_100538494(v72, dst, v308);
                v75 = 0;
              }

              v199 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                v200 = "Failed to store";
                if (!v141)
                {
                  v200 = "Successfully stored";
                }

                v201 = buf;
                if (buf[23] < 0)
                {
                  v201 = *buf;
                }

                *v308 = 136315394;
                *&v308[4] = v200;
                *&v308[12] = 2080;
                *&v308[14] = v201;
                _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "%s classic link key for address %s", v308, 0x16u);
              }
            }

            else
            {
LABEL_153:
              v74 = qword_100BCE960;
              v75 = 0;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100B50AB0 != -1)
                {
                  sub_10087B9D4();
                }

                v76 = sub_1000E2570(off_100B50AA8, v72);
                v77 = buf;
                if (buf[23] < 0)
                {
                  v77 = *buf;
                }

                *v308 = 67109378;
                *&v308[4] = v76;
                *&v308[8] = 2080;
                *&v308[10] = v77;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Already stored classic link key (Magic Paired: %d) for address: %s", v308, 0x12u);
                v75 = 0;
              }
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v291, *buf, *&buf[8]);
            }

            else
            {
              v291 = *buf;
              v292 = *&buf[16];
            }

            sub_1007E85C8(a1, &v291, v75);
            if ((SHIBYTE(v292) & 0x80000000) == 0)
            {
              goto LABEL_541;
            }

            v202 = v291;
            goto LABEL_540;
          }

          if (v71 && sub_1000295DC(v71))
          {
            if (qword_100B50950 != -1)
            {
              sub_10087B510();
            }

            *(off_100B50948 + 431) = 2;
            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            v132 = sub_1000E2570(off_100B50AA8, v72);
            v133 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR);
            if (v132)
            {
              if (v133)
              {
                sub_10087BA58();
              }

              if (qword_100B50AB0 == -1)
              {
                goto LABEL_292;
              }

LABEL_662:
              sub_10087B9D4();
LABEL_292:
              sub_100558E48(off_100B50AA8, v72, 0);
              goto LABEL_94;
            }

            if (v133)
            {
              sub_10087B9FC();
            }

            if (qword_100B50F88 == -1)
            {
LABEL_481:
              sub_1006E0DBC(off_100B50F80, v72);
              goto LABEL_94;
            }

LABEL_663:
            sub_10087BA30();
            goto LABEL_481;
          }

          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (strcmp(a2, "StoreClassicLinkKeyRequestExtended"))
          {
            if (!strcmp(a2, "StoreClassicLinkKeyResponse"))
            {
              memset(buf, 0, 24);
              v94 = xpc_dictionary_get_string(a3, "kDeviceAddress");
              sub_100007E30(buf, v94);
              v95 = xpc_dictionary_get_int64(a3, "kStoreClassicLinkKeyResult");
              *&dst[4] = 0;
              *dst = 0;
              if (buf[23] >= 0)
              {
                v96 = buf;
              }

              else
              {
                v96 = *buf;
              }

              if (sub_10009D0B4(dst, v96))
              {
                if (qword_100B508F0 != -1)
                {
                  sub_10087B4C0();
                }

                v97 = sub_1000E6554(off_100B508E8, dst, 1);
                if (qword_100B50950 != -1)
                {
                  sub_10087B510();
                }

                sub_10033CF08(off_100B50948, v97, v95);
              }

              else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
              {
                sub_10087B944();
              }

              goto LABEL_127;
            }

            if (!strcmp(a2, "StoreClassicDeviceSettings"))
            {
              memset(buf, 0, 24);
              v98 = xpc_dictionary_get_string(a3, "kDeviceAddress");
              sub_100007E30(buf, v98);
              WORD2(v312) = 0;
              LODWORD(v312) = 0;
              if (buf[23] >= 0)
              {
                v99 = buf;
              }

              else
              {
                v99 = *buf;
              }

              if (!sub_10009D0B4(&v312, v99))
              {
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B870();
                }

                goto LABEL_127;
              }

              v100 = xpc_dictionary_get_int64(a3, "kClassicDeviceMicMode");
              v101 = xpc_dictionary_get_int64(a3, "kClassicDeviceInEarEnable");
              v102 = xpc_dictionary_get_int64(a3, "kClassicDeviceDoubleTapMode");
              v103 = xpc_dictionary_get_value(a3, "kClassicDeviceSettings");
              v258 = v103;
              if (v103)
              {
                v104 = sub_100050F18(v103);
                v105 = [v104 allKeys];
                v106 = [v105 containsObject:@"kCfgDoubleClickInt"];

                if (v106)
                {
                  v107 = [v104 objectForKey:@"kCfgDoubleClickInt"];
                  v260 = [v107 intValue];
                }

                else
                {
                  v260 = -1;
                }

                v142 = [v104 allKeys];
                v143 = [v142 containsObject:@"kCfgClickHold"];

                if (v143)
                {
                  v144 = [v104 objectForKey:@"kCfgClickHold"];
                  v262 = [v144 intValue];
                }

                else
                {
                  v262 = -1;
                }

                v145 = [v104 allKeys];
                v146 = [v145 containsObject:@"kCfgClickHoldInt"];

                if (v146)
                {
                  v147 = [v104 objectForKey:@"kCfgClickHoldInt"];
                  v259 = [v147 intValue];
                }

                else
                {
                  v259 = -1;
                }

                v148 = [v104 allKeys];
                v149 = [v148 containsObject:@"kCfgListenModeCfgs"];

                if (v149)
                {
                  v150 = [v104 objectForKey:@"kCfgListenModeCfgs"];
                  v261 = [v150 intValue];
                }

                else
                {
                  v261 = -1;
                }

                v151 = [v104 allKeys];
                v152 = [v151 containsObject:@"kCfgOneBudANCMode"];

                if (v152)
                {
                  v153 = [v104 objectForKey:@"kCfgOneBudANCMode"];
                  v257 = [v153 intValue];
                }

                else
                {
                  v257 = -1;
                }

                v154 = [v104 allKeys];
                v155 = [v154 containsObject:@"kCfgListenMode"];

                if (v155)
                {
                  v156 = [v104 objectForKey:@"kCfgListenMode"];
                  v140 = [v156 intValue];
                }

                else
                {
                  v140 = 0xFFFFFFFFLL;
                }
              }

              else
              {
                v140 = 0xFFFFFFFFLL;
                v257 = -1;
                v261 = -1;
                v262 = -1;
                v259 = -1;
                v260 = -1;
              }

              memset(dst, 0, sizeof(dst));
              v314 = 0;
              v157 = xpc_dictionary_get_string(a3, "kDeviceName");
              sub_100007E30(dst, v157);
              if (qword_100B508F0 != -1)
              {
                sub_10087B4C0();
              }

              v158 = sub_1000E6554(off_100B508E8, &v312, 1);
              v159 = v158;
              if (v158 && sub_1000295DC(v158))
              {
                if ((v101 != 0) != sub_1000E356C(v159) && sub_1000E2140(v159, 1u))
                {
                  if (qword_100B50950 != -1)
                  {
                    sub_10087B510();
                  }

                  sub_10033DF90(off_100B50948, v159, v101 != 0, 3);
                }

                if (sub_1000E3314(v159) != v100)
                {
                  if (qword_100B50950 != -1)
                  {
                    sub_10087B510();
                  }

                  sub_10033DA80(off_100B50948, v159, v100, 3);
                }

                if (sub_1000E3188(v159) != v102 && sub_1000E2140(v159, 0xEu))
                {
                  if (qword_100B50950 != -1)
                  {
                    sub_10087B510();
                  }

                  sub_10033DD54(off_100B50948, v159, BYTE1(v102), v102, 3);
                }

                sub_1000C23E0(v159, v308);
                v160 = sub_1000DA948(v308, dst);
                if (v309 < 0)
                {
                  operator delete(*v308);
                }

                if (!v160)
                {
                  v161 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000C23E0(v159, v308);
                    if (v309 >= 0)
                    {
                      v162 = v308;
                    }

                    else
                    {
                      v162 = *v308;
                    }

                    v163 = dst;
                    if (v314 < 0)
                    {
                      v163 = *dst;
                    }

                    *v306 = 136315394;
                    *&v306[4] = v162;
                    *&v306[12] = 2080;
                    *&v306[14] = v163;
                    _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "StoreClassicDeviceSettings update Device name on Watch side only, oldName = %s, newName = %s", v306, 0x16u);
                    if (v309 < 0)
                    {
                      operator delete(*v308);
                    }
                  }

                  sub_100538D30(v159, dst, 0);
                  sub_1005397A4(v159, dst);
                }

                if (v258)
                {
                  if (v262 != -1 && sub_1000E06EC(v159) != v262 && sub_1000E2140(v159, 0x1Eu))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v159, 22, v262, 3);
                  }

                  v164 = sub_1000E2140(v159, 0x2Bu);
                  v165 = v260 == -1 || v164;
                  if ((v165 & 1) == 0 && sub_100549334(v159) != v260 && (sub_1000E2140(v159, 0x1Du) || sub_1000E012C(v159, 0x80u)))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v159, 23, v260, 3);
                  }

                  v166 = sub_1000E2140(v159, 0x2Bu);
                  v167 = v259 == -1 || v166;
                  if ((v167 & 1) == 0 && sub_10054937C(v159) != v259 && (sub_1000E2140(v159, 0x1Eu) || sub_1000E012C(v159, 0x80u)))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v159, 24, v259, 3);
                  }

                  if (v261 != -1 && sub_1000E32CC(v159) != v261 && sub_1000E2140(v159, 0x1Cu))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v159, 26, v261, 3);
                  }

                  v168 = sub_1000E2140(v159, 0x2Bu);
                  v169 = v257 == -1 || v168;
                  if ((v169 & 1) == 0 && v257 != sub_1005493C4(v159) && sub_1000E2140(v159, 0x10u) && sub_1000E2140(v159, 1u))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v159, 27, v257, 3);
                  }

                  if (v140 != -1 && sub_1000E3284(v159) != v140 && sub_1000E2140(v159, 0x10u) && sub_1000E2140(v159, 0x11u))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_100331844(off_100B50948, v159, 13, v140, 3);
                  }
                }
              }

              else
              {
                v170 = qword_100BCE900;
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B8A4(&buf[23], buf, v170);
                }
              }

              goto LABEL_94;
            }

            if (!strcmp(a2, "ClassicDeviceUnexpectedDisconnection"))
            {
              memset(buf, 0, 24);
              v109 = xpc_dictionary_get_string(a3, "kDeviceAddress");
              sub_100007E30(buf, v109);
              *&v306[4] = 0;
              *v306 = 0;
              if (buf[23] >= 0)
              {
                v110 = buf;
              }

              else
              {
                v110 = *buf;
              }

              if (sub_10009D0B4(v306, v110))
              {
                if (qword_100B508F0 != -1)
                {
                  sub_10087B4C0();
                }

                v111 = sub_1000E6554(off_100B508E8, v306, 1);
                v112 = v111;
                if (v111 && sub_1000295DC(v111))
                {
                  v113 = qword_100BCE960;
                  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(v112, dst);
                    v114 = SHIBYTE(v314);
                    v115 = *dst;
                    v116 = sub_1000C0348(v112);
                    v117 = dst;
                    v118 = "not";
                    if (v114 < 0)
                    {
                      v117 = v115;
                    }

                    if (v116)
                    {
                      v118 = "is";
                    }

                    *v308 = 136446466;
                    *&v308[4] = v117;
                    *&v308[12] = 2080;
                    *&v308[14] = v118;
                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "ClassicDeviceUnexpectedDisconnection: device %{public}s %s connected", v308, 0x16u);
                    if (SHIBYTE(v314) < 0)
                    {
                      operator delete(*dst);
                    }
                  }

                  if (sub_1000C0348(v112))
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_10033D9F8(off_100B50948, v112);
                  }
                }

                else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B808();
                }
              }

              else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
              {
                sub_10087B83C();
              }

              goto LABEL_127;
            }

            if (strcmp(a2, "ConnectClassicDevice"))
            {
              if (!strcmp(a2, "NotifyPrimaryBudSide"))
              {
                memset(buf, 0, 24);
                v134 = xpc_dictionary_get_string(a3, "kDeviceAddress");
                sub_100007E30(buf, v134);
                v135 = xpc_dictionary_get_int64(a3, "kPrimaryBudSide");
                *&dst[4] = 0;
                *dst = 0;
                if (buf[23] >= 0)
                {
                  v136 = buf;
                }

                else
                {
                  v136 = *buf;
                }

                if (sub_10009D0B4(dst, v136))
                {
                  if (qword_100B508F0 != -1)
                  {
                    sub_10087B4C0();
                  }

                  v137 = sub_1000E6554(off_100B508E8, dst, 1);
                  if (v137)
                  {
                    if (qword_100B50950 != -1)
                    {
                      sub_10087B510();
                    }

                    sub_10033E47C(off_100B50948, v137, v135);
                  }
                }

                else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B750();
                }

                goto LABEL_127;
              }

              if (strcmp(a2, "LeaEasyPairRequest"))
              {
                if (!strcmp(a2, "LeaEasyPairResponse"))
                {
                  memset(buf, 0, 24);
                  v177 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
                  sub_100007E30(buf, v177);
                  v178 = xpc_dictionary_get_int64(a3, "kLeaDevicePairState");
                  v179 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *dst = 0;
                    _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "Received LeaEasyPairResponse", dst, 2u);
                  }

                  *&dst[4] = 0;
                  *dst = 0;
                  if (buf[23] >= 0)
                  {
                    v180 = buf;
                  }

                  else
                  {
                    v180 = *buf;
                  }

                  if (sub_10009D0B4(dst, v180))
                  {
                    if (qword_100B50920 != -1)
                    {
                      sub_10087B630();
                    }

                    *v308 = *dst;
                    *&v308[4] = *&dst[4];
                    sub_100648B30(qword_100B50918, v308, v178);
                    goto LABEL_127;
                  }

                  v216 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *v308 = 0;
                    v217 = "Received invalid device address on LeaEasyPairResponse";
LABEL_572:
                    _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, v217, v308, 2u);
                  }

LABEL_127:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    return;
                  }

                  v64 = *buf;
                  goto LABEL_129;
                }

                if (strcmp(a2, "LeaStoreBondingInfoRequest"))
                {
                  if (strcmp(a2, "LeaStoreBondingInfoResponse"))
                  {
                    if (!strcmp(a2, "ANCSNotificationSourceRegistered"))
                    {
                      v227 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
                      v228 = qword_100BCE900;
                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *&buf[4] = v227;
                        _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "Device %@ has subscribed to ANCSNotificationSource", buf, 0xCu);
                      }

                      if (qword_100B54CA0 != -1)
                      {
                        sub_10087B608();
                      }

                      sub_1006D39B0(off_100B54C98, v227);
                    }

                    else if (!strcmp(a2, "UARPDataOverAACP"))
                    {
                      v242 = [[NSString alloc] initWithUTF8String:{xpc_dictionary_get_string(a3, "kUARPDeviceUUID")}];
                      v243 = [[NSUUID alloc] initWithUUIDString:v242];
                      if (qword_100B508D0 != -1)
                      {
                        sub_10087B4E8();
                      }

                      v244 = sub_100046458(off_100B508C8, v243, 0);
                      if (qword_100B508F0 != -1)
                      {
                        sub_10087B4C0();
                      }

                      v245 = sub_1000504C8(off_100B508E8, v244, 1);
                      if (v245)
                      {
                        *buf = 0;
                        data = xpc_dictionary_get_data(a3, "kUARPData", buf);
                        if (data && *buf)
                        {
                          v247 = malloc_type_malloc(*buf, 0x100004077774924uLL);
                          v248 = v247;
                          if (v247)
                          {
                            memcpy(v247, data, *buf);
                            if (qword_100B50950 != -1)
                            {
                              sub_10087B510();
                            }

                            if (sub_100340394(off_100B50948, v245, *buf, v248) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                            {
                              sub_10087B538();
                            }

                            free(v248);
                          }

                          else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                          {
                            sub_10087B56C();
                          }
                        }

                        else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                        {
                          sub_10087B5A0();
                        }
                      }

                      else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        sub_10087B5D4();
                      }
                    }

                    else if (!strcmp(a2, "BatteryServiceNotification") && _os_feature_enabled_impl())
                    {
                      v7 = sub_100050F18(a3);
                      if (qword_100B508F0 != -1)
                      {
                        sub_10087B4C0();
                      }

                      sub_10056CB60(off_100B508E8, v7);
                    }

                    return;
                  }

                  memset(buf, 0, 24);
                  v223 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
                  sub_100007E30(buf, v223);
                  v224 = xpc_dictionary_get_int64(a3, "kLeaStoreBondingInfoResult");
                  *&dst[4] = 0;
                  *dst = 0;
                  if (buf[23] >= 0)
                  {
                    v225 = buf;
                  }

                  else
                  {
                    v225 = *buf;
                  }

                  if (sub_10009D0B4(dst, v225))
                  {
                    if (qword_100B50920 != -1)
                    {
                      sub_10087B630();
                    }

                    *v308 = *dst;
                    *&v308[4] = *&dst[4];
                    sub_100648C58(qword_100B50918, v308, v224);
                    goto LABEL_127;
                  }

                  v216 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *v308 = 0;
                    v217 = "Received invalid device address on LeaStoreBondingInfoResponse";
                    goto LABEL_572;
                  }

                  goto LABEL_127;
                }

                memset(buf, 0, 24);
                v203 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
                sub_100007E30(buf, v203);
                memset(dst, 0, sizeof(dst));
                v314 = 0;
                v204 = xpc_dictionary_get_string(a3, "kLeaDeviceName");
                sub_100007E30(dst, v204);
                v205 = xpc_dictionary_get_int64(a3, "kLeaDeviceEdiv");
                v276 = 0;
                v275 = 0;
                if (buf[23] >= 0)
                {
                  v206 = buf;
                }

                else
                {
                  v206 = *buf;
                }

                if (sub_10009D0B4(&v275, v206))
                {
                  v303 = 0;
                  *&v306[8] = 0;
                  *v306 = 0;
                  v312 = 0uLL;
                  length = 0;
                  v207 = xpc_dictionary_get_data(a3, "kLeaDeviceRand", &length);
                  if (v207 && length == 8)
                  {
                    v303 = *v207;
                    v269 = 0;
                    v208 = xpc_dictionary_get_data(a3, "kLeaDeviceLtk", &v269);
                    if (v208 && v269 == 16)
                    {
                      *v306 = *v208;
                      v266 = 0;
                      v209 = xpc_dictionary_get_data(a3, "kLeaDeviceIrk", &v266);
                      if (v209 && v266 == 16)
                      {
                        v312 = *v209;
                        if (v205)
                        {
                          v210 = v275;
                          v211 = BYTE1(v275);
                          v212 = BYTE2(v275);
                          v213 = HIBYTE(v275);
                          v214 = v276;
                          v215 = HIBYTE(v276);
                          v310 = 0;
                          v311 = 0;
                          if (qword_100B508D0 != -1)
                          {
                            sub_10087B4E8();
                          }

                          sub_1000498D4(off_100B508C8, (v210 << 40) | (v211 << 32) | (v212 << 24) | (v213 << 16) | (v214 << 8) | v215, 0, 0, 0, 0, &v310);
                          v263[0] = 0;
                          v263[1] = 0;
                          operator new();
                        }

                        v251 = qword_100BCE900;
                        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                        {
                          *v308 = 0;
                          _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_DEFAULT, "Received LeaStoreBondingInfoRequest to trigger unpairing", v308, 2u);
                        }

                        *&v308[8] = 0;
                        *v308 = 0;
                        if (qword_100B508D0 != -1)
                        {
                          sub_10087B4E8();
                        }

                        sub_1000498D4(off_100B508C8, (v275 << 40) | (BYTE1(v275) << 32) | (BYTE2(v275) << 24) | (HIBYTE(v275) << 16) | (v276 << 8) | HIBYTE(v276), 0, 0, 0, 0, v308);
                        if (qword_100B508C0 != -1)
                        {
                          sub_10087B658();
                        }

                        v252 = off_100B508B8;
                        v253 = sub_10004DF60(v308);
                        LODWORD(v252) = sub_10004EE74(v252, v253);

                        if (v252)
                        {
                          if (qword_100B50920 != -1)
                          {
                            sub_10087B630();
                          }

                          LODWORD(v310) = v275;
                          WORD2(v310) = v276;
                          sub_100648E84(qword_100B50918, &v310);
                          if (qword_100B508C0 != -1)
                          {
                            sub_10087B658();
                          }

                          v254 = off_100B508B8;
                          v255 = sub_10004DF60(v308);
                          sub_1007C2AA4(v254, v255);

                          goto LABEL_94;
                        }

                        v256 = qword_100BCE900;
                        if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_94:
                          if ((SHIBYTE(v314) & 0x80000000) == 0)
                          {
                            goto LABEL_127;
                          }

                          v50 = *dst;
LABEL_126:
                          operator delete(v50);
                          goto LABEL_127;
                        }

                        LOWORD(v310) = 0;
                        v46 = "Device is already unpaired";
                        v47 = &v310;
                        v48 = v256;
                        v49 = 2;
LABEL_93:
                        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v46, v47, v49);
                        goto LABEL_94;
                      }

                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        sub_10087B680();
                      }

                      if ((buf[23] & 0x80000000) != 0)
                      {
                        sub_100008904(&v264, *buf, *&buf[8]);
                      }

                      else
                      {
                        v264 = *buf;
                        v265 = *&buf[16];
                      }

                      sub_1007E8778(a1, &v264, 1u);
                      if ((SHIBYTE(v265) & 0x80000000) == 0)
                      {
                        goto LABEL_94;
                      }

                      v108 = v264;
                    }

                    else
                    {
                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        sub_10087B6B4();
                      }

                      if ((buf[23] & 0x80000000) != 0)
                      {
                        sub_100008904(&v267, *buf, *&buf[8]);
                      }

                      else
                      {
                        v267 = *buf;
                        v268 = *&buf[16];
                      }

                      sub_1007E8778(a1, &v267, 1u);
                      if ((SHIBYTE(v268) & 0x80000000) == 0)
                      {
                        goto LABEL_94;
                      }

                      v108 = v267;
                    }
                  }

                  else
                  {
                    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                    {
                      sub_10087B6E8();
                    }

                    if ((buf[23] & 0x80000000) != 0)
                    {
                      sub_100008904(&v270, *buf, *&buf[8]);
                    }

                    else
                    {
                      v270 = *buf;
                      v271 = *&buf[16];
                    }

                    sub_1007E8778(a1, &v270, 1u);
                    if ((SHIBYTE(v271) & 0x80000000) == 0)
                    {
                      goto LABEL_94;
                    }

                    v108 = v270;
                  }
                }

                else
                {
                  v226 = qword_100BCE900;
                  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                  {
                    *v308 = 0;
                    _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "Received invalid device address on LeaStoreBondingInfoRequest", v308, 2u);
                  }

                  if ((buf[23] & 0x80000000) != 0)
                  {
                    sub_100008904(&v273, *buf, *&buf[8]);
                  }

                  else
                  {
                    v273 = *buf;
                    v274 = *&buf[16];
                  }

                  sub_1007E8778(a1, &v273, 1u);
                  if ((SHIBYTE(v274) & 0x80000000) == 0)
                  {
                    goto LABEL_94;
                  }

                  v108 = v273;
                }

LABEL_310:
                operator delete(v108);
                goto LABEL_94;
              }

              memset(buf, 0, 24);
              v171 = xpc_dictionary_get_string(a3, "kLeaDeviceAddress");
              sub_100007E30(buf, v171);
              memset(dst, 0, sizeof(dst));
              v314 = 0;
              v172 = xpc_dictionary_get_string(a3, "kLeaDeviceIdentifier");
              sub_100007E30(dst, v172);
              v173 = xpc_dictionary_get_value(a3, "kLeaDeviceTags");
              v175 = sub_10000C7D0(v173, v174);
              if (sub_10009BF08(v175) <= 1)
              {
                if ((buf[23] & 0x80000000) != 0)
                {
                  sub_100008904(&v283, *buf, *&buf[8]);
                }

                else
                {
                  v283 = *buf;
                  v284 = *&buf[16];
                }

                sub_1007E8664(a1, &v283, 3u);
                if ((SHIBYTE(v284) & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

                v108 = v283;
                goto LABEL_310;
              }

              *&v306[4] = 0;
              *v306 = 0;
              if (buf[23] >= 0)
              {
                v181 = buf;
              }

              else
              {
                v181 = *buf;
              }

              if (!sub_10009D0B4(v306, v181))
              {
                if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B71C();
                }

                goto LABEL_94;
              }

              v182 = v306[0];
              v183 = v306[1];
              v184 = v306[2];
              v185 = v306[3];
              v186 = v306[4];
              v187 = v306[5];
              *&v308[8] = 0;
              *v308 = 0;
              if (qword_100B508D0 != -1)
              {
                sub_10087B4E8();
              }

              sub_1000498D4(off_100B508C8, (v182 << 40) | (v183 << 32) | (v184 << 24) | (v185 << 16) | (v186 << 8) | v187, 1u, 0, 0, 0, v308);
              if (qword_100B508C0 != -1)
              {
                sub_10087B658();
              }

              v188 = off_100B508B8;
              v189 = sub_10004DF60(v308);
              v190 = sub_10004EE74(v188, v189);

              if (v173)
              {
                v173 = sub_1005B2A14(v173);
              }

              v191 = [v173 objectEnumerator];
              if (v191)
              {
                v192 = 0;
                while (1)
                {
                  v193 = [v191 nextObject];

                  if (!v193)
                  {
                    break;
                  }

                  v192 = v193;
                  if (qword_100B508D0 != -1)
                  {
                    sub_10087B4E8();
                  }

                  v194 = off_100B508C8;
                  v195 = sub_10004DF60(v308);
                  v196 = v192;
                  sub_100007E30(v281, [v192 UTF8String]);
                  sub_10078787C(v194, v195, v281);
                  if (v282 < 0)
                  {
                    operator delete(v281[0]);
                  }
                }
              }

              if (v190)
              {
                if ((buf[23] & 0x80000000) != 0)
                {
                  sub_100008904(&v279, *buf, *&buf[8]);
                }

                else
                {
                  v279 = *buf;
                  v280 = *&buf[16];
                }

                sub_1007E8664(a1, &v279, 2u);
                if ((SHIBYTE(v280) & 0x80000000) == 0)
                {
                  goto LABEL_624;
                }

                v250 = &v279;
              }

              else
              {
                if ((buf[23] & 0x80000000) != 0)
                {
                  sub_100008904(&v277, *buf, *&buf[8]);
                }

                else
                {
                  v277 = *buf;
                  v278 = *&buf[16];
                }

                sub_1007E8664(a1, &v277, 1u);
                if ((SHIBYTE(v278) & 0x80000000) == 0)
                {
                  goto LABEL_624;
                }

                v250 = &v277;
              }

              operator delete(*v250);
LABEL_624:

              goto LABEL_94;
            }

            memset(dst, 0, sizeof(dst));
            v314 = 0;
            v119 = xpc_dictionary_get_string(a3, "kDeviceAddress");
            sub_100007E30(dst, v119);
            v120 = xpc_dictionary_get_int64(a3, "kQuickDisconnectEnabled");
            WORD2(v312) = 0;
            LODWORD(v312) = 0;
            if (v314 >= 0)
            {
              v121 = dst;
            }

            else
            {
              v121 = *dst;
            }

            if (!sub_10009D0B4(&v312, v121))
            {
              if (v312)
              {
LABEL_325:
                if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                {
                  sub_10087B750();
                }

                goto LABEL_330;
              }

              v197 = 1;
              while (v197 != 6)
              {
                if (dst[v197++ - 16])
                {
                  if ((v197 - 2) > 4)
                  {
                    break;
                  }

                  goto LABEL_325;
                }
              }
            }

            if (qword_100B508F0 != -1)
            {
              sub_10087B4C0();
            }

            v122 = sub_1000E6554(off_100B508E8, &v312, 0);
            v123 = v122;
            if (v122 && sub_1000295DC(v122))
            {
              v124 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v123, v308);
                v125 = v309;
                v126 = *v308;
                v127 = sub_1000C0348(v123);
                v128 = v308;
                if (v125 < 0)
                {
                  v128 = v126;
                }

                *buf = 136446722;
                *&buf[4] = v128;
                if (v127)
                {
                  v129 = "is";
                }

                else
                {
                  v129 = "not";
                }

                *&buf[12] = 2080;
                *&buf[14] = v129;
                *&buf[22] = 1024;
                *&buf[24] = v120 != 0;
                _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "ConnectClassicDevice: device %{public}s %s connected with QuickDisconnectEnabled %d", buf, 0x1Cu);
                if (v309 < 0)
                {
                  operator delete(*v308);
                }
              }

              v130 = sub_1000C0348(v123);
              if (v130)
              {
                if (v120)
                {
                  if (qword_100B50AC0 != -1)
                  {
                    sub_10087B7E0();
                  }

                  sub_100595470(off_100B50AB8, &v312);
                }

                else
                {
                  v234 = sub_10000C798(v130, v131);
                  if ((*(*v234 + 384))(v234))
                  {
                    v235 = [*(a1 + 16) firstObject];
                    if (v235)
                    {
                      if (qword_100B508D0 != -1)
                      {
                        sub_10087B4E8();
                      }

                      v236 = sub_100046458(off_100B508C8, v235, 0);
                      LOBYTE(v310) = BYTE5(v236);
                      BYTE1(v310) = BYTE4(v236);
                      BYTE2(v310) = BYTE3(v236);
                      BYTE3(v310) = BYTE2(v236);
                      BYTE4(v310) = BYTE1(v236);
                      BYTE5(v310) = v236;
                      v237 = qword_100BCE960;
                      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_1000E5A58(v123, v308);
                        v238 = v309;
                        v239 = *v308;
                        sub_1000BE6F8(&v310, v306);
                        v240 = v308;
                        if (v238 < 0)
                        {
                          v240 = v239;
                        }

                        if (v307 >= 0)
                        {
                          v241 = v306;
                        }

                        else
                        {
                          v241 = *v306;
                        }

                        *buf = 136446723;
                        *&buf[4] = v240;
                        *&buf[12] = 2160;
                        *&buf[14] = 1752392040;
                        *&buf[22] = 2081;
                        *&buf[24] = v241;
                        _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "ConnectClassicDevice: already in triangle, device %{public}s, peerSource %{private, mask.hash}s", buf, 0x20u);
                        if (v307 < 0)
                        {
                          operator delete(*v306);
                        }

                        if (v309 < 0)
                        {
                          operator delete(*v308);
                        }
                      }

                      if (qword_100B50950 != -1)
                      {
                        sub_10087B510();
                      }

                      sub_1003382B0(off_100B50948, v123, 0);
                    }

                    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                    {
                      sub_10087B7AC();
                    }
                  }

                  else
                  {
                    v249 = qword_100BCE960;
                    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v249, OS_LOG_TYPE_DEFAULT, "Device already connected ignoring connect classic request", buf, 2u);
                    }
                  }
                }
              }

              else
              {
                if (qword_100B508A0 != -1)
                {
                  sub_10087B784();
                }

                if (sub_100574ECC(off_100B50898))
                {
                  v218 = qword_100BCE960;
                  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(v123, buf);
                    v219 = buf[23] >= 0 ? buf : *buf;
                    *v308 = 136446466;
                    *&v308[4] = v219;
                    *&v308[12] = 2080;
                    *&v308[14] = "enabled";
                    _os_log_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEFAULT, "Ignoring ConnectClassicDevice msg for %{public}s, Denylist is %s", v308, 0x16u);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }

                else
                {
                  v304 = @"wxAddress";
                  v229 = [NSNumber numberWithUnsignedLongLong:sub_100508798((v123 + 128))];
                  v305 = v229;
                  v230 = [NSDictionary dictionaryWithObjects:&v305 forKeys:&v304 count:1];

                  v231 = qword_100BCE960;
                  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(v123, buf);
                    v232 = buf[23] >= 0 ? buf : *buf;
                    *v308 = 136446210;
                    *&v308[4] = v232;
                    _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "ConnectClassicDevice: Sending notification to ask SR to connect for device %{public}s,", v308, 0xCu);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  v233 = +[NSDistributedNotificationCenter defaultCenter];
                  [v233 postNotificationName:@"com.apple.BTServer.TriangleRecoveryInitiated" object:0 userInfo:v230];
                }
              }
            }

            else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087B808();
            }

LABEL_330:
            if ((SHIBYTE(v314) & 0x80000000) == 0)
            {
              return;
            }

            v64 = *dst;
LABEL_129:
            operator delete(v64);
            return;
          }

          memset(buf, 0, 24);
          v78 = xpc_dictionary_get_string(a3, "kDeviceAddress");
          sub_100007E30(buf, v78);
          memset(dst, 0, sizeof(dst));
          v314 = 0;
          v79 = xpc_dictionary_get_string(a3, "kDeviceName");
          sub_100007E30(dst, v79);
          v80 = xpc_dictionary_get_value(a3, "kDeviceLinkKey");
          v81 = xpc_dictionary_get_int64(a3, "kDeviceServiceMask");
          v82 = xpc_dictionary_get_int64(a3, "kClassOfDeviceMask");
          WORD2(v303) = 0;
          LODWORD(v303) = 0;
          if (buf[23] >= 0)
          {
            v83 = buf;
          }

          else
          {
            v83 = *buf;
          }

          if (!sub_10009D0B4(&v303, v83))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087B978();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(&v289, *buf, *&buf[8]);
            }

            else
            {
              v289 = *buf;
              v290 = *&buf[16];
            }

            sub_1007E85C8(a1, &v289, 1u);
            if ((SHIBYTE(v290) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v108 = v289;
            goto LABEL_310;
          }

          v84 = xpc_array_get_count(v80);
          if (!v80 || v84 != 16)
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_10087BAC0();
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(v287, *buf, *&buf[8]);
            }

            else
            {
              *v287 = *buf;
              v288 = *&buf[16];
            }

            sub_1007E85C8(a1, v287, 1u);
            if ((SHIBYTE(v288) & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

            v108 = v287[0];
            goto LABEL_310;
          }

          v85 = 0;
          v312 = 0uLL;
          v310 = 0;
          v311 = 0;
          do
          {
            dst[v85 - 16] = xpc_array_get_int64(v80, v85);
            ++v85;
          }

          while (v85 != 16);
          if (qword_100B508F0 != -1)
          {
            sub_10087B4C0();
          }

          v86 = sub_1000E6554(off_100B508E8, &v303, 1);
          v72 = v86;
          if (v312 != v310 || *(&v312 + 1) != v311)
          {
            if (v82)
            {
              if (qword_100B508F0 != -1)
              {
                sub_10087B4C0();
              }

              sub_10056B7FC(off_100B508E8, v72, v82);
            }

            if (v81)
            {
              v88 = 0;
              do
              {
                v89 = 1 << v88;
                if ((v81 & (1 << v88)) != 0)
                {
                  *v306 = 0;
                  sub_100016250(v306);
                  *v308 = *v306;
                  *&v308[8] = *&v306[4];
                  sub_100539554(v72, v81 & v89, 4, v308, 0);
                }

                if (v88 > 0x1E)
                {
                  break;
                }

                v81 &= ~v89;
                ++v88;
              }

              while (v81);
            }

            memset(v306, 0, 20);
            sub_1006D1B74(v306);
            if (qword_100B512E8 != -1)
            {
              sub_10087B9AC();
            }

            if (sub_1006E7E2C(off_100B512E0, v72, v306) != 150)
            {
              goto LABEL_191;
            }

            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            if ((sub_1000E2570(off_100B50AA8, v72) & 1) == 0)
            {
              sub_1006D1BAC(v308, &v312, 5u);
              sub_1006D1B80(v306, v308);
              nullsub_21();
              if (qword_100B512E8 != -1)
              {
                sub_10087B9AC();
              }

              v176 = sub_1006E7F2C(off_100B512E0, v72, v306, 0);
              if (v176)
              {
                v91 = 1;
              }

              else
              {
                v263[0] = 0;
                sub_100016250(v263);
                *v308 = SLODWORD(v263[0]);
                *&v308[8] = SWORD2(v263[0]);
                sub_100538494(v72, dst, v308);
                v91 = 0;
              }

              v220 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                v221 = "Failed to store";
                if (!v176)
                {
                  v221 = "Successfully stored";
                }

                v222 = buf;
                if (buf[23] < 0)
                {
                  v222 = *buf;
                }

                *v308 = 136315394;
                *&v308[4] = v221;
                *&v308[12] = 2080;
                *&v308[14] = v222;
                _os_log_impl(&_mh_execute_header, v220, OS_LOG_TYPE_DEFAULT, "%s classic link key for address %s", v308, 0x16u);
              }
            }

            else
            {
LABEL_191:
              v90 = qword_100BCE960;
              v91 = 0;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                if (qword_100B50AB0 != -1)
                {
                  sub_10087B9D4();
                }

                v92 = sub_1000E2570(off_100B50AA8, v72);
                v93 = buf;
                if (buf[23] < 0)
                {
                  v93 = *buf;
                }

                *v308 = 67109378;
                *&v308[4] = v92;
                *&v308[8] = 2080;
                *&v308[10] = v93;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Already stored classic link key (Magic Paired: %d) for address: %s", v308, 0x12u);
                v91 = 0;
              }
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              sub_100008904(v285, *buf, *&buf[8]);
            }

            else
            {
              *v285 = *buf;
              v286 = *&buf[16];
            }

            sub_1007E85C8(a1, v285, v91);
            if ((SHIBYTE(v286) & 0x80000000) == 0)
            {
              goto LABEL_541;
            }

            v202 = v285[0];
LABEL_540:
            operator delete(v202);
LABEL_541:
            nullsub_21();
            goto LABEL_94;
          }

          if (v86 && sub_1000295DC(v86))
          {
            if (qword_100B50950 != -1)
            {
              sub_10087B510();
            }

            *(off_100B50948 + 431) = 2;
            if (qword_100B50AB0 != -1)
            {
              sub_10087B9D4();
            }

            v138 = sub_1000E2570(off_100B50AA8, v72);
            v139 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR);
            if (v138)
            {
              if (v139)
              {
                sub_10087BA58();
              }

              if (qword_100B50AB0 == -1)
              {
                goto LABEL_292;
              }

              goto LABEL_662;
            }

            if (v139)
            {
              sub_10087B9FC();
            }

            if (qword_100B50F88 == -1)
            {
              goto LABEL_481;
            }

            goto LABEL_663;
          }

          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_94;
          }
        }

        sub_10087BA8C();
        goto LABEL_94;
      }

      v42 = [[NSUUID alloc] initWithUUIDBytes:{xpc_dictionary_get_uuid(a3, "kPeerIdentifier")}];
      if (qword_100B50910 != -1)
      {
        sub_10087BB84();
      }

      sub_1005BBE88(off_100B50908, 0);
      [*(a1 + 16) removeObject:v42];
      if (qword_100B50950 != -1)
      {
        sub_10087B510();
      }

      sub_10033CB4C(off_100B50948, v42);
      if (qword_100B50920 != -1)
      {
        sub_10087B630();
      }

      sub_100648960(qword_100B50918, v42);
    }
  }
}

void sub_1007EC364(_Unwind_Exception *a1)
{
  if (*(v2 - 185) < 0)
  {
    operator delete(*(v2 - 208));
  }

  if (*(v2 - 153) < 0)
  {
    operator delete(*(v2 - 176));
  }

  _Unwind_Resume(a1);
}

void sub_1007EC970(uint64_t a1)
{
  if (qword_100B512C8 != -1)
  {
    sub_10087BCA4();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10087B498();
    }

    v5 = sub_10078D05C(off_100B508C8);
    if ([v5 count])
    {
      sub_1007E6898(a1, v5);
    }

    if (qword_100B50F78 != -1)
    {
      sub_10087B484();
    }

    if (sub_100580A38(qword_100B50F70))
    {
      sub_1007E8554(a1, 1);
    }

    v2 = sub_1007ECB84();
    if (v2)
    {
      (*(*a1 + 56))(a1, v2);
    }

    v3 = sub_1007ECEA0();
    if (v3)
    {
      (*(*a1 + 64))(a1, v3);
    }

    if (_os_feature_enabled_impl())
    {
      v4 = sub_1007ED0E4();
      if (v2)
      {
        (*(*a1 + 48))(a1, v4);
      }
    }
  }
}

void sub_1007ECB84()
{
  memset(v1, 0, sizeof(v1));
  if (qword_100B50F68 != -1)
  {
    sub_10087BCB8();
  }

  sub_1000ADA24(off_100B50F60, v1);
  memset(__p, 0, sizeof(__p));
  v2 = xmmword_1008A4E40;
  v3 = 1729713604;
  sub_10000D03C(&v4, &v2);
  sub_100018404(__p, 1uLL);
}

void sub_1007ECE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007ECEA0()
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (qword_100B50F68 != -1)
  {
    sub_10087BCB8();
  }

  sub_1000ADA24(off_100B50F60, &v10);
  v1 = v10;
  v2 = v11;
  if (v10 == v11)
  {
    v0 = 0;
    if (v10)
    {
LABEL_17:
      v11 = v1;
      operator delete(v1);
    }
  }

  else
  {
    while (1)
    {
      if (sub_1000E2140(*v1, 0x17u))
      {
        v16[0] = 0;
        v16[1] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10087B4E8();
        }

        sub_1000CC438(off_100B508C8, (*v1 + 128), v16);
        __p = 0;
        v8 = 0;
        v9 = 0;
        v13 = xmmword_1008A4E54;
        v14 = 2027922698;
        sub_10000D03C(&v15, &v13);
        sub_100099EA8(&__p, &v15, 1uLL);
        if (qword_100B50900 != -1)
        {
          sub_10087BCCC();
        }

        v3 = qword_100B508F8;
        v4 = sub_10004DF60(v16);
        v5 = sub_10070BFF0(v3, v4, &__p, 1, 0, 1);

        if (v5)
        {
          v0 = sub_10004DF60(v16);
        }

        if (__p)
        {
          v8 = __p;
          operator delete(__p);
        }

        if (v5)
        {
          break;
        }
      }

      v1 += 8;
      if (v1 == v2)
      {
        v0 = 0;
        break;
      }
    }

    v1 = v10;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  return v0;
}

void sub_1007ED090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007ED0E4()
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (qword_100B50F68 != -1)
  {
    sub_10087BCB8();
  }

  sub_1000ADA24(off_100B50F60, &v10);
  v1 = v10;
  v2 = v11;
  if (v10 == v11)
  {
    v0 = 0;
    if (v10)
    {
LABEL_18:
      v11 = v1;
      operator delete(v1);
    }
  }

  else
  {
    while (1)
    {
      if (sub_1005399A0(*v1) && (sub_100540848(*v1) & 1) == 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10087B4E8();
        }

        sub_1000CC438(off_100B508C8, (*v1 + 128), v16);
        __p = 0;
        v8 = 0;
        v9 = 0;
        v13 = xmmword_1008A4D14;
        v14 = 0;
        sub_10000D03C(&v15, &v13);
        sub_100099EA8(&__p, &v15, 1uLL);
        if (qword_100B50900 != -1)
        {
          sub_10087BCCC();
        }

        v3 = qword_100B508F8;
        v4 = sub_10004DF60(v16);
        v5 = sub_10070BFF0(v3, v4, &__p, 1, 0, 1);

        if (v5)
        {
          v0 = sub_10004DF60(v16);
        }

        if (__p)
        {
          v8 = __p;
          operator delete(__p);
        }

        if (v5)
        {
          break;
        }
      }

      v1 += 8;
      if (v1 == v2)
      {
        v0 = 0;
        break;
      }
    }

    v1 = v10;
    if (v10)
    {
      goto LABEL_18;
    }
  }

  return v0;
}

void sub_1007ED2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007EDC0C(uint64_t a1)
{
  *a1 = &off_100B0EA28;
  *(a1 + 8) = 8;
  sub_100044BBC((a1 + 16));
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 154) = 1;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  sub_1007EDD10(a1);
  sub_1007EE538();
  sub_1007EF6BC();
  return a1;
}

void sub_1007EDCD4(_Unwind_Exception *a1)
{
  v8 = v5;
  sub_1007F1F9C(v4, *v7);
  sub_10005CFE4(v3, *v6);
  sub_10000CEDC(v2, *v8);
  sub_10007A068(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_1007EDD10(uint64_t a1)
{
  v2 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BTResourceManager LE initialized.", buf, 2u);
  }

  v3 = dword_100B550B8;
  v4 = 11;
  do
  {
    *__s = 0;
    v47 = 0;
    v48 = 0;
    sprintf(__s, "%d", *v3);
    v41 = 0;
    v5 = sub_10000E92C();
    sub_100007E30(buf, "BTResourceManager");
    sub_100007E30(__p, __s);
    v6 = (*(*v5 + 88))(v5, buf, __p, &v41);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (v45 < 0)
    {
      operator delete(*buf);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    else if (!v6)
    {
      goto LABEL_12;
    }

    v7 = qword_100BCE9F8;
    if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = __s;
      v43 = 1024;
      v44 = v41;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Overriding BTResourceManager max connections for %{public}s usecase to %d", buf, 0x12u);
    }

LABEL_12:
    v8 = v41;
    *buf = v3;
    *(sub_100773E70(a1 + 80, v3++, &unk_1008A9BD0, buf) + 16) = v8;
    --v4;
  }

  while (v4);
  LOBYTE(v41) = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DoNotEnforceAllowedList");
  v10 = (*(*v9 + 72))(v9, buf, __p, &v41);
  v11 = v41;
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v10 & v11;
  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else if (!v12)
  {
    goto LABEL_21;
  }

  *(a1 + 152) = 0;
  v13 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - Do Not Enforce Allowed List.", buf, 2u);
  }

LABEL_21:
  v14 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugAllowedList");
  v15 = (*(*v14 + 72))(v14, buf, __p, &v41);
  v16 = v41;
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v15 & v16;
  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v17)
    {
      goto LABEL_29;
    }
  }

  else if (!v17)
  {
    goto LABEL_29;
  }

  *(a1 + 153) = 1;
  v18 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - Enable Debugging Allowed List.", buf, 2u);
  }

LABEL_29:
  *__s = 0;
  v19 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxConnPerBundleIDFromEndConnectingClient");
  v20 = (*(*v19 + 88))(v19, buf, __p, __s);
  if (*__s)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      goto LABEL_40;
    }
  }

  else if (!v21)
  {
    goto LABEL_40;
  }

  v22 = *__s;
  *(a1 + 160) = *__s;
  v23 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - MaxConnPerBundleIDFromEndConnectingClient %d", buf, 8u);
  }

LABEL_40:
  *__s = 0;
  *(a1 + 156) = 94;
  v24 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxConnPerBundleIDFromFindMyClient");
  v25 = (*(*v24 + 88))(v24, buf, __p, __s);
  if (*__s)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else if (!v26)
  {
    goto LABEL_51;
  }

  v27 = *__s;
  *(a1 + 156) = *__s;
  v28 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - MaxConnPerBundleIDFromFindMyClient %d", buf, 8u);
  }

LABEL_51:
  *(a1 + 158) = 32;
  v29 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxConnPerBundleID");
  v30 = (*(*v29 + 88))(v29, buf, __p, __s);
  if (*__s)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_62;
    }
  }

  else if (!v31)
  {
    goto LABEL_62;
  }

  v32 = *__s;
  *(a1 + 158) = *__s;
  v33 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - MaxConnPerBundleID %d", buf, 8u);
  }

LABEL_62:
  v34 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnforceUseCaseRequiredList");
  v35 = (*(*v34 + 72))(v34, buf, __p, &v41);
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (v45 < 0)
  {
    operator delete(*buf);
    if (!v35)
    {
      return;
    }
  }

  else if (!v35)
  {
    return;
  }

  v36 = v41;
  *(a1 + 154) = v41;
  v37 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v38 = "No";
    if (v36)
    {
      v38 = "Yes";
    }

    *buf = 136315138;
    *&buf[4] = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Warning: Overriding - Enforce Use Case Required List: %s", buf, 0xCu);
  }
}

void sub_1007EE4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EE538()
{
  +[NSMutableSet setWithObjects:]( NSMutableSet,  "setWithObjects:",  @"554d08b1bf41ced30d076c7ab17284e2afde2f14cf0606f41b106ebabaf98278",  @"602926fb95b65d8841071711217c956ada1917462051445917d89356ee415929",  @"3a58c9b9f34737fcb1e4ef2c5665843c6d833a2411d47bec0e7caa34ce401e89",  @"febeb2bb2afc79b90aee52b3c218ff6772ceb48b3a84caf9aa173247fbe203d9",  @"6420259b8b00972d9e54148c4399f3918bd184e67def3c308bc90db6e6426e525ad8dab6f1fa117db4bc3427c2853a4feceb05332a2bcd6fb5f3a55db03ff081",  @"15f62a1003c7f91a502a48d8b9d6b9e3234972eb2134266269da426531e0f142",  @"ec0f8fcfbb71cd4859bdcb14f4840f131b1d0931fda6846f637732a49598a49f",  @"f111edae553720e178bfd85db22cc7711b900410735da76b1604c416783fce17",  @"2249f03382b0392a6ca67e5bd4b724a0c7c1d69e4867dc9f26b66ec5fb1a2973",  @"207edf3223fd745f6cef4c884f5e28aa807d49a846b88973e5c71fbcde1de3d9",  @"ef8ff847079725c8fb3ef45a3ad4c69094b719d6eef6207cced996646cad9eb7",  @"358e413d1ec9ed3836bb8fe3f6c47ef03e29bc368636784543f2be232e66541d",  @"8b69e99aebb81c30fb34dc5074023e0f5bb05964ee28d7e43010537fba7d36e0",  @"bf4ce535225ad51bb284f2c4766a0fd74c536abac7a166d9830d3947f374de80",  @"63c4591131b2604f1ca83bf2ae7895f23c723a92106b3740a972b1b14613bc0f",  @"38fa5040af8b215d43372179eacbd6f725312c840059488b197711401d7ad5d4",  @"c097e6524326b43a007761497aca0a778b5581b035f4f0f9773d57156e9b38a0",  @"b96253cbfed55399a9e8b5820dbcf6abc5d9118ee105e2bdef0b201c3b3e9444",  @"24f2d03118a59d1daba966600ed07425b0d875d70c06be360d33fd4ca853af58",  @"23982ca925a8cd3342289446b7f42903ab99be060475efa8b0abc1a792effc29",  @"ae5179510709cdca4f1dde3264d1949698b408f426a98be526c4d14dffc26b91",  @"8e9dc135078197e06b8d8f944a5e651aba2504c63009f4143d5c0365324a5026",  @"ff31c07022e965aa2a54968917cd4f3d41e165e82d31a5fd22856c4217c28553",  @"7fad0ec0a107abc4276a86c201b1bc46d9ef1b0776cc75b71987505da768393d",  @"ea1d0f537acf0783b76af476c0ec5c3acac48b2a5432a73daa8c5afb42f19b0b",  @"a800fae19a5d4e1e92dd43934636be8787bf74e832a80bf2ea709062799acb94",  @"b35a741aeb42e57d2ac0dc685d585b208b97871bab036eaa2e6b9d9a8b89ae6e",  @"79f5c84c1c254c76b8d4ea7601499b7c3a67914dfd3e567704db4b9309ae4fb1",  @"06ccfb2f489cc5912a2cda502c69506b82cad5934895ea6ae535cab35c5bc9e3",  @"bb18ff323ebe7357070647660f905b6c4417447bdbcc79bea36ee4cf2c66b3d7",  @"a8885154121f858ca8518f612a1726949e3cf810ff24f61066fd79edf6ce7a88",  @"06fa9dee637f78720fe2778c92824a6dd80299f34646910a83029d23ca3399a4",  @"a09e4a534d554ffe8cf0544b591bf9f635ca605771f6a72ef93103fa38c41f95",  @"089f80bd091e54346dc645636f8f7b51c1d22ba623f3c0f8c05d17c34c92bc27",  @"ae98258fc9148e2a33ba48f0e2eaa82e813fdb86d010482101cae83f3d2a877d",  @"decfd0b0b0a0bfeaa333cce4c5ec9590f5f8274561d4347e9f1f6a29aa8f1d34",  @"ecc1d20a6f0e9ee4e7f384a0cdfe18050cee19a5c7c94adb6c94e12f647d24f2",  @"8cbd21794df7f1c16bbd5a267f976326a24bf9ddb3ac745bc4a854af006a50b7",  @"dfa8283074903b24529434aac683ac9d3853d95107f7fd3ee581f7c69ffc65dd",  @"e5457e14a88f3003c6c64edcaa85fbe18f7fd23e6385c9acb0f210bcd84e837e",  @"636c1f0ee6b0cccebbbfd5979ae5ecf09bcbe673df044883881fd69d313a9eac",  @"aaf648093c082f5b9999e9d8eaec9235503aa3963726641be8635701db151cfe",  @"15f6b2947dd7ad89fe858cbe80ee51c2c6c5e4625ad5d4e9b6de6c1b15db213b",  @"be0bcf7017deaa4c2f173c24718a2648f5c5e6b7a6b296df919775043acd7b73",  @"c1d1c54c3bb978737276ec2c974256db9e98e3878cf204c48ecc2bf6a3906e2a",  @"cdf1779ec4f156ca577a1e99372fe3227e2552dff8d533624ea5312c814e9c85",  @"619157a2665ca48dbd59740e7993884af9e9aefa23d42ca3beed72450a80130a",
    @"9234a514af8110d515b6a7b362afa91050b27ae2b3fcf310fa4f6e590a0c4210",
    @"c6538eb30a5e64df30159760d1c20dfb82cf10febdc237bfb3fbeaae8061e958",
    @"306dec84ac641c728a5e52b9257a536faaa292db3109b0c6c3b4b2a24999c1d8",
    @"723cf059e96372678a4c6ab6e38a54839d30b660e750e6b8cb8f61bb63437938",
    @"64b90991318f675b807c35b4ff35850a05967ee72b06176f5d1f57318bcc60e2",
    @"b86e6ba2c543374a4736569af4226371b78532514f935dd1122cdf84199d42b9",
    @"e2ae0f5a011d888eb0249f576a1f6d1cf0ab5953cf25e1451f1a476e86673b93",
    @"b27625a6780b68f433ec7012f3c75a73925c24a6a91868ceb99ac4a0ea0413e6",
    @"e64c7c5f0599df5b5800ec1771e2794491b06f49d43c00707c08c2a8d6fea059",
    @"97de29e787d6f164641fcc1a685baa8eb77cc27a1b350e75a1f0b70a0eb3204a",
    @"7abe9e90bfb16aecae19e551312117deb7622939758c83e1d65387f2fb4d94ee",
    @"546b9e29db47ebfb832d8aab0acc66bea1d4e1edf415371973ded7162c16d63e",
    @"954d5429cc098dc2f1de8f3b7b7555828b0e1fad89c315fec3f6dd9ffc5b81aa",
  v0 = @"a0e4ed5f7f57ef31adaa8e443aa30d5703b5eb7e4ccf0d4809388d975675c5da");
  v1 = qword_100BCED40;
  qword_100BCED40 = v0;

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(&__dst, "LEAllowedBundleIDs");
  if ((*(*v2 + 48))(v2, &__dst, &v28))
  {
    v4 = v28;
    v3 = v29;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst);
    }

    if (v3 != v4)
    {
      v5 = v28;
      for (i = v29; v5 != i; v5 = (v5 + 24))
      {
        v27 = 0;
        __dst = 0uLL;
        if (*(v5 + 23) < 0)
        {
          sub_100008904(&__dst, *v5, *(v5 + 1));
        }

        else
        {
          v7 = *v5;
          v27 = *(v5 + 2);
          __dst = v7;
        }

        v8 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v27 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          *buf = 136446210;
          v32 = p_dst;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Additional BundleID for allowedHashedBundleIDsSet by Overriding: %{public}s", buf, 0xCu);
        }

        v10 = [NSString alloc];
        if (v27 >= 0)
        {
          v11 = &__dst;
        }

        else
        {
          v11 = __dst;
        }

        v12 = [v10 initWithUTF8String:v11];
        v13 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED40 addObject:v13];

        if (SHIBYTE(v27) < 0)
        {
          operator delete(__dst);
        }
      }
    }
  }

  else if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  v14 = sub_10000E92C();
  sub_100007E30(&__dst, "LEDisallowedBundleIDs");
  if ((*(*v14 + 48))(v14, &__dst, &v28))
  {
    v16 = v28;
    v15 = v29;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst);
    }

    if (v15 != v16)
    {
      v17 = v28;
      for (j = v29; v17 != j; v17 = (v17 + 24))
      {
        v27 = 0;
        __dst = 0uLL;
        if (*(v17 + 23) < 0)
        {
          sub_100008904(&__dst, *v17, *(v17 + 1));
        }

        else
        {
          v19 = *v17;
          v27 = *(v17 + 2);
          __dst = v19;
        }

        v20 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v27 >= 0)
          {
            v21 = &__dst;
          }

          else
          {
            v21 = __dst;
          }

          *buf = 136446210;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BundleID is removed from allowedHashedBundleIDsSet by Overriding: %{public}s", buf, 0xCu);
        }

        v22 = [NSString alloc];
        if (v27 >= 0)
        {
          v23 = &__dst;
        }

        else
        {
          v23 = __dst;
        }

        v24 = [v22 initWithUTF8String:v23];
        v25 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED40 removeObject:v25];

        if (SHIBYTE(v27) < 0)
        {
          operator delete(__dst);
        }
      }
    }
  }

  else if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst);
  }

  *&__dst = &v28;
  sub_1000161FC(&__dst);
}

void sub_1007EF634(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  *(v1 - 160) = v1 - 136;
  sub_1000161FC((v1 - 160));
  _Unwind_Resume(a1);
}

void sub_1007EF6BC()
{
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v0 = [NSMutableSet setWithObjects:@"f50eeeda9ef9e96cbfd2e255ecd185cedcaa7c023ad51d903de5405e4d94264c", @"7cd05bfaa85fc888b9ea05e891a98fb01ddd16ecadacddc789dd2e67dd008d81", 0];
  v1 = qword_100BCED48;
  qword_100BCED48 = v0;

  v2 = sub_10000E92C();
  sub_100007E30(__p, "AddLEUseCaseRequiredBundleIDsScan");
  if ((*(*v2 + 48))(v2, __p, &v80))
  {
    v4 = v80;
    v3 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v3 != v4)
    {
      v5 = v80;
      for (i = v81; v5 != i; v5 = (v5 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v5 + 23) < 0)
        {
          sub_100008904(__p, *v5, *(v5 + 1));
        }

        else
        {
          v7 = *v5;
          v79 = *(v5 + 2);
          *__p = v7;
        }

        v8 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          *buf = 136446210;
          v84 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Additional BundleID for useCaseRequiredHashedBundleIDsSet for Scanning by Overriding: %{public}s", buf, 0xCu);
        }

        v10 = [NSString alloc];
        if (v79 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = [v10 initWithUTF8String:v11];
        v13 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED48 addObject:v13];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = sub_10000E92C();
  sub_100007E30(__p, "RemoveLEUseCaseRequiredBundleIDsScan");
  if ((*(*v14 + 48))(v14, __p, &v80))
  {
    v16 = v80;
    v15 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 != v16)
    {
      v17 = v80;
      for (j = v81; v17 != j; v17 = (v17 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v17 + 23) < 0)
        {
          sub_100008904(__p, *v17, *(v17 + 1));
        }

        else
        {
          v19 = *v17;
          v79 = *(v17 + 2);
          *__p = v19;
        }

        v20 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          *buf = 136446210;
          v84 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BundleID is removed from useCaseRequiredHashedBundleIDsSet for Scanning by Overriding: %{public}s", buf, 0xCu);
        }

        v22 = [NSString alloc];
        if (v79 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        v24 = [v22 initWithUTF8String:v23];
        v25 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED48 removeObject:v25];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v26 = [NSMutableSet setWithObjects:@"f50eeeda9ef9e96cbfd2e255ecd185cedcaa7c023ad51d903de5405e4d94264c", @"7cd05bfaa85fc888b9ea05e891a98fb01ddd16ecadacddc789dd2e67dd008d81", 0];
  v27 = qword_100BCED50;
  qword_100BCED50 = v26;

  v28 = sub_10000E92C();
  sub_100007E30(__p, "AddLEUseCaseRequiredBundleIDsConnect");
  if ((*(*v28 + 48))(v28, __p, &v80))
  {
    v30 = v80;
    v29 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 != v30)
    {
      v31 = v80;
      for (k = v81; v31 != k; v31 = (v31 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v31 + 23) < 0)
        {
          sub_100008904(__p, *v31, *(v31 + 1));
        }

        else
        {
          v33 = *v31;
          v79 = *(v31 + 2);
          *__p = v33;
        }

        v34 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          *buf = 136446210;
          v84 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Additional BundleID for useCaseRequiredHashedBundleIDsSet for Connection by Overriding: %{public}s", buf, 0xCu);
        }

        v36 = [NSString alloc];
        if (v79 >= 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = __p[0];
        }

        v38 = [v36 initWithUTF8String:v37];
        v39 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED50 addObject:v39];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v40 = sub_10000E92C();
  sub_100007E30(__p, "RemoveLEUseCaseRequiredBundleIDsConnect");
  if ((*(*v40 + 48))(v40, __p, &v80))
  {
    v42 = v80;
    v41 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v41 != v42)
    {
      v43 = v80;
      for (m = v81; v43 != m; v43 = (v43 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v43 + 23) < 0)
        {
          sub_100008904(__p, *v43, *(v43 + 1));
        }

        else
        {
          v45 = *v43;
          v79 = *(v43 + 2);
          *__p = v45;
        }

        v46 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v47 = __p;
          }

          else
          {
            v47 = __p[0];
          }

          *buf = 136446210;
          v84 = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "BundleID is removed from useCaseRequiredHashedBundleIDsSet for Connection by Overriding: %{public}s", buf, 0xCu);
        }

        v48 = [NSString alloc];
        if (v79 >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        v50 = [v48 initWithUTF8String:v49];
        v51 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED50 removeObject:v51];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v52 = [NSMutableSet setWithObjects:@"7cd05bfaa85fc888b9ea05e891a98fb01ddd16ecadacddc789dd2e67dd008d81", 0];
  v53 = qword_100BCED58;
  qword_100BCED58 = v52;

  v54 = sub_10000E92C();
  sub_100007E30(__p, "AddLEUseCaseRequiredBundleIDsAdv");
  if ((*(*v54 + 48))(v54, __p, &v80))
  {
    v56 = v80;
    v55 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v55 != v56)
    {
      v57 = v80;
      for (n = v81; v57 != n; v57 = (v57 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v57 + 23) < 0)
        {
          sub_100008904(__p, *v57, *(v57 + 1));
        }

        else
        {
          v59 = *v57;
          v79 = *(v57 + 2);
          *__p = v59;
        }

        v60 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v61 = __p;
          }

          else
          {
            v61 = __p[0];
          }

          *buf = 136446210;
          v84 = v61;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Additional BundleID for useCaseRequiredHashedBundleIDsSet for Advertising by overriding: %{public}s", buf, 0xCu);
        }

        v62 = [NSString alloc];
        if (v79 >= 0)
        {
          v63 = __p;
        }

        else
        {
          v63 = __p[0];
        }

        v64 = [v62 initWithUTF8String:v63];
        v65 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED58 addObject:v65];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  v66 = sub_10000E92C();
  sub_100007E30(__p, "RemoveLEUseCaseRequiredBundleIDsAdv");
  if ((*(*v66 + 48))(v66, __p, &v80))
  {
    v68 = v80;
    v67 = v81;
    if (SHIBYTE(v79) < 0)
    {
      operator delete(__p[0]);
    }

    if (v67 != v68)
    {
      v69 = v80;
      for (ii = v81; v69 != ii; v69 = (v69 + 24))
      {
        __p[1] = 0;
        v79 = 0;
        __p[0] = 0;
        if (*(v69 + 23) < 0)
        {
          sub_100008904(__p, *v69, *(v69 + 1));
        }

        else
        {
          v71 = *v69;
          v79 = *(v69 + 2);
          *__p = v71;
        }

        v72 = qword_100BCE9F8;
        if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
        {
          if (v79 >= 0)
          {
            v73 = __p;
          }

          else
          {
            v73 = __p[0];
          }

          *buf = 136446210;
          v84 = v73;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "BundleID is removed from useCaseRequiredHashedBundleIDsSet for Advertising by overriding: %{public}s", buf, 0xCu);
        }

        v74 = [NSString alloc];
        if (v79 >= 0)
        {
          v75 = __p;
        }

        else
        {
          v75 = __p[0];
        }

        v76 = [v74 initWithUTF8String:v75];
        v77 = CBGenerateObfuscatedSHA256HashedString();
        [qword_100BCED58 removeObject:v77];

        if (SHIBYTE(v79) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (SHIBYTE(v79) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = &v80;
  sub_1000161FC(__p);
}

void sub_1007F0120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  __p = &a19;
  sub_1000161FC(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F024C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = a1 + 88;
    do
    {
      v4 = *(v2 + 28);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != a1 + 88 && *(v3 + 28) <= a2)
    {
      v7 = *(v3 + 32);
      if (v7)
      {
        return v7;
      }
    }
  }

  if ((a2 - 20) < 2 || a2 == 655360)
  {
    return *(a1 + 8);
  }

  if ((a2 & 0xFFFF0000) == 0x10000 && dword_100B550B8[0] != a2)
  {
    v9 = -1;
    v10 = &dword_100B550BC;
    do
    {
      if (v9 == 9)
      {
        break;
      }

      v11 = *v10++;
      ++v9;
    }

    while (v11 != a2);
  }

  v12 = *(*sub_10000C7D0(a1, a2) + 4016);

  return v12();
}

uint64_t sub_1007F03B0(uint64_t a1, int a2)
{
  v3 = 0;
  v4 = 0;
  do
  {
    if (HIWORD(dword_100B550B8[v3]) == a2)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10087BCF4();
      }

      v4 += sub_100756B64(off_100B508A8, dword_100B550B8[v3]);
    }

    ++v3;
  }

  while (v3 != 11);
  return v4;
}

uint64_t sub_1007F0440(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFF0000) == 0x10000)
  {
    if (dword_100B550B8[0] == a2)
    {
LABEL_3:
      v3 = sub_1007F03B0(a1, 1);
      if (qword_100B508B0 == -1)
      {
        return (sub_100756B64(off_100B508A8, 3) + v3);
      }

      goto LABEL_18;
    }

    v5 = -1;
    v6 = &dword_100B550BC;
    while (v5 != 9)
    {
      v7 = *v6++;
      ++v5;
      if (v7 == a2)
      {
        if (v5 <= 9)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (qword_100B508B0 == -1)
    {
      goto LABEL_15;
    }

LABEL_20:
    sub_10087BCF4();
    goto LABEL_15;
  }

  if (a2 == 3)
  {
    v3 = sub_1007F03B0(a1, 1);
    if (qword_100B508B0 == -1)
    {
      return (sub_100756B64(off_100B508A8, 3) + v3);
    }

LABEL_18:
    sub_10087BCF4();
    return (sub_100756B64(off_100B508A8, 3) + v3);
  }

  if (qword_100B508B0 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v8 = off_100B508A8;

  return sub_100756B64(v8, a2);
}

uint64_t sub_1007F0570(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C798(a1, a2);
  v3 = (*(*v2 + 360))(v2);
  if (v3)
  {
    return 2;
  }

  else
  {
    v6 = sub_10000C798(v3, v4);
    v7 = (*(*v6 + 368))(v6);
    v5 = 2;
    if ((v7 & 1) == 0)
    {
      v9 = sub_10000C798(v7, v8);
      if ((*(*v9 + 456))(v9))
      {
        return 2;
      }

      else
      {
        return -1;
      }
    }
  }

  return v5;
}

uint64_t sub_1007F063C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"com.apple.locationd"])
  {
    v4 = 156;
  }

  else
  {
    v5 = [v3 isEqualToString:@"com.apple.icloud.searchpartyd"];
    v4 = 158;
    if (v5)
    {
      v4 = 156;
    }
  }

  v6 = *(a1 + v4);

  return v6;
}

uint64_t sub_1007F06B8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 160);
  if (!result)
  {
    return sub_1007F0570(result, a2);
  }

  return result;
}

uint64_t sub_1007F06C8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (sub_1007F0738(v1))
    {
      v3 = 1;
    }

    else if (sub_1007F0794(v2))
    {
      v3 = 15;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1007F0738(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 localizedCaseInsensitiveContainsString:@"com.apple.healthkit"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1007F0794(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 localizedCaseInsensitiveContainsString:@"com.dexcom."] & 1) != 0 || (objc_msgSend(v2, "localizedCaseInsensitiveContainsString:", @"com.medtronic."))
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 localizedCaseInsensitiveContainsString:@"com.senseonics."];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1007F0820(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 localizedCaseInsensitiveContainsString:@"com.apple.bluetoothd-central"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1007F087C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = qword_100BCE9F8;
    if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 134217984;
      *&__p[4] = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accept provided connection use type %ld", __p, 0xCu);
    }

    v10 = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    sub_100018384(a1, __p);
    v12 = v23;
    v13 = *__p;
    v14 = +[NSString defaultCStringEncoding];
    if (v12 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = v13;
    }

    v10 = [NSString stringWithCString:v15 encoding:v14];
    if (v23 < 0)
    {
      operator delete(*__p);
    }

    if (sub_1007F0820(v10))
    {
      v16 = v7;
      if (!v7)
      {
        v16 = v8;
        if (!v8)
        {
          a4 = 0;
LABEL_21:
          v19 = qword_100BCE9F8;
          if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 138543618;
            *&__p[4] = v10;
            v21 = 2048;
            v22 = a4;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "getConnectionUseCase directConnectionClientString %{public}@ connectionUseCase %ld", __p, 0x16u);
          }

          goto LABEL_5;
        }
      }

      v17 = sub_1007F06C8(v16);
    }

    else
    {
      v17 = sub_1007F06C8(v10);
    }

    a4 = v17;
    goto LABEL_21;
  }

  v18 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_ERROR))
  {
    sub_10087BD08(v18);
  }

  v10 = 0;
  a4 = 0;
LABEL_5:

  return a4;
}

void sub_1007F0AC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = a3;
  v7 = a4;
  v41[0] = 0;
  v41[1] = 0;
  sub_100007F88(v41, a1 + 16);
  v8 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = uu1;
    sub_100018384(a2, uu1);
    if (v46 < 0)
    {
      v9 = *uu1;
    }

    v10 = [v7 clientBundleID];
    if (v10)
    {
      v11 = [v7 clientBundleID];
    }

    else
    {
      v11 = @"NoClientBundleID";
    }

    v12 = [v7 clientProcessID];
    if (v12)
    {
      v13 = [v7 clientProcessID];
    }

    else
    {
      v13 = @"NoClientProcessID";
    }

    v14 = [v7 connectionUseCase];
    v15 = [v7 maxAllowedConnectionDelay];
    *buf = 138544642;
    *&buf[4] = v36;
    v48 = 2082;
    v49 = v9;
    v50 = 2114;
    v51 = v11;
    v52 = 2112;
    *v53 = v13;
    *&v53[8] = 2048;
    *&v53[10] = v14;
    v54 = 2048;
    v55 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connect Requested for device %{public}@ by session %{public}s with options clientBundleID %{public}@ clientProcessID %@ connectionUseCase %ld maxAllowedConnectionDelay %ld", buf, 0x3Eu);
    if (v12)
    {
    }

    if (v10)
    {
    }

    if (v46 < 0)
    {
      operator delete(*uu1);
    }
  }

  v16 = [v7 clientBundleID];
  v17 = [v7 clientProcessID];
  v18 = sub_1007F087C(a2, v16, v17, [v7 connectionUseCase]);

  v20 = v18 == 15 || v18 == 1;
  sub_10004DFB4(buf, v36);
  *uu1 = buf;
  v21 = [NSMutableSet setWithSet:sub_1007F2060((a1 + 128), buf, &unk_1008A9BD0, uu1, &v43)[6]];
  v22 = [v7 connectingClients];
  v23 = v22 == 0;

  if (v23)
  {
    sub_100018384(a2, buf);
    if (v50 >= 0)
    {
      v28 = buf;
    }

    else
    {
      v28 = *buf;
    }

    v29 = [NSString stringWithUTF8String:v28];
    [v21 addObject:v29];

    if (SHIBYTE(v50) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = [v7 connectingClients];
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v25)
    {
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v24);
          }

          [v21 addObject:*(*(&v37 + 1) + 8 * i)];
        }

        v25 = [v24 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v25);
    }
  }

  sub_10004DFB4(buf, v36);
  *uu1 = buf;
  v30 = sub_1007F2060((a1 + 128), buf, &unk_1008A9BD0, uu1, &v43);
  objc_storeStrong(v30 + 6, v21);
  v31 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v7 connectionUseCase];
    if (v20)
    {
      v33 = 5;
    }

    else
    {
      v33 = 0;
    }

    sub_10004DFB4(uu1, v36);
    v43 = uu1;
    v34 = sub_1007F2060((a1 + 128), uu1, &unk_1008A9BD0, &v43, &v42)[6];
    *buf = 138544386;
    *&buf[4] = v36;
    v48 = 2048;
    v49 = v32;
    v50 = 2048;
    v51 = v18;
    v52 = 1024;
    *v53 = v33;
    *&v53[4] = 2114;
    *&v53[6] = v34;
    v35 = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Device %{public}@ connectionUseCase (req %ld computed %ld) priority %hhu bundleIDs %{public}@", buf, 0x30u);
  }

  sub_1000088CC(v41);
}

void sub_1007F0F98(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  if (v20)
  {
  }

  if (*(v23 - 177) < 0)
  {
    operator delete(*(v23 - 200));
  }

  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007F1090(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v33 = a4;
  v38[0] = 0;
  v38[1] = 0;
  sub_100007F88(v38, a1 + 16);
  sub_10004DFB4(__p, v7);
  *uu1 = __p;
  v8 = [NSMutableSet setWithSet:sub_1007F2060((a1 + 128), __p, &unk_1008A9BD0, uu1, &v40)[6]];
  v9 = [v33 connectingClients];
  LODWORD(a4) = v9 == 0;

  if (a4)
  {
    sub_100018384(a2, __p);
    if (v45 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = *__p;
    }

    v15 = [NSString stringWithUTF8String:v14];
    [v8 removeObject:v15];

    if (SHIBYTE(v45) < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v33 connectingClients];
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v11)
    {
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [v8 removeObject:*(*(&v34 + 1) + 8 * i)];
        }

        v11 = [v10 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v11);
    }
  }

  if ([v8 count])
  {
    sub_10004DFB4(__p, v7);
    *uu1 = __p;
    v16 = sub_1007F2060((a1 + 128), __p, &unk_1008A9BD0, uu1, &v40);
    objc_storeStrong(v16 + 6, v8);
  }

  v17 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v33 connectionUseCase];
    sub_10004DFB4(uu1, v7);
    v40 = uu1;
    v19 = sub_1007F2060((a1 + 128), uu1, &unk_1008A9BD0, &v40, &v39)[6];
    *__p = 138543874;
    *&__p[4] = v7;
    v43 = 2048;
    v44 = v18;
    v45 = 2114;
    v46 = v19;
    v20 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device %{public}@ connectionUseCase (req %ld) bundleIDs %{public}@", __p, 0x20u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087BD4C();
  }

  v21 = off_100B508C8;
  sub_100018384(a2, __p);
  v22 = SHIBYTE(v45);
  v23 = *__p;
  v24 = +[NSString defaultCStringEncoding];
  if (v22 >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = v23;
  }

  v26 = [NSString stringWithCString:v25 encoding:v24];
  sub_10078C53C(v21, v7, v26);

  if (SHIBYTE(v45) < 0)
  {
    operator delete(*__p);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087BD4C();
  }

  v27 = off_100B508C8;
  sub_100018384(a2, __p);
  v28 = SHIBYTE(v45);
  v29 = *__p;
  v30 = +[NSString defaultCStringEncoding];
  if (v28 >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = v29;
  }

  v32 = [NSString stringWithCString:v31 encoding:v30];
  sub_10078C334(v27, v7, v32);

  if (SHIBYTE(v45) < 0)
  {
    operator delete(*__p);
  }

  sub_1000088CC(v38);
}

void sub_1007F1498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

void sub_1007F1548(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[1] = 0;
  v11 = v5;
  v10[0] = 0;
  sub_100007F88(v10, a1 + 16);
  v6 = *(a1 + 104);
  if (v6 != (a1 + 112))
  {
    while (![v5 isEqual:v6[4]])
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
      if (v8 == (a1 + 112))
      {
        goto LABEL_11;
      }
    }

    sub_1003C4E3C((a1 + 104), v6);
  }

LABEL_11:
  if (a3)
  {
    v12[0] = &v11;
    sub_10050741C(a1 + 104, &v11, &unk_1008A9BD0, v12)[5] = a3;
  }

  else
  {
    sub_10004DFB4(v12, v5);
    sub_1007F2248((a1 + 128), v12);
  }

  sub_1000088CC(v10);
}

void sub_1007F1690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  sub_1000088CC(&a10);

  _Unwind_Resume(a1);
}

void sub_1007F16C8(void *a1)
{
  v2 = qword_100BCE9F8;
  if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ BT Resource Manager -------------------", buf, 2u);
    v2 = qword_100BCE9F8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Max Connections for use case:", buf, 2u);
    v2 = qword_100BCE9F8;
  }

  v3 = 0;
  v4 = a1 + 11;
  do
  {
    v5 = dword_100B550B8[v3];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1007F024C(a1, v5);
      v7 = a1[11];
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = a1 + 11;
      do
      {
        v9 = *(v7 + 28);
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v8 = v7;
        }

        v7 = *(v7 + 8 * v11);
      }

      while (v7);
      if (v8 == v4 || v5 < *(v8 + 7))
      {
LABEL_15:
        v8 = a1 + 11;
      }

      v12 = v8 == v4;
      *buf = 67109634;
      v13 = "YES";
      if (v12)
      {
        v13 = "NO";
      }

      *&buf[4] = v5;
      *&buf[8] = 1024;
      *&buf[10] = v6;
      *&buf[14] = 2082;
      *&buf[16] = v13;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:  useCase:%d maxConnections:%d (override:%{public}s)", buf, 0x18u);
      v2 = qword_100BCE9F8;
    }

    ++v3;
  }

  while (v3 != 11);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: current device states and use cases:", buf, 2u);
    v2 = qword_100BCE9F8;
  }

  v14 = a1[13];
  if (v14 != a1 + 14)
  {
    do
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14[5];
        v16 = "unknown";
        if (v15 <= 3)
        {
          v16 = off_100B0EA78[v15];
        }

        v17 = v14[4];
        if (qword_100B508D0 != -1)
        {
          sub_10087BD4C();
        }

        v18 = sub_100788D8C(off_100B508C8, v14[4]);
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2082;
        *&buf[14] = v16;
        *&buf[22] = 1024;
        *&buf[24] = v18;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:  device:%{public}@ state:%{public}s usecase:%u", buf, 0x1Cu);
        v2 = qword_100BCE9F8;
      }

      v19 = v14[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v14[2];
          v12 = *v20 == v14;
          v14 = v20;
        }

        while (!v12);
      }

      v14 = v20;
    }

    while (v20 != a1 + 14);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: current device connect request bundleIDs:", buf, 2u);
  }

  v21 = a1[16];
  if (v21 != (a1 + 17))
  {
    do
    {
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      memset(v52, 0, sizeof(v52));
      memset(buf, 0, sizeof(buf));
      sub_100007AD0(buf);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v22 = *(v21 + 6);
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v23)
      {
        v24 = *v43;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v43 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = [*(*(&v42 + 1) + 8 * i) UTF8String];
            v27 = v26;
            v28 = strlen(v26);
            v29 = sub_100007774(&buf[16], v27, v28);
            sub_100007774(v29, ",", 1);
          }

          v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v23);
      }

      v30 = qword_100BCE9F8;
      if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(v21 + 32, out);
        sub_100007E30(__p, out);
        v31 = v41;
        v32 = __p[0];
        std::stringbuf::str();
        v33 = __p;
        if (v31 < 0)
        {
          v33 = v32;
        }

        v34 = out;
        if (out[23] < 0)
        {
          v34 = *out;
        }

        *v46 = 136446466;
        v47 = v33;
        v48 = 2082;
        v49 = v34;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "statedump:  device:%{public}s connectRequestBundleIDs:%{public}s", v46, 0x16u);
        if (out[23] < 0)
        {
          operator delete(*out);
        }

        if (v41 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *buf = v39;
      *&buf[*(v39 - 24)] = v38;
      *&buf[16] = v37;
      if (SHIBYTE(v54) < 0)
      {
        operator delete(*(&v53 + 1));
      }

      std::locale::~locale(v52);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v35 = *(v21 + 1);
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = *(v21 + 2);
          v12 = *v36 == v21;
          v21 = v36;
        }

        while (!v12);
      }

      v21 = v36;
    }

    while (v36 != a1 + 17);
  }
}