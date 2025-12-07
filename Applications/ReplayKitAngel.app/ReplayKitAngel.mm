void sub_1000026D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136446466;
      v3 = "[RPBackgroundActivity activateWithUserInteractionHandler:]_block_invoke";
      v4 = 1024;
      v5 = 67;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity already active, skipping activation", &v2, 0x12u);
    }
  }

  else
  {
    *(v1 + 8) = 1;
  }
}

void sub_10000290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002924(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446466;
    v3 = "[RPBackgroundActivity deactivate]_block_invoke";
    v4 = 1024;
    v5 = 82;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, skipping deactivation", &v2, 0x12u);
  }
}

void sub_100002CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100002D14(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setCurrentTimerString:v2];
}

void sub_100002D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained currentAttribution];

    if (v9)
    {
      v10 = [STBackgroundActivitiesStatusDomainBackgroundActivityAttribution alloc];
      v11 = [v8 currentAttribution];
      v12 = [v11 backgroundActivityIdentifier];
      v13 = [v8 currentAttribution];
      v14 = [v13 activityAttribution];
      v15 = [v10 initWithBackgroundActivityIdentifier:v12 activityAttribution:v14];

      v16 = [v8 currentAttribution];
      [v5 removeAttribution:v16];

      [v5 addAttribution:v15];
      [v8 setCurrentAttribution:v15];
    }

    else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446466;
      v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
      v19 = 1024;
      v20 = 136;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No current attribution to update with timer string", &v17, 0x12u);
    }

    [v6 setUserInitiated:0];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
    v19 = 1024;
    v20 = 122;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during timer update", &v17, 0x12u);
  }
}

void sub_1000033E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v29 - 128));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003438(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 180;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Removing background activity attribution=%@", &v11, 0x1Cu);
      }

      v7 = *(a1 + 32);
    }

    [v5 removeAttribution:v7];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = 136446722;
        v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v13 = 1024;
        v14 = 184;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Adding background activity attribution=%@", &v11, 0x1Cu);
      }

      v9 = *(a1 + 40);
    }

    [v5 addAttribution:v9];
  }

  [v6 setUserInitiated:1];
}

void sub_1000035EC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000038E8;
    block[3] = &unk_10005D188;
    block[4] = WeakRetained;
    v9 = a1[4];
    dispatch_sync(v4, block);
    v5 = v3[5];
    if (v5)
    {
      if (a1[5])
      {
        if (__RPLogLevel > 1u)
        {
          goto LABEL_8;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 205;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_8:
          v6[0] = _NSConcreteStackBlock;
          v6[1] = 3221225472;
          v6[2] = sub_1000038F0;
          v6[3] = &unk_10005D1B0;
          v7 = a1[5];
          [v5 handleUserInteractionsWithBlock:v6];
        }
      }

      else
      {
        if (__RPLogLevel > 1u)
        {
          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v12 = 1024;
          v13 = 213;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Clearing user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_19:
          [v5 handleUserInteractionsWithBlock:0];
        }
      }
    }

    else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100043474();
    }
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v12 = 1024;
    v13 = 191;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during publish operation", buf, 0x12u);
  }
}

void sub_1000038F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v6 = 1024;
    v7 = 208;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d User interaction detected", &v4, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003AB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t start(int a1, char **a2)
{
  v4 = +[RPAngelConnectionManager sharedInstance];
  [v4 activateMachService];

  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_autoreleasePoolPop(v5);
  v8 = UIApplicationMain(a1, a2, 0, v7);

  return v8;
}

void sub_100005CEC(id a1)
{
  qword_100069860 = objc_alloc_init(RPAngelConnectionManager);

  _objc_release_x1();
}

void sub_100005E14(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.ReplayKitAngel"];
  [v3 setService:@"com.apple.ReplayKitAngel.session"];
  [v3 setDelegate:*(a1 + 32)];
}

void sub_100006024(id a1)
{
  qword_100069870 = dispatch_queue_create("com.replaykitangel.connectionManagerQueue", 0);

  _objc_release_x1();
}

void sub_1000061DC(id a1)
{
  v5 = [BSMutableServiceInterface interfaceWithIdentifier:@"com.apple.ReplayKitAngel.session"];
  v1 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___RPAngelServerProtocol];
  [v5 setServer:v1];

  v2 = [BSObjCProtocol protocolForProtocol:&OBJC_PROTOCOL___RPAngelClientProtocol];
  [v5 setClient:v2];

  [v5 setClientMessagingExpectation:0];
  v3 = [v5 copy];
  v4 = qword_100069880;
  qword_100069880 = v3;
}

void sub_1000062A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 connectionManagerQueue];
  [v6 setTargetQueue:v4];

  v5 = +[BSServiceQuality userInitiated];
  [v6 setServiceQuality:v5];

  [v6 setInterface:qword_100069880];
  [v6 setInterfaceTarget:*(a1 + 32)];
  [v6 setActivationHandler:&stru_10005D2C8];
  [v6 setInvalidationHandler:&stru_10005D2E8];
  [v6 setInterruptionHandler:&stru_10005D308];
}

void sub_100006380(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke_3";
    v5 = 1024;
    v6 = 109;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel Server: Activation Handler", &v3, 0x12u);
  }
}

void sub_100006454(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
    v6 = 1024;
    v7 = 113;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel Server: Invalidation handler", &v4, 0x12u);
  }

  v3 = +[RPRemoteAlertManager sharedInstance];
  [v3 clearRemoteHandle];
}

void sub_100006544(id a1, BSServiceConnectionContext *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
    v6 = 1024;
    v7 = 118;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d RPAngel Server: Interruption handler", &v4, 0x12u);
  }

  v3 = +[RPRemoteAlertManager sharedInstance];
  [v3 clearRemoteHandle];
}

id sub_100006634(uint64_t a1)
{
  if ([*(a1 + 32) addConnection:*(a1 + 40)])
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      v5 = 136446722;
      v6 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
      v7 = 1024;
      v8 = 126;
      v9 = 2048;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Activating Connection=%p", &v5, 0x1Cu);
    }

    return [*(a1 + 40) activate];
  }

  else
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 136446722;
      v6 = "[RPAngelConnectionManager listener:didReceiveConnection:withContext:]_block_invoke";
      v7 = 1024;
      v8 = 129;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Did not add connection, invalidating Connection=%p", &v5, 0x1Cu);
    }

    return [*(a1 + 40) invalidate];
  }
}

id sub_100007648(uint64_t a1)
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);
    v5 = 136446978;
    v6 = "[RPAngelConnectionManager setCountdownState:]_block_invoke";
    v7 = 1024;
    v8 = 223;
    v9 = 2048;
    v10 = v3;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d delegate:%p setting countdown state:%@", &v5, 0x26u);
  }

  return [*(*(a1 + 32) + 40) setCountdownState:*(a1 + 40)];
}

void sub_100007864(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "[RPAngelConnectionManager enableCameraPip]_block_invoke";
      v8 = 1024;
      v9 = 233;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pip is already active", &v6, 0x12u);
    }
  }

  else
  {
    v2 = objc_alloc_init(RPAngelCameraPipViewController);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = *(*(a1 + 32) + 32);

    [v5 startPipSession];
  }
}

void sub_100007ABC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) stopPipSession];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void sub_1000090A4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) startPictureInPicture];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPAngelCameraPipViewController startPipSession]_block_invoke";
    v3 = 1024;
    v4 = 96;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pip started", &v1, 0x12u);
  }
}

void sub_100009C94(uint64_t a1)
{
  [*(*(a1 + 32) + 24) startPictureInPicture];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136446466;
    v2 = "[RPAngelCameraPipViewController observeValueForKeyPath:ofObject:change:context:]_block_invoke";
    v3 = 1024;
    v4 = 197;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d pegasus started", &v1, 0x12u);
  }
}

void sub_10000A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A51C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A534(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = v3[5];
    v5 = [v3 rpLocalizedStatusStringForPaused:0];
    [v4 setStatusString:v5];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: failed to acquire assertion", v6, 2u);
    }

    [*(*(*(a1 + 40) + 8) + 40) invalidateStatusBar];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000A6F0(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 134217984;
    v4 = [(NSError *)a2 code];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RPStatusBarAssertion: registered. If there was an error it was: %li", &v3, 0xCu);
  }
}

uint64_t sub_10000A810(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(*(a1 + 32) + 56) invalidate];
  *(*(a1 + 32) + 56) = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"updateDelegateRecordingTimer:" selector:0 userInfo:1 repeats:0.5];

  return _objc_release_x1();
}

void sub_10000A95C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && __RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100043868(v2);
  }
}

void sub_10000AF88(id a1)
{
  qword_100069890 = objc_alloc_init(RPRemoteAlertManager);

  _objc_release_x1();
}

uint64_t sub_10000B598()
{
  v0 = type metadata accessor for Logger();
  sub_100011C68(v0, qword_1000698A8);
  sub_10000E464(v0, qword_1000698A8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000B62C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000B688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_10000B6D4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_10000B740(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000B808(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689A0, &qword_100047AC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_100068998, &qword_100047AC0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000B940(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689A0, &qword_100047AC8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10000BAB0;
}

uint64_t sub_10000BB24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10000BB90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_10000BBDC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10000BC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_10000BCB4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000BD74(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689B8, &qword_100047B28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000BEAC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689B8, &qword_100047B28);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

id sub_10000C01C()
{
  v0 = objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver());

  return [v0 init];
}

id sub_10000C050()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t (*sub_10000C17C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000C248(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000C380(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

uint64_t (*sub_10000C5BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

uint64_t sub_10000C68C(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000C7C4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

double sub_10000C978(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10000CA9C(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_10000CB0C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10000CBB0;
}

uint64_t sub_10000CBDC(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000CD14(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689C8, &qword_100047B80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

double sub_10000CEFC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_10000CF80@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 392))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_10000CFEC(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(**a2 + 400))(v4);
}

uint64_t sub_10000D054(_OWORD *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_10000D0D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

void sub_10000D174(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_10000D1A4(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689D8, &qword_100047C68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000D2DC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689D8, &qword_100047C68);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

uint64_t sub_10000D47C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000D4F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000D598(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*sub_10000D608(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100011D54;
}

void sub_10000D6AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10000D738(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_10000B62C(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10000D7B0(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000689E8, &qword_100047CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000D8E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000B62C(&qword_1000689E8, &qword_100047CC0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100011D58;
}

void sub_10000DA58(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id sub_10000DBC0()
{
  v0 = objc_opt_self();

  return [v0 defaultSize];
}

double sub_10000DBF8()
{
  v1 = v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_maxDimensions;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_10000DC40(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_maxDimensions);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10000DCFC()
{
  v0 = swift_allocObject();
  sub_10000DD34();
  return v0;
}

uint64_t sub_10000DD34()
{
  v1 = v0;
  v2 = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v40 - v3;
  v4 = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v40 - v5;
  v41 = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v40 - v7;
  v9 = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView[0];
  v48[0] = 0;
  sub_10000B62C(&qword_100068990, &qword_100047A70);
  Published.init(initialValue:)();
  (*(v14 + 32))(v1 + v17, v16, v13);
  v18 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v48[0] = 0;
  sub_10000B62C(&qword_1000689A8, &qword_100047AD0);
  Published.init(initialValue:)();
  (*(v10 + 32))(v1 + v18, v12, v9);
  v19 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver;
  *(v1 + v19) = [objc_allocWithZone(type metadata accessor for CaptureFrameReceiverObserver()) init];
  v20 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width[0];
  v48[0] = 0x409E000000000000;
  Published.init(initialValue:)();
  v21 = *(v6 + 32);
  v22 = v41;
  v21(v1 + v20, v8, v41);
  v23 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height[0];
  v48[0] = 0x4090E00000000000;
  Published.init(initialValue:)();
  v21(v1 + v23, v8, v22);
  v24 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio[0];
  v48[0] = 0x3FFC71C71C71C71CLL;
  Published.init(initialValue:)();
  v21(v1 + v24, v8, v22);
  v25 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v48[0] = 0x3FF0000000000000;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = 0x3FF0000000000000;
  type metadata accessor for CGAffineTransform(0);
  v48[4] = 0;
  v48[5] = 0;
  v26 = v42;
  Published.init(initialValue:)();
  (*(v43 + 32))(v1 + v25, v26, v44);
  v27 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape[0];
  LOBYTE(v48[0]) = 1;
  v28 = v45;
  Published.init(initialValue:)();
  (*(v46 + 32))(v1 + v27, v28, v47);
  v29 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_maxDimensions);
  [objc_opt_self() defaultSize];
  *v29 = v30;
  v29[1] = v31;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000E464(v32, qword_1000698A8);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_100010E34(0xD000000000000074, 0x800000010004C540, v48);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_100010E34(0x292874696E69, 0xE600000000000000, v48);
    _os_log_impl(&_mh_execute_header, v33, v34, "%s%s", v35, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v48[0] = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v48[0] = 0;

  static Published.subscript.setter();
  v36 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = (v36 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  *v38 = sub_10000E4D4;
  v38[1] = v37;

  return v1;
}

uint64_t sub_10000E464(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000E49C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000E4D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*(*Strong + 152))();
    if (v2)
    {

      (*(*v1 + 520))();
    }

    else
    {
      if (qword_1000698A0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000E464(v8, qword_1000698A8);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_100010E34(0x292874696E69, 0xE600000000000000, &v13);
        _os_log_impl(&_mh_execute_header, v9, v10, "%s captureFrameReceiverDidChange no videoView, skipping start", v11, 0xCu);
        sub_1000114A8(v12);
      }
    }
  }

  else
  {
    if (qword_1000698A0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000E464(v3, qword_1000698A8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100010E34(0x292874696E69, 0xE600000000000000, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s captureFrameReceiverDidChange nil", v6, 0xCu);
      sub_1000114A8(v7);
    }
  }
}

void sub_10000E7AC()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004C5F0, aBlock);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = [objc_opt_self() availableFrameSenderEndpointsByPID];
  sub_1000119A0(0, &qword_1000689F8, NSNumber_ptr);
  sub_10000B62C(&qword_100068A00, &qword_100047CC8);
  sub_1000113DC();
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v40 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_11:
    if (!*(v8 + 16))
    {

      goto LABEL_38;
    }

    v15 = *(*(v8 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v16 = sub_100011444(v15);
    if ((v17 & 1) == 0)
    {

LABEL_38:
      v30 = v40;
LABEL_39:

      return;
    }

    v18 = *(*(v8 + 56) + 8 * v16);
    if (v18 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 &= v11 - 1;
    if (v19)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {

        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v20 = *(v18 + 32);
      }

      v40 = v20;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  if (v40)
  {
    v39 = v40;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v39;
      *v24 = v40;
      v25 = v39;
      _os_log_impl(&_mh_execute_header, v21, v22, "Creating frame receiver for endpoint=%@", v23, 0xCu);
      sub_100011940(v24, &qword_1000697C0, qword_100047CD0);
    }

    v26 = (*(*v1 + 200))();
    if (!v26)
    {
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = objc_allocWithZone(CMCaptureFrameReceiver);
      aBlock[4] = sub_100011488;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100010DBC;
      aBlock[3] = &unk_10005D470;
      v37 = _Block_copy(aBlock);

      v38 = [v36 initWithFrameSenderServerEndpoint:v39 frameReceiverHandler:v37];
      _Block_release(v37);

      (*(*v1 + 208))(v38);

      return;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Frame receiver already exists - returning", v29, 2u);
    }

    v30 = v39;
    goto LABEL_39;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "first endpoint not found", v33, 2u);
  }

  v34 = *(*v1 + 208);

  v34(0);
}

uint64_t sub_10000EE78(void *a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 && (a2 & 1) != 0)
    {
      v14 = result;
      sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
      v15 = a1;
      v23 = v6;
      v16 = v15;
      v22 = static OS_dispatch_queue.main.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v16;
      aBlock[4] = sub_100011A28;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F174;
      aBlock[3] = &unk_10005D688;
      v18 = _Block_copy(aBlock);
      v19 = v16;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100011A78();
      sub_10000B62C(&qword_100068D00, &unk_100047DD0);
      sub_100011AD0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v20 = v22;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);

      (*(v23 + 8))(v8, v5);
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10000F174(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000F1B8()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000013, 0x800000010004C610, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver);
  v8 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v7 + v8) == 1)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata removeObserver:v7 forKeyPath:v10];

    *(v7 + v8) = 0;
  }

  return (*(*v1 + 208))(0);
}

void sub_10000F3B4()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata removeObserver:v0 forKeyPath:v3];

    *(v0 + v1) = 0;
  }
}

void sub_10000F460()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000015, 0x800000010004C630, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = (*(*v1 + 152))();
  if (v7)
  {
  }

  else
  {
    (*(*v1 + 160))([objc_allocWithZone(RPCCUIVideoView) init]);
  }

  v8 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview_captureFrameReceiverObserver);
  v9 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v8 + v9) & 1) == 0)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata addObserver:v8 forKeyPath:v11 options:0 context:0];

    *(v8 + v9) = 1;
  }
}

void sub_10000F6AC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = String._bridgeToObjectiveC()();
    [ObjCClassFromMetadata addObserver:v0 forKeyPath:v3 options:0 context:0];

    *(v0 + v1) = 1;
  }
}

uint64_t sub_10000F768()
{
  v1 = v0;
  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000E464(v2, qword_1000698A8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004C650, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_1000114A8(v6);
  }

  v7 = (*(*v1 + 152))();
  [v7 flushVideoView];

  v8 = *(*v1 + 160);

  return v8(0);
}

void sub_10000F91C(opaqueCMSampleBuffer *a1)
{
  v2 = v1;
  v4 = (*(*v1 + 152))();
  if (!v4)
  {
    return;
  }

  v67 = v4;
  v5 = [v67 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 sampleBufferRenderer];
    v9 = [v8 status];

    if (v9 == 2)
    {
      v10 = [v7 sampleBufferRenderer];
      [v10 flush];
    }
  }

  v11 = CMSampleBufferGetFormatDescription(a1);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v11);
  v14 = Dimensions;
  v15 = (Dimensions >> 32);
  if (([v67 enqueueSampleBuffer:a1] & 1) == 0 && (*(*v2 + 248))() == v14 && (*(*v2 + 296))() == v15)
  {

LABEL_10:

    return;
  }

  if (qword_1000698A0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000E464(v16, qword_1000698A8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "updating the transform, width and height", v19, 2u);
  }

  v20 = (*(*v2 + 448))([v67 isLandscape]);
  v21 = (*(*v2 + 256))(v20, v14);
  (*(*v2 + 304))(v21, v15);
  v22 = [v67 layer];

  [v22 affineTransform];
  v65 = *&transform.c;
  v66 = *&transform.a;
  v70 = transform;
  v64 = *&transform.tx;

  *&transform.a = v66;
  *&transform.c = v65;
  *&transform.tx = v64;
  CGAffineTransformDecompose(&v68, &transform);
  rotation = v68.rotation;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = rotation;
    _os_log_impl(&_mh_execute_header, v24, v25, "transform rotation component %f", v26, 0xCu);
  }

  v27 = fabs(rotation);
  if (v27 >= 0.0001 && vabdd_f64(3.14159265, v27) >= 0.0001)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "NOT isZeroOr180", v39, 2u);
    }

    v40 = *(*v2 + 248);
    v41 = v40();
    v35.n128_u64[0] = 1.0;
    if (v41 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 296))(1.0);
    v35.n128_f64[0] = v40();
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "YES isZeroOr180", v30, 2u);
    }

    v31 = (*v2 + 296);
    v32 = *v31;
    v34 = (*v31)();
    v35.n128_u64[0] = 1.0;
    if (v34 <= 0.0)
    {
      goto LABEL_30;
    }

    v36 = (*(*v2 + 248))(1.0);
    v33 = v32();
  }

  v35.n128_f64[0] = v36 / v35.n128_f64[0];
LABEL_30:
  v42 = (*(*v2 + 352))(v33, v35);
  v43 = *(*v2 + 440);
  v44 = (v43)(v42);
  v45 = *(*v2 + 488);
  v46 = v45();
  if (v44)
  {
    v49 = v47;
    v50 = (v45)(v46);
    v51 = v50 / (*(*v2 + 344))();
  }

  else
  {
    v49 = v48 * (*(*v2 + 344))(v46);
    v45();
  }

  [v67 updateIntrinsicContentSize:{v49, v51, v64, v65, v66}];
  (*(*v2 + 400))(&v70);
  v52 = v67;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *&v68.scale.width = swift_slowAlloc();
    *v55 = 134219266;
    *(v55 + 4) = (*(*v2 + 344))();
    *(v55 + 12) = 2048;
    *(v55 + 14) = (*(*v2 + 248))();
    *(v55 + 22) = 2048;
    *(v55 + 24) = (*(*v2 + 296))();
    *(v55 + 32) = 1024;
    *(v55 + 34) = v43() & 1;

    *(v55 + 38) = 2080;
    transform = v70;
    type metadata accessor for CGAffineTransform(0);
    v56 = String.init<A>(describing:)();
    v58 = sub_100010E34(v56, v57, &v68);

    *(v55 + 40) = v58;
    *(v55 + 48) = 2080;
    [v52 intrinsicContentSize];
    transform.a = v59;
    transform.b = v60;
    type metadata accessor for CGSize(0);
    v61 = String.init<A>(describing:)();
    v63 = sub_100010E34(v61, v62, &v68);

    *(v55 + 50) = v63;
    _os_log_impl(&_mh_execute_header, v53, v54, "set aspect ratio %f (w:%f, h:%f), isLandscape:%{BOOL}d, transform %s, videoView intrinsicContentSize %s", v55, 0x3Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1000103A8()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView[0];
  v2 = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v4 = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width[0];
  v6 = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height[0], v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio[0], v6);
  v8 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape[0];
  v11 = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_1000105A0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__videoView[0];
  v2 = sub_10000B62C(&qword_100068998, &qword_100047AC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__frameReceiver;
  v4 = sub_10000B62C(&qword_1000689B0, &qword_100047B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__width[0];
  v6 = sub_10000B62C(&qword_1000689C0, &qword_100047B78);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__height[0], v6);
  v7(v0 + OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__aspectRatio[0], v6);
  v8 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__currentAffineTransform;
  v9 = sub_10000B62C(&qword_1000689D0, &qword_100047C60);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14ReplayKitAngel19VideoEffectsPreview__isLandscape[0];
  v11 = sub_10000B62C(&qword_1000689E0, &qword_100047CB8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v12, v13);
}

uint64_t sub_1000107D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VideoEffectsPreview(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100010834()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10001088C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100010968()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath);

  return v1;
}

uint64_t sub_1000109AC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000109F0(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_100010AA0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange];
  *v2 = nullsub_1;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_keyPath];
  *v3 = 0xD000000000000022;
  v3[1] = 0x800000010004C670;
  v0[OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing] = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, "init");
  sub_1000119A0(0, &qword_100068A18, CMCaptureFrameReceiver_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v4;

  v7 = String._bridgeToObjectiveC()();

  [ObjCClassFromMetadata addObserver:v6 forKeyPath:v7 options:0 context:0];

  v8 = OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_observing;
  swift_beginAccess();
  v6[v8] = 1;

  return v6;
}

uint64_t sub_100010C0C()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel28CaptureFrameReceiverObserver_captureFrameReceiverDidChange);
  swift_beginAccess();
  v2 = *v1;

  v2(v3);
}

id sub_100010D30()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100010DBC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

unint64_t sub_100010E34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100010F00(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100011C08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000114A8(v11);
  return v7;
}

unint64_t sub_100010F00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001100C(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10001100C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100011058(a1, a2);
  sub_100011188(&off_10005D420);
  return v3;
}

char *sub_100011058(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100011274(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100011274(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100011188(uint64_t result)
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

  result = sub_1000112E8(result, v11, 1, v3);
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

void *sub_100011274(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000B62C(&unk_100069150, &unk_100048520);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000112E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000B62C(&unk_100069150, &unk_100048520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_1000113DC()
{
  result = qword_100068A08;
  if (!qword_100068A08)
  {
    sub_1000119A0(255, &qword_1000689F8, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068A08);
  }

  return result;
}

unint64_t sub_100011444(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100011B34(a1, v4);
}

uint64_t sub_100011490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000114A8(void *a1)
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

uint64_t type metadata accessor for VideoEffectsPreview(uint64_t a1)
{
  result = qword_1000699F0;
  if (!qword_1000699F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001157C(uint64_t a1)
{
  sub_1000117D0(319, &qword_100068A50, &qword_100068990, &qword_100047A70);
  if (v1 <= 0x3F)
  {
    sub_1000117D0(319, &qword_100068A58, &qword_1000689A8, &qword_100047AD0);
    if (v2 <= 0x3F)
    {
      sub_100011CF4(319, &qword_100068A60, &type metadata for CGFloat, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100011824(319);
        if (v4 <= 0x3F)
        {
          sub_100011CF4(319, &unk_100068A70, &type metadata for Bool, &type metadata accessor for Published);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100011788(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1000117D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100011788(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100011824(uint64_t a1)
{
  if (!qword_100068A68)
  {
    type metadata accessor for CGAffineTransform(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100068A68);
    }
  }
}

__n128 sub_10001187C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001188C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000118AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_1000118D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000118E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011908(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100011940(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000B62C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000119A0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000119E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100011A78()
{
  result = qword_100068E90;
  if (!qword_100068E90)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E90);
  }

  return result;
}

unint64_t sub_100011AD0()
{
  result = qword_100068EA0;
  if (!qword_100068EA0)
  {
    sub_100011788(&qword_100068D00, &unk_100047DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EA0);
  }

  return result;
}

unint64_t sub_100011B34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000119A0(0, &qword_1000689F8, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100011C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100011C68(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100011CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_100011D6C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100011DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100011E70()
{
  v0 = *sub_10003720C();

  return v0;
}

uint64_t sub_100011EA4()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100011EFC(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (v6 == a1 && v7 == a2)
  {
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v11 = [v2 systemApertureElementContext];
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    aBlock[4] = sub_1000138FC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F174;
    aBlock[3] = &unk_10005D878;
    v13 = _Block_copy(aBlock);
    v14 = v2;

    [v11 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_100012068(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_100012108;
}

void sub_100012108(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_100011EFC(v3, v4);
  }

  else
  {
    sub_100011EFC(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t sub_100012184(char a1)
{
  if (!a1)
  {
    return 0x676E696461656CLL;
  }

  if (a1 == 1)
  {
    return 0x676E696C69617274;
  }

  return 0x6C616D696E696DLL;
}

uint64_t sub_1000121DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v4 = 0x6C616D696E696DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696C69617274;
  if (*a2 != 1)
  {
    v8 = 0x6C616D696E696DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1000122E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E69766173;
  if (a1 != 6)
  {
    v5 = 0x506F546465766173;
    v4 = 0xED0000736F746F68;
  }

  v6 = 0x6E6964726F636572;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x646573756170;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x776F64746E756F63;
  v9 = 0xEA0000000000326ELL;
  v10 = 0x776F64746E756F63;
  if (a1 != 2)
  {
    v8 = 0x776F64746E756F63;
    v9 = 0xEA0000000000316ELL;
  }

  if (a1)
  {
    v3 = 0xEA0000000000336ELL;
  }

  else
  {
    v10 = 1701602409;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x676E69766173)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xED0000736F746F68;
        if (v11 != 0x506F546465766173)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000067;
      if (v11 != 0x6E6964726F636572)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x646573756170)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA0000000000326ELL;
      if (v11 != 0x776F64746E756F63)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA0000000000316ELL;
      if (v11 != 0x776F64746E756F63)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA0000000000336ELL;
    if (v11 != 0x776F64746E756F63)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1701602409)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

Swift::Int sub_100012560()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100012604(uint64_t a1)
{
  String.hash(into:)();
}

uint64_t sub_100012694(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_1000127C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100012860(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000129A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029800(*a1);
  *a2 = result;
  return result;
}

void sub_1000129D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v5 = 0x6C616D696E696DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

_BYTE *sub_100012A30(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return sub_100012A64(v2);
}

_BYTE *sub_100012A64(int a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &off_100068000;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package] = 0;
  v8 = &v1[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState];
  v9 = sub_10003720C();
  v10 = *(v9 + 1);
  *v8 = *v9;
  v8[1] = v10;
  v1[OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role] = a1;
  v11 = type metadata accessor for RPSessionAccessoryView();
  v32.receiver = v1;
  v32.super_class = v11;

  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = sub_1000301D0();
  (*(v4 + 16))(v6, v13, v3);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v30[1] = a1;
    v16 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100010E34(0x6C6F722874696E69, 0xEB00000000293A65, v31);
    *(v16 + 12) = 2080;
    v17 = 0xE800000000000000;
    v18 = 0x676E696C69617274;
    if (*(v12 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role) != 1)
    {
      v18 = 0x6C616D696E696DLL;
      v17 = 0xE700000000000000;
    }

    if (*(v12 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x676E696461656CLL;
    }

    if (*(v12 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    v21 = sub_100010E34(v19, v20, v31);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s role=%s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v3);
    v7 = &off_100068000;
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v24 = objc_allocWithZone(BSUICAPackageView);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithPackageName:v25 inBundle:v23];

  v27 = v7[419];
  swift_beginAccess();
  v28 = *&v27[v12];
  *&v27[v12] = v26;

  return v12;
}

id sub_100012E4C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_100012E90(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_package) = 0;
  v2 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_viewState);
  v3 = sub_10003720C();
  v4 = *(v3 + 1);
  *v2 = *v3;
  v2[1] = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100012F78()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000301D0();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004C950, &v34);
    *(v9 + 12) = 2080;
    v10 = 0xE800000000000000;
    v11 = 0x676E696C69617274;
    if (*(v6 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role) != 1)
    {
      v11 = 0x6C616D696E696DLL;
      v10 = 0xE700000000000000;
    }

    if (*(v6 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x676E696461656CLL;
    }

    if (*(v6 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role))
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_100010E34(v12, v13, &v34);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v16 = (*((swift_isaMask & *v6) + 0x80))(v15);
    v18 = sub_100010E34(v16, v17, &v34);

    *(v9 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s role=%s viewState=%s", v9, 0x20u);
    swift_arrayDestroy();
  }

  (*(v2 + 8))(v4, v1);
  v19 = type metadata accessor for RPSessionAccessoryView();
  v35.receiver = v6;
  v35.super_class = v19;
  v20 = objc_msgSendSuper2(&v35, "layoutSubviews");
  v21 = *((swift_isaMask & *v6) + 0x68);
  v22 = (v21)(v20);
  if (v22)
  {
    v23 = v22;
    (*((swift_isaMask & *v6) + 0x80))();
    v24 = String._bridgeToObjectiveC()();

    [v23 setState:v24];
  }

  v25 = v21();
  if (v25)
  {
    v26 = v25;
    [v25 sizeToFit];
  }

  v27 = v21();
  if (v27)
  {
    v28 = v27;
    [v6 bounds];
    MidX = CGRectGetMidX(v36);
    [v6 bounds];
    [v28 setCenter:{MidX, CGRectGetMidY(v37)}];
  }

  v30 = v21();
  if (v30)
  {
    v31 = v30;
    [v30 setAlpha:*sub_10003674C()];
  }

  v32 = v21();
  [v6 insertSubview:v32 above:v6];
}

double sub_100013470()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role);
  if (*(v0 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role) && v1 != 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v4 = *((swift_isaMask & *v0) + 0x80);
      v5 = v4(v3);
      v7 = v6;
      v8 = sub_10003729C();
      if (v5 == *v8 && v7 == *(v8 + 1))
      {
        goto LABEL_17;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_18;
      }

      v12 = v4(v11);
      v14 = v13;
      v15 = sub_1000372C0();
      if (v12 == *v15 && v14 == *(v15 + 1))
      {
LABEL_17:
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
LABEL_20:
          if (v1)
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v20 & 1) == 0)
            {
LABEL_22:
              v22 = v4(v21);
              v24 = v23;
              v25 = sub_10003727C();
              if (v22 == *v25 && v24 == *(v25 + 1))
              {
              }

              else
              {
                v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v27 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              if (v1 == 1)
              {
              }

              else
              {
                v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v42 & 1) == 0)
                {
LABEL_46:
                  v18 = *sub_100036614();
                  goto LABEL_47;
                }
              }

              v28 = *sub_100036614();
              v29 = sub_100036648();
              goto LABEL_30;
            }
          }

          else
          {
          }

          v30 = v4(v21);
          v32 = v31;
          v33 = sub_100037264();
          if (v30 != *v33 || v32 != v33[1])
          {
            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v35)
            {
              goto LABEL_40;
            }

            v37 = v4(v36);
            v39 = v38;
            v40 = sub_10003724C();
            if (v37 != *v40 || v39 != v40[1])
            {
              v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v44)
              {
                goto LABEL_40;
              }

              v46 = v4(v45);
              v48 = v47;
              v49 = sub_100037234();
              if (v46 != *v49 || v48 != v49[1])
              {
                v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v50)
                {
                  goto LABEL_40;
                }

                v52 = v4(v51);
                v54 = v53;
                v55 = sub_10003727C();
                if (v52 != *v55 || v54 != *(v55 + 1))
                {
                  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v56 & 1) == 0)
                  {
                    goto LABEL_22;
                  }

LABEL_40:
                  v41 = *sub_100036614();
                  v18 = v41 + *sub_100036634();
                  goto LABEL_47;
                }
              }
            }
          }

          goto LABEL_40;
        }
      }

LABEL_18:
      if (v1)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v28 = *sub_100036614();
      v29 = sub_100036634();
LABEL_30:
      v18 = v28 - *v29;
LABEL_47:
      sub_100036628();
      return v18;
    }
  }

  v18 = *sub_100036670();
  sub_10003667C();
  return v18;
}

uint64_t sub_1000138C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001390C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100013924(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t sub_100013A54(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x676E69766173;
  if (a1 != 6)
  {
    v2 = 0x506F546465766173;
  }

  v3 = 0x6E6964726F636572;
  if (a1 != 4)
  {
    v3 = 0x646573756170;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x776F64746E756F63;
  }

  if (a1 > 1u)
  {
    v1 = 0x776F64746E756F63;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100013B74@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029870(*a1);
  *a2 = result;
  return result;
}

void sub_100013BA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xE600000000000000;
  v6 = 0x676E69766173;
  if (v2 != 6)
  {
    v6 = 0x506F546465766173;
    v5 = 0xED0000736F746F68;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6964726F636572;
  if (v2 != 4)
  {
    v8 = 0x646573756170;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000326ELL;
  if (v2 != 2)
  {
    v9 = 0xEA0000000000316ELL;
  }

  if (*v1)
  {
    v4 = 0x776F64746E756F63;
    v3 = 0xEA0000000000336ELL;
  }

  if (*v1 > 1u)
  {
    v4 = 0x776F64746E756F63;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_100013D04()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100013D9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100013E9C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100013F34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014034()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000140CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000141CC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100014264(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014364()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000143FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_100014510()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000145A8(double a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10001472C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000147C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014874()
{
  v0 = SBUISystemApertureElementIdentifierScreenRecording;
  v1 = SBUISystemApertureElementIdentifierScreenRecording;
  return v0;
}

void *sub_1000148F0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100014948(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100014A10()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  v2 = v1;
  return v1;
}

void *sub_100014A48()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
  v2 = v1;
  return v1;
}

void *sub_100014A88()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
  v2 = v1;
  return v1;
}

void *sub_100014AC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
  v2 = v1;
  return v1;
}

_BYTE *sub_100014AF8(uint64_t a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(type metadata accessor for RPSessionAccessoryView());
  return sub_100012A64(v1);
}

void *sub_100014B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
  v2 = v1;
  return v1;
}

id sub_100014BA8()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id sub_100014BE0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100014C34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100014CFC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100014D48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100014E00()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100014E4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100014F04()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100014F48(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014FF8()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10001503C(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*sub_100015114(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000150EC();
  return sub_10001515C;
}

void sub_10001515C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView) = v2;
}

void (*sub_10001519C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100015174();
  return sub_1000151E4;
}

void sub_1000151E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton) = v2;
}

void (*sub_100015224(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000151FC();
  return sub_10001526C;
}

void sub_10001526C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton) = v2;
}

void (*sub_1000152AC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100015284();
  return sub_1000152F4;
}

void sub_1000152F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton) = v2;
}

id sub_100015410(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void (*sub_100015490(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000153FC();
  return sub_1000154D8;
}

void sub_1000154D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton) = v2;
}

id sub_1000154F0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x3B8))();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant:*sub_1000366CC()];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void (*sub_1000155E4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000154F0();
  return sub_10001562C;
}

void sub_10001562C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = v2;
}

id sub_100015644()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id sub_10001567C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1000156D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1000159F8(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100015A48(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_100015AFC()
{
  v0 = [objc_opt_self() grayColor];

  return v0;
}

void *sub_100015B88()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100015BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_100015C3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100015D8C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_100015E68(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_100015F28@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000160F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_10002ADB4(v2 + v4, a2, &qword_100068DF0, qword_100047E90);
}

uint64_t sub_1000162A4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1000298BC(a1, v2 + v4);
  return swift_endAccess();
}

void sub_100016360(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 != v2)
  {
    v12 = sub_1000301D0();
    v13 = *(v4 + 16);
    if (v11)
    {
      v13(v9, v12, v3);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_100010E34(0x776F64746E756F63, 0xEF6465737561506ELL, &v24);
        _os_log_impl(&_mh_execute_header, v14, v15, "%s RPControlCenter pause", v16, 0xCu);
        sub_1000114A8(v17);
      }

      (*(v4 + 8))(v9, v3);
      v18 = [objc_opt_self() sharedInstance];
      sub_1000367F8();
    }

    else
    {
      v13(v7, v12, v3);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100010E34(0x776F64746E756F63, 0xEF6465737561506ELL, &v24);
        _os_log_impl(&_mh_execute_header, v19, v20, "%s RPControlCenter resume", v21, 0xCu);
        sub_1000114A8(v22);
      }

      (*(v4 + 8))(v7, v3);
      v18 = [objc_opt_self() sharedInstance];
      sub_100036820();
    }

    v23 = String._bridgeToObjectiveC()();

    [v18 countdownInterruptWithStatus:v23];
  }
}

uint64_t sub_100016700()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100016744(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100016360(v4);
}

void (*sub_10001679C(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100016830;
}

void sub_100016830(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_100016360(v5);

  free(v1);
}

void *sub_100016878()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000168C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10001697C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000169C0(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100016AA4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress] = 0x100000;
  v4 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *&v2[v4] = *sub_1000366FC();
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionID];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors] = 666;
  v6 = SBUISystemApertureElementIdentifierScreenRecording;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier] = SBUISystemApertureElementIdentifierScreenRecording;
  v7 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView;
  v8 = type metadata accessor for RPSessionAccessoryView();
  v9 = objc_allocWithZone(v8);
  v10 = v6;
  *&v2[v7] = sub_100012A64(0);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView;
  v12 = objc_allocWithZone(v8);
  *&v2[v11] = sub_100012A64(0);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView;
  v14 = objc_allocWithZone(v8);
  *&v2[v13] = sub_100012A64(1);
  v15 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView;
  v16 = objc_allocWithZone(v8);
  *&v2[v15] = sub_100012A64(1);
  v17 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView;
  v18 = objc_allocWithZone(v8);
  *&v2[v17] = sub_100012A64(2);
  v19 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview;
  type metadata accessor for VideoEffectsPreview(0);
  *&v2[v19] = sub_10000DCFC();
  v20 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  *&v2[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel;
  *&v2[v21] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView] = 0;
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState] = 1;
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton] = 0;
  v22 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosURL;
  v23 = type metadata accessor for URL();
  v24 = *(*(v23 - 8) + 56);
  v24(&v2[v22], 1, 1, v23);
  v25 = &v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosIdentifier];
  *v25 = 0;
  v25[1] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint] = 0;
  v26 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  *&v2[v26] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreviewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_accessoryViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewElementLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewCameraPreviewLayoutConstraints] = &_swiftEmptyArrayStorage;
  v27 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  *&v2[v27] = [objc_opt_self() grayColor];
  v28 = &v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_associatedAppBundleIdentifier];
  *v28 = 0;
  v28[1] = 0;
  v24(&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_launchURL], 1, 1, v23);
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer] = 0;
  v2[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView] = 0;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for RPSystemApertureElementViewController(0);
  v29 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
  sub_10001E534(v3);

  return v29;
}

uint64_t sub_100016EBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = CFPreferencesCopyAppValue(v8, v9);

    if (v10)
    {
      swift_beginAccess();
      *(a2 + 16) = 1;
    }

    v11 = sub_1000301D0();
    (*(v4 + 16))(v6, v11, v3);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_100010E34(0xD000000000000034, 0x800000010004D5A0, &v17);
      *(v14 + 12) = 1024;
      swift_beginAccess();
      *(v14 + 14) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v12, v13, "%s hideStatusBar=%{BOOL}d", v14, 0x12u);
      sub_1000114A8(v15);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100017164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_100016EBC(v3, a3);
}

void sub_100017204()
{
  v1 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v1 - 8);
  v389 = (&v362 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v362 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
    if (v10)
    {
      v11 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
      if (v11)
      {
        v12 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
        if (v12)
        {
          v13 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
          if (v13)
          {
            v380 = (&v362 - v8);
            v388 = "PSessionAccessoryView";
            swift_getObjectType();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v14 = objc_opt_self();
            v381 = v13;
            v386 = v12;
            v382 = v11;
            v385 = v10;
            v383 = v9;
            v15 = ObjCClassFromMetadata;
            v16 = [v14 bundleForClass:?];
            v17 = objc_allocWithZone(BSUICAPackageView);
            v18 = String._bridgeToObjectiveC()();
            v19 = [v17 initWithPackageName:v18 inBundle:v16];

            if (v19)
            {
              v388 = v19;
              v20 = [v14 bundleForClass:v15];
              v21 = objc_allocWithZone(BSUICAPackageView);
              v22 = String._bridgeToObjectiveC()();
              v23 = [v21 initWithPackageName:v22 inBundle:v20];

              if (v23)
              {
                v378 = v14;
                v376 = v23;
                v24 = sub_10002B924();
                v25 = *((swift_isaMask & **v24) + 0xA0);
                v26 = *v24;
                v27 = v0;
                v28 = v25();
                v30 = v29;

                (*((swift_isaMask & *v27) + 0x240))(v28, v30);
                v31 = sub_1000301D0();
                v32 = v380;
                (*(v4 + 16))(v380, v31, v3);
                v387 = v27;
                v33 = v27;
                v34 = Logger.logObject.getter();
                v35 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  v37 = swift_slowAlloc();
                  v379 = v37;
                  ObjCClassFromMetadata = swift_slowAlloc();
                  v391[0] = ObjCClassFromMetadata;
                  *v36 = 136315650;
                  v38 = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, v391);
                  v39 = v387;
                  *(v36 + 4) = v38;
                  *(v36 + 12) = 2112;
                  *(v36 + 14) = v33;
                  *v37 = v39;
                  *(v36 + 22) = 2080;
                  v40 = *((swift_isaMask & *v33) + 0x238);
                  v41 = v33;
                  v42 = v40();
                  if (v43)
                  {
                    v44 = v43;
                  }

                  else
                  {
                    v42 = 1819047246;
                    v44 = 0xE400000000000000;
                  }

                  v45 = sub_100010E34(v42, v44, v391);

                  *(v36 + 24) = v45;
                  _os_log_impl(&_mh_execute_header, v34, v35, "%s self=%@ sessionID=%s", v36, 0x20u);
                  sub_100011940(v379, &qword_1000697C0, qword_100047CD0);

                  swift_arrayDestroy();
                }

                (*(v4 + 8))(v32, v3);
                v46 = type metadata accessor for RPSystemApertureElementViewController(0);
                v390.receiver = v33;
                v390.super_class = v46;
                v377 = v46;
                objc_msgSendSuper2(&v390, "viewDidLoad");
                SBUISystemApertureControlEdgeSpacing();
                v48 = v47;
                v49 = [v33 view];
                v50 = v386;
                v51 = v381;
                v52 = v382;
                if (v49)
                {
                  v53 = v49;
                  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];

                  v54 = (swift_isaMask & *v33) + 952;
                  v55 = *((swift_isaMask & *v33) + 0x3B8);
                  v56 = v55();
                  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];

                  [v383 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v385 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
                  v57 = [v33 view];
                  if (v57)
                  {
                    v58 = v57;
                    v59 = v54;
                    v380 = v55;
                    v60 = v55();
                    [v58 addSubview:v60];

                    v61 = [v33 view];
                    if (v61)
                    {
                      v62 = v61;
                      [v61 addSubview:v383];

                      v63 = [v33 view];
                      v64 = v378;
                      if (v63)
                      {
                        v65 = v63;
                        [v63 addSubview:v385];

                        v66 = [v33 view];
                        v67 = v386;
                        if (v66)
                        {
                          v68 = v66;
                          [v66 addSubview:v382];

                          v69 = [v33 view];
                          v70 = v381;
                          if (v69)
                          {
                            v71 = v69;
                            v72 = v59;
                            v73 = v64;
                            [v69 addSubview:v67];

                            v74 = [v33 view];
                            v75 = v380;
                            if (v74)
                            {
                              v76 = v74;
                              [v74 addSubview:v70];

                              v77 = v75();
                              v78 = [v77 centerXAnchor];

                              v79 = [v33 view];
                              if (v79)
                              {
                                v80 = v79;
                                v81 = [v79 centerXAnchor];

                                v82 = [v78 constraintEqualToAnchor:v81];
                                [v82 setActive:1];

                                ObjCClassFromMetadata = v72;
                                v83 = v75();
                                v84 = [v83 topAnchor];

                                v85 = [v33 view];
                                if (v85)
                                {
                                  v86 = v85;
                                  v87 = [v85 topAnchor];

                                  v88 = [v84 constraintEqualToAnchor:v87];
                                  [v88 setActive:1];

                                  v89 = ((swift_isaMask & *v33) + 904);
                                  v90 = *((swift_isaMask & *v33) + 0x388);
                                  v91 = v90();
                                  [v91 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v92 = v90();
                                  v93 = [v73 bundleForClass:swift_getObjCClassFromMetadata()];
                                  v94 = String._bridgeToObjectiveC()();
                                  v95 = String._bridgeToObjectiveC()();
                                  v96 = [v93 localizedStringForKey:v94 value:0 table:v95];

                                  if (!v96)
                                  {
                                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                                    v96 = String._bridgeToObjectiveC()();
                                  }

                                  [v92 setAccessibilityLabel:v96];

                                  v97 = v90();
                                  [v97 addTarget:v33 action:"stopButtonTapped" forControlEvents:64];

                                  v98 = v90();
                                  v99 = [v98 layer];

                                  [v99 setHitTestsAsOpaque:1];
                                  v100 = v380;
                                  v101 = v380();
                                  v102 = v90();
                                  [v101 addSubview:v102];

                                  v103 = v388;
                                  v104 = v388;
                                  [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
                                  [v104 setUserInteractionEnabled:0];

                                  v379 = v90;
                                  v105 = *((swift_isaMask & *v33) + 0x2A0);
                                  v106 = v104;
                                  v107 = v105(v103);
                                  v108 = (v90)(v107);
                                  v365 = v106;
                                  [v108 addSubview:v106];

                                  v109 = v376;
                                  v110 = v376;
                                  [v110 setTranslatesAutoresizingMaskIntoConstraints:0];
                                  [v110 setAlpha:*sub_10003674C()];
                                  [v110 setUserInteractionEnabled:0];
                                  v111 = *((swift_isaMask & *v33) + 0x2B8);
                                  v112 = v110;
                                  v377 = v112;
                                  v113 = v111(v109);
                                  v114 = (v100)(v113);
                                  [v114 addSubview:v112];

                                  v115 = (swift_isaMask & *v33) + 640;
                                  v116 = *((swift_isaMask & *v33) + 0x280);
                                  v117 = v116();
                                  [v117 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v118 = v116();
                                  sub_100036D38();

                                  v119 = String._bridgeToObjectiveC()();

                                  [v118 setText:v119];

                                  v120 = v116();
                                  v121 = objc_opt_self();
                                  v122 = [v121 systemFontOfSize:*sub_100036E5C() weight:UIFontWeightMedium];
                                  [v120 setFont:v122];

                                  v123 = v116();
                                  [v123 setTextColor:*sub_100036DB0()];

                                  v124 = v116();
                                  [v124 setHidden:1];

                                  v125 = v116();
                                  v388 = v89;
                                  [v125 sizeToFit];

                                  v126 = v116();
                                  v371 = v116;
                                  v372 = v115;
                                  v127 = v126;
                                  v128 = [v126 layer];

                                  [v128 setAllowsHitTesting:0];
                                  v129 = v380;
                                  v130 = v380();
                                  v131 = v116();
                                  [v130 addSubview:v131];

                                  v132 = *(v33 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
                                  [v132 setTranslatesAutoresizingMaskIntoConstraints:0];
                                  v370 = objc_opt_self();
                                  v133 = [v370 whiteColor];
                                  [v132 setTextColor:v133];

                                  sub_100036A08();

                                  v134 = String._bridgeToObjectiveC()();

                                  [v132 setText:v134];

                                  v135 = [v121 systemFontOfSize:*sub_100036A98() weight:UIFontWeightMedium];
                                  [v132 setFont:v135];

                                  [v132 sizeToFit];
                                  [v132 setHidden:1];
                                  v374 = v132;
                                  v136 = [v132 layer];
                                  [v136 setAllowsHitTesting:0];

                                  v137 = v129();
                                  [v137 addSubview:v132];

                                  v138 = (swift_isaMask & *v33) + 760;
                                  v139 = *((swift_isaMask & *v33) + 0x2F8);
                                  v140 = v139();
                                  v141 = v139;
                                  v142 = v138;
                                  v143 = v140;
                                  [v140 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v144 = v141();
                                  [v144 setAxis:0];

                                  v145 = v141();
                                  SBUISystemApertureInterItemSpacing();
                                  [v145 setSpacing:?];

                                  v146 = v141();
                                  [v146 setAlignment:3];

                                  v147 = v141();
                                  [v147 setHidden:1];

                                  v148 = v129();
                                  v149 = v141();
                                  v150 = v141;
                                  v375 = v141;
                                  v378 = v142;
                                  v151 = v149;
                                  [v148 addSubview:v149];

                                  v152 = objc_opt_self();
                                  v153 = [v152 sbui_systemApertureTextButtonConfiguration];
                                  sub_1000373DC();

                                  v154 = String._bridgeToObjectiveC()();

                                  [v153 setTitle:v154];

                                  v367 = sub_1000119A0(0, &qword_100068DF8, SBUISystemApertureButton_ptr);
                                  v364 = v153;
                                  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
                                  v366 = sub_1000119A0(0, &unk_100068E00, UIAction_ptr);
                                  *(swift_allocObject() + 16) = v33;
                                  v155 = v33;
                                  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                                  v156 = UIButton.init(configuration:primaryAction:)();
                                  v157 = (*((swift_isaMask & *v155) + 0x318))(v156);
                                  v158 = (swift_isaMask & *v155) + 784;
                                  v159 = *((swift_isaMask & *v155) + 0x310);
                                  v160 = (v159)(v157);
                                  [v160 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v161 = v159();
                                  LODWORD(v162) = 1148846080;
                                  [v161 setContentHuggingPriority:0 forAxis:v162];

                                  v163 = v159();
                                  LODWORD(v164) = 1148846080;
                                  [v163 setContentCompressionResistancePriority:0 forAxis:v164];

                                  v165 = v159();
                                  v376 = v159;
                                  v373 = v158;
                                  v166 = v165;
                                  [v165 setEnabled:0];

                                  v167 = v150();
                                  v168 = v159();
                                  [v167 addArrangedSubview:v168];

                                  v169 = [v152 sbui_systemApertureTextButtonConfiguration];
                                  sub_1000374EC();

                                  v170 = String._bridgeToObjectiveC()();

                                  [v169 setTitle:v170];

                                  v171 = v370;
                                  v172 = [v370 redColor];
                                  [v169 setBaseBackgroundColor:v172];

                                  v173 = [v171 redColor];
                                  [v169 setBaseForegroundColor:v173];

                                  v363 = v169;
                                  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
                                  *(swift_allocObject() + 16) = v155;
                                  v174 = v155;
                                  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                                  v175 = UIButton.init(configuration:primaryAction:)();
                                  v176 = (*((swift_isaMask & *v174) + 0x330))(v175);
                                  v177 = (swift_isaMask & *v174) + 808;
                                  v178 = *((swift_isaMask & *v174) + 0x328);
                                  v179 = (v178)(v176);
                                  [v179 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v180 = v178();
                                  LODWORD(v181) = 1148846080;
                                  [v180 setContentHuggingPriority:0 forAxis:v181];

                                  v182 = v178();
                                  LODWORD(v183) = 1148846080;
                                  [v182 setContentCompressionResistancePriority:0 forAxis:v183];

                                  v184 = v178();
                                  [v184 setEnabled:0];

                                  v185 = v178();
                                  v368 = v178;
                                  v369 = v177;
                                  v186 = v185;
                                  [v185 setRole:3];

                                  v187 = v375();
                                  v188 = v178();
                                  [v187 addArrangedSubview:v188];

                                  v189 = [v152 sbui_systemApertureTextButtonConfiguration];
                                  sub_1000375FC();

                                  v190 = String._bridgeToObjectiveC()();

                                  [v189 setTitle:v190];

                                  v362 = v189;
                                  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
                                  *(swift_allocObject() + 16) = v174;
                                  v191 = v174;
                                  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                                  v192 = UIButton.init(configuration:primaryAction:)();
                                  v193 = (*((swift_isaMask & *v191) + 0x348))(v192);
                                  v194 = *((swift_isaMask & *v191) + 0x340);
                                  v195 = ((swift_isaMask & *v191) + 832);
                                  v196 = (v194)(v193);
                                  [v196 setTranslatesAutoresizingMaskIntoConstraints:0];

                                  v197 = v194();
                                  [v197 setEnabled:0];

                                  v370 = v195;
                                  v198 = v194();
                                  v389 = v194;
                                  v199 = v198;
                                  [v198 setHidden:1];

                                  v200 = v380;
                                  v201 = v380();
                                  v202 = v194();
                                  [v201 addSubview:v202];

                                  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
                                  v203 = swift_allocObject();
                                  *(v203 + 16) = xmmword_100047E20;
                                  v204 = v203;
                                  v205 = v379;
                                  v206 = v379();
                                  v207 = [v206 topAnchor];

                                  v208 = v200();
                                  v209 = [v208 topAnchor];

                                  v210 = [v207 constraintEqualToAnchor:v209 constant:*sub_100036D10()];
                                  v204[4] = v210;
                                  v211 = v205();
                                  v212 = [v211 widthAnchor];

                                  v213 = [v212 constraintEqualToConstant:*sub_100036CEC()];
                                  v204[5] = v213;
                                  v214 = v205();
                                  v215 = [v214 heightAnchor];

                                  v216 = [v215 constraintEqualToConstant:*sub_100036D04()];
                                  v204[6] = v216;
                                  v217 = v205();
                                  v218 = [v217 trailingAnchor];

                                  v219 = v200;
                                  v220 = v200();
                                  v221 = [v220 trailingAnchor];

                                  v222 = [v218 constraintEqualToAnchor:v221 constant:-*sub_100036D24()];
                                  v204[7] = v222;
                                  v223 = v377;
                                  v224 = [(objc_class *)v377 topAnchor];
                                  v225 = v219();
                                  v226 = [v225 topAnchor];

                                  v227 = [v224 constraintEqualToAnchor:v226 constant:*sub_100036864()];
                                  v204[8] = v227;
                                  v228 = [(objc_class *)v223 widthAnchor];
                                  v229 = [v228 constraintEqualToConstant:*sub_100036E68()];

                                  v204[9] = v229;
                                  v230 = [(objc_class *)v223 heightAnchor];
                                  v231 = [v230 constraintEqualToConstant:*sub_100036E74()];

                                  v204[10] = v231;
                                  v232 = [(objc_class *)v223 leadingAnchor];
                                  v233 = v219();
                                  v234 = [v233 leadingAnchor];

                                  v367 = sub_100036848();
                                  v235 = [v232 constraintEqualToAnchor:v234 constant:*v367];

                                  v204[11] = v235;
                                  v236 = v385;
                                  v237 = [v385 bottomAnchor];
                                  v238 = v374;
                                  v239 = [v374 bottomAnchor];
                                  v240 = [v237 constraintEqualToAnchor:v239 constant:-25.0];

                                  v204[12] = v240;
                                  v241 = [v236 leadingAnchor];
                                  v242 = [v238 leadingAnchor];
                                  v243 = [v241 constraintEqualToAnchor:v242];

                                  v204[13] = v243;
                                  v244 = v386;
                                  v245 = [v386 bottomAnchor];
                                  v246 = [v238 bottomAnchor];
                                  v247 = [v245 constraintEqualToAnchor:v246 constant:-25.0];

                                  v204[14] = v247;
                                  v248 = [v244 leadingAnchor];
                                  v249 = [v236 trailingAnchor];
                                  v250 = [v248 constraintEqualToAnchor:v249];

                                  v204[15] = v250;
                                  v251 = v204;
                                  v252 = v371;
                                  v253 = v371();
                                  v254 = [v253 centerYAnchor];

                                  v255 = v377;
                                  v256 = [(objc_class *)v377 centerYAnchor];
                                  v257 = [v254 constraintEqualToAnchor:v256];

                                  v251[16] = v257;
                                  v258 = v252();
                                  v259 = [v258 leadingAnchor];

                                  v260 = [(objc_class *)v255 trailingAnchor];
                                  v261 = [v259 constraintEqualToAnchor:v260 constant:*sub_100036880()];

                                  v251[17] = v261;
                                  v262 = v252();
                                  v263 = [v262 trailingAnchor];

                                  v264 = v379;
                                  v265 = v379();
                                  v266 = [v265 leadingAnchor];

                                  v267 = -v48;
                                  v268 = [v263 constraintEqualToAnchor:v266 constant:v267];

                                  v251[18] = v268;
                                  v269 = v251;
                                  v270 = v374;
                                  v271 = [v374 bottomAnchor];
                                  v272 = v380;
                                  v273 = v380();
                                  v274 = [v273 topAnchor];

                                  v275 = [v271 constraintEqualToAnchor:v274 constant:*sub_100036A80()];
                                  v269[19] = v275;
                                  v276 = [v270 leadingAnchor];
                                  v277 = v272;
                                  v278 = v272();
                                  v279 = [v278 leadingAnchor];

                                  v280 = [v276 constraintEqualToAnchor:v279 constant:*v367];
                                  v269[20] = v280;
                                  v281 = [v270 trailingAnchor];
                                  v282 = v264();
                                  v283 = [v282 leadingAnchor];

                                  v284 = [v281 constraintEqualToAnchor:v283 constant:v267];
                                  v269[21] = v284;
                                  v285 = v375;
                                  v286 = v375();
                                  v287 = [v286 centerXAnchor];

                                  v288 = v277();
                                  v289 = [v288 centerXAnchor];

                                  v290 = [v287 constraintEqualToAnchor:v289];
                                  v269[22] = v290;
                                  v291 = v285();
                                  v292 = [v291 widthAnchor];

                                  v374 = sub_1000376E4();
                                  v293 = [v292 constraintEqualToConstant:*v374];

                                  v269[23] = v293;
                                  v294 = v285();
                                  v295 = [v294 topAnchor];

                                  v296 = v379();
                                  v297 = [v296 bottomAnchor];

                                  v372 = sub_1000376D0();
                                  v298 = [v295 constraintEqualToAnchor:v297 constant:*v372];

                                  v269[24] = v298;
                                  v299 = v376;
                                  v300 = v376();
                                  v301 = [v300 bottomAnchor];

                                  v302 = v285();
                                  v303 = [v302 bottomAnchor];

                                  v304 = [v301 constraintEqualToAnchor:v303];
                                  v269[25] = v304;
                                  v305 = v299();
                                  v306 = [v305 topAnchor];

                                  v307 = v285();
                                  v308 = [v307 topAnchor];

                                  v309 = [v306 constraintEqualToAnchor:v308];
                                  v269[26] = v309;
                                  v310 = v376();
                                  v311 = [v310 leadingAnchor];

                                  v312 = v285();
                                  v313 = [v312 leadingAnchor];

                                  v314 = [v311 constraintEqualToAnchor:v313];
                                  v269[27] = v314;
                                  v315 = v368;
                                  v316 = v368();
                                  v317 = [v316 bottomAnchor];

                                  v318 = v285();
                                  v319 = [v318 bottomAnchor];

                                  v320 = [v317 constraintEqualToAnchor:v319];
                                  v269[28] = v320;
                                  v321 = v315();
                                  v322 = [v321 topAnchor];

                                  v323 = v285();
                                  v324 = [v323 topAnchor];

                                  v325 = [v322 constraintEqualToAnchor:v324];
                                  v269[29] = v325;
                                  v326 = v315();
                                  v327 = [v326 trailingAnchor];

                                  v328 = v285();
                                  v329 = v379;
                                  v330 = v328;
                                  v331 = [v328 trailingAnchor];

                                  v332 = [v327 constraintEqualToAnchor:v331];
                                  v269[30] = v332;
                                  v333 = v389;
                                  v334 = v389();
                                  v335 = [v334 centerXAnchor];

                                  v336 = v380();
                                  v337 = [v336 centerXAnchor];

                                  v338 = [v335 constraintEqualToAnchor:v337];
                                  v269[31] = v338;
                                  v339 = v333();
                                  v340 = [v339 topAnchor];

                                  v341 = v329();
                                  v342 = [v341 bottomAnchor];

                                  v343 = [v340 constraintEqualToAnchor:v342 constant:*v372];
                                  v269[32] = v343;
                                  v344 = v333();
                                  v345 = [v344 widthAnchor];

                                  v346 = [v345 constraintEqualToConstant:*v374];
                                  v269[33] = v346;
                                  (*((swift_isaMask & *v191) + 0x438))(v269);
                                  v347 = objc_opt_self();
                                  (*((swift_isaMask & *v191) + 0x430))();
                                  sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
                                  isa = Array._bridgeToObjectiveC()().super.isa;

                                  [v347 activateConstraints:isa];

                                  v349 = [v191 view];
                                  if (v349)
                                  {
                                    v350 = v349;
                                    v351 = v329();
                                    [v350 bringSubviewToFront:v351];

                                    return;
                                  }

                                  goto LABEL_41;
                                }

LABEL_40:
                                __break(1u);
LABEL_41:
                                __break(1u);
                                return;
                              }

LABEL_39:
                              __break(1u);
                              goto LABEL_40;
                            }

LABEL_38:
                            __break(1u);
                            goto LABEL_39;
                          }

LABEL_37:
                          __break(1u);
                          goto LABEL_38;
                        }

LABEL_36:
                        __break(1u);
                        goto LABEL_37;
                      }

LABEL_35:
                      __break(1u);
                      goto LABEL_36;
                    }

LABEL_34:
                    __break(1u);
                    goto LABEL_35;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_34;
              }

              v356 = v385;
              v352 = v386;
              v355 = v381;
              v354 = v382;
              v353 = v388;
            }

            else
            {
              v353 = v381;
              v352 = v382;
              v354 = v385;
              v355 = v386;
              v356 = v383;
            }
          }
        }
      }
    }
  }

  v357 = sub_1000301D0();
  (*(v4 + 16))(v7, v357, v3);
  v358 = Logger.logObject.getter();
  v359 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v358, v359))
  {
    v360 = swift_slowAlloc();
    v361 = swift_slowAlloc();
    v391[0] = v361;
    *v360 = 136315138;
    *(v360 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, v391);
    _os_log_impl(&_mh_execute_header, v358, v359, "%s error loading sub views", v360, 0xCu);
    sub_1000114A8(v361);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_100019E00()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100010E34(0xD000000000000020, 0x800000010004C9E0, &v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000114A8(v10);
  }

  v11 = (*(v3 + 8))(v5, v2);
  if ((*((swift_isaMask & *v1) + 0x2C8))(v11) > 6u)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_10001F57C();
  if (result)
  {
    return sub_100025FD8();
  }

  return result;
}

void sub_10001A17C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(**(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 152))(v4);
  if (v7)
  {
    v8 = v7;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setHidden:1];
    [v8 sizeToFit];
    v9 = [v8 layer];
    [v9 setCornerRadius:*sub_10003695C()];

    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100047E30;
    v11 = [v8 topAnchor];
    v12 = [*(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel) bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:*sub_100036944()];

    *(v10 + 32) = v13;
    v14 = [v8 centerXAnchor];
    v15 = *((swift_isaMask & *v1) + 0x3B8);
    v16 = v15();
    v17 = [v16 centerXAnchor];

    v18 = [v14 constraintEqualToAnchor:v17];
    *(v10 + 40) = v18;
    v19 = [v8 heightAnchor];
    v20 = [v19 constraintEqualToConstant:*sub_100036910()];

    *(v10 + 48) = v20;
    v21 = [v8 widthAnchor];

    v22 = [v21 constraintEqualToConstant:*sub_100036928()];
    *(v10 + 56) = v22;
    (*((swift_isaMask & *v1) + 0x3F0))(v10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100047E40;
    v24 = v15();
    v25 = [v24 heightAnchor];

    v26 = [v25 constraintEqualToConstant:*sub_1000368F4()];
    *(v23 + 32) = v26;
    (*((swift_isaMask & *v1) + 0x450))(v23);
    v27 = objc_opt_self();
    (*((swift_isaMask & *v1) + 0x448))();
    sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints:isa];

    (*((swift_isaMask & *v1) + 0x3E8))();
    v35 = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints:v35];

    v29 = v35;
  }

  else
  {
    v30 = sub_1000301D0();
    (*(v3 + 16))(v6, v30, v2);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D520, &v36);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s nil cameraView", v33, 0xCu);
      sub_1000114A8(v34);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_10001A820()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "refreshCurrentApplication", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  v11 = (*(**(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 152))(v10);
  if (v11)
  {
    v12 = v11;
    v13 = (*((swift_isaMask & *v1) + 0x3B8))();
    [v13 addSubview:v12];

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 invalidateIntrinsicContentSize];

      v16 = [v1 view];
      if (v16)
      {
        v17 = v16;
        [v16 setNeedsLayout];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10001AA74(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v60 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
      if (v13)
      {
        v14 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
        if (v14)
        {
          v15 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
          if (v15)
          {
            v65 = a1;
            v66 = *((swift_isaMask & *v2) + 0x2B0);
            v69 = v15;
            v68 = v14;
            v16 = v13;
            v17 = v12;
            v67 = v11;
            v18 = v66();
            if (v18)
            {
              v19 = v18;
              v20 = (*((swift_isaMask & *v2) + 0x298))();
              if (v20)
              {
                v66 = v20;
                v21 = sub_1000301D0();
                (*(v5 + 16))(v10, v21, v4);
                v22 = v2;
                v23 = Logger.logObject.getter();
                v24 = static os_log_type_t.default.getter();

                LODWORD(v64) = v24;
                if (os_log_type_enabled(v23, v24))
                {
                  v25 = swift_slowAlloc();
                  v62 = v17;
                  v26 = v25;
                  v61 = swift_slowAlloc();
                  aBlock = v61;
                  *v26 = 136315650;
                  *(v26 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &aBlock);
                  *(v26 + 12) = 2080;
                  v27 = *((swift_isaMask & *v22) + 0x1A8);
                  v60 = v23;
                  v70 = v27();
                  type metadata accessor for SBUISystemApertureLayoutMode(0);
                  v28 = String.init<A>(describing:)();
                  v30 = v19;
                  v31 = v16;
                  v32 = sub_100010E34(v28, v29, &aBlock);

                  *(v26 + 14) = v32;
                  v16 = v31;
                  v19 = v30;
                  *(v26 + 22) = 2080;
                  LOBYTE(v70) = (*((swift_isaMask & *v22) + 0x2C8))(v33);
                  v34 = String.init<A>(describing:)();
                  v36 = sub_100010E34(v34, v35, &aBlock);

                  *(v26 + 24) = v36;
                  v37 = v60;
                  _os_log_impl(&_mh_execute_header, v60, v64, "%s self.activeLayoutMode = %s, self.recordingState = %s", v26, 0x20u);
                  swift_arrayDestroy();

                  v17 = v62;
                }

                else
                {
                }

                (*(v5 + 8))(v10, v4);
                v63 = v19;
                v45 = swift_allocObject();
                v45[2] = v22;
                v46 = v22;
                v47 = v66;
                v45[3] = v66;
                v45[4] = v19;
                v49 = v68;
                v48 = v69;
                v50 = v67;
                v45[5] = v69;
                v45[6] = v50;
                v45[7] = v16;
                v45[8] = v49;
                v45[9] = v17;
                v75 = sub_100029E44;
                v76 = v45;
                aBlock = _NSConcreteStackBlock;
                v72 = 1107296256;
                v73 = sub_10001D7A4;
                v74 = &unk_10005D940;
                v51 = _Block_copy(&aBlock);
                v69 = v48;
                v68 = v49;
                v64 = v16;
                v52 = v17;
                v53 = v50;
                v54 = v46;
                v55 = v47;
                v56 = v63;

                v57 = swift_allocObject();
                *(v57 + 16) = v54;
                v75 = sub_100029E58;
                v76 = v57;
                aBlock = _NSConcreteStackBlock;
                v72 = 1107296256;
                v73 = sub_10001D7A4;
                v74 = &unk_10005D990;
                v58 = _Block_copy(&aBlock);
                v59 = v54;

                [v65 animateAlongsideTransition:v51 completion:v58];
                _Block_release(v58);
                _Block_release(v51);

                return;
              }

              v39 = v17;
              v17 = v16;
              v16 = v68;
              v38 = v69;
            }

            else
            {
              v38 = v68;
              v19 = v69;
              v39 = v67;
            }
          }
        }
      }
    }
  }

  v40 = sub_1000301D0();
  (*(v5 + 16))(v8, v40, v4);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &aBlock);
    _os_log_impl(&_mh_execute_header, v41, v42, "%s error loading sub views", v43, 0xCu);
    sub_1000114A8(v44);
  }

  (*(v5 + 8))(v8, v4);
}

void sub_10001B1D4(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v198 = a8;
  v199 = a6;
  v200 = a7;
  v201 = a5;
  v203 = a2;
  v204 = a4;
  v202 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v198 - v15;
  v17 = &swift_isaMask;
  v18 = *((swift_isaMask & *a1) + 0x1A8);
  v19 = v18(v14);
  if (v19 == 4)
  {
    if ((*((swift_isaMask & *a1) + 0x2C8))() == 4)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = sub_10001F57C();
    if (v19)
    {
      v21 = sub_1000301D0();
      (*(v10 + 16))(v16, v21, v9);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "pause system session", v24, 2u);
      }

      (*(v10 + 8))(v16, v9);
      v25 = [objc_opt_self() sharedInstance];
      [v25 pauseCurrentSystemSession];

      (*((swift_isaMask & *a1) + 0x2D0))(5);
      sub_1000372C0();

      v26 = String._bridgeToObjectiveC()();

      [v203 setState:v26];

      sub_10003727C();

      v27 = String._bridgeToObjectiveC()();

      v17 = &swift_isaMask;
      [v202 setState:v27];
    }
  }

LABEL_9:
  v28 = v18(v19);
  if (v28 > 2)
  {
    if (v28 != 3)
    {
      v30 = v204;
      if (v28 != 4)
      {
        return;
      }

      if (sub_10001F1E0() & 1) != 0 && (sub_10001F57C())
      {
        v31 = 1;
        (*((swift_isaMask & *a1) + 0x4B0))(1);
        v32 = v199;
      }

      else
      {
        v36 = sub_10001F1E0();
        v32 = v199;
        if (v36 & 1) != 0 && (sub_10001F664())
        {
          v37 = (*((swift_isaMask & *a1) + 0x280))();
          [v37 setHidden:1];

          [v202 setHidden:1];
          v31 = 0;
        }

        else
        {
          v38 = sub_10001F664();
          v39 = (*((swift_isaMask & *a1) + 0x280))(v38);
          [v39 setHidden:0];

          [v202 setHidden:0];
          v31 = 1;
        }
      }

      [v198 setHidden:{v31, v198}];
      [v200 setHidden:v31];
      [v30 setHidden:1];
      [v201 setHidden:1];
      [v32 setHidden:1];
      [v203 setHidden:0];
      v209 = (*((swift_isaMask & *a1) + 0x2E0))([*(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel) setHidden:0]);
      v208 = 2;
      sub_100029E74();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v207[0] == v205 && v207[1] == v206)
      {
      }

      else
      {
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
          goto LABEL_108;
        }
      }

      v42 = *((swift_isaMask & *a1) + 0x2C8);
      v43 = v42(v40);
      if (v43 > 3 && v43 > 5 && v43 != 6)
      {
        goto LABEL_82;
      }

      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v92)
      {
        goto LABEL_108;
      }

      if (v42(v93) != 6)
      {
        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v136 & 1) == 0)
        {
          (*(**(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 520))(v137);
          sub_10001DC64();
        }
      }

      else
      {
LABEL_82:
      }

LABEL_108:
      v51 = objc_opt_self();
      (*((swift_isaMask & *a1) + 0x400))();
      v138 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v51 deactivateConstraints:isa];

      (*((swift_isaMask & *a1) + 0x418))();
      v140 = Array._bridgeToObjectiveC()().super.isa;

      [v51 deactivateConstraints:v140];

      v141 = ((swift_isaMask & *a1) + 976);
      v29 = *((swift_isaMask & *a1) + 0x3D0);
      v142 = v29();
      if (v142 >> 62)
      {
        v143 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v143)
      {
        goto LABEL_149;
      }

      v203 = v29;
      v204 = v141;
      v201 = v138;
      v202 = v51;
      sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_100047E30;
      v146 = [a1 view];
      if (v146)
      {
        v147 = v146;
        v29 = &selRef_setElementNeedsUpdate;
        v148 = [v146 widthAnchor];

        v149 = *((swift_isaMask & *a1) + 0x3B8);
        v150 = v149();
        v151 = [v150 widthAnchor];

        v152 = [v148 constraintEqualToAnchor:v151];
        *(v145 + 32) = v152;
        v153 = [a1 view];
        if (v153)
        {
          v154 = v153;
          v155 = [v153 heightAnchor];

          v156 = v149();
          v51 = [v156 heightAnchor];

          v157 = [v155 constraintEqualToAnchor:v51];
          *(v145 + 40) = v157;
          v158 = v149();
          v159 = [v158 widthAnchor];

          v160 = [v159 constraintEqualToConstant:*sub_1000366B0()];
          *(v145 + 48) = v160;
          *(v145 + 56) = (*((swift_isaMask & *a1) + 0x3A0))();
          v161 = (*((swift_isaMask & *a1) + 0x3D8))(v145);
          v162 = (v203)(v161);
          v163 = v162;
          if (!(v162 >> 62))
          {
            v164 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v164)
            {
              goto LABEL_115;
            }

            goto LABEL_148;
          }

          goto LABEL_147;
        }

LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    v34 = [objc_msgSend(a1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (v34)
    {
      v35 = [v34 isUserInitiated];
    }

    else
    {
      v35 = 0;
    }

    v44 = *((swift_isaMask & *a1) + 0x2C8);
    v45 = v44();
    if (v45 <= 5 || v45 == 6)
    {
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v86 & v35)
      {
LABEL_74:
        v87 = sub_10002B924();
        v88 = *((swift_isaMask & *a1) + 0x238);
        v89 = *v87;
        v90 = v88();
        (*((swift_isaMask & *v89) + 0xF8))(v90);

LABEL_173:

        return;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_74;
      }
    }

    if (sub_10001EB00([v204 setHidden:{1, v198}]))
    {
      [v201 setHidden:0];
      [v199 setHidden:0];
    }

    [v200 setHidden:1];
    [v203 setHidden:1];
    [v202 setHidden:1];
    v91 = (*((swift_isaMask & *a1) + 0x280))([*(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel) setHidden:1]);
    [v91 setHidden:1];

    if (v44() == 1)
    {
    }

    else
    {
      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v94 & 1) == 0)
      {
        v96 = sub_10001F1E0();
        v95 = v201;
        if ((v96 & 1) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }
    }

    sub_10002067C();
    v95 = v201;
LABEL_87:
    (*((swift_isaMask & *a1) + 0x4B0))(0);
LABEL_88:
    if (sub_10001F664())
    {
      (*(**(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 528))();
    }

    v51 = objc_opt_self();
    (*((swift_isaMask & *a1) + 0x3D0))();
    v97 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    v98 = Array._bridgeToObjectiveC()().super.isa;

    [v51 deactivateConstraints:v98];

    (*((swift_isaMask & *a1) + 0x418))();
    v99 = Array._bridgeToObjectiveC()().super.isa;

    [v51 deactivateConstraints:v99];

    v100 = ((swift_isaMask & *a1) + 1024);
    v101 = *((swift_isaMask & *a1) + 0x400);
    v102 = v101();
    if (v102 >> 62)
    {
      v168 = _CocoaArrayWrapper.endIndex.getter();

      if (v168)
      {
        goto LABEL_163;
      }
    }

    else
    {
      v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v103)
      {
        goto LABEL_163;
      }
    }

    v203 = v101;
    v204 = v100;
    v201 = v97;
    v202 = v51;
    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_100047E30;
    v106 = [v95 centerXAnchor];
    v29 = &selRef_setElementNeedsUpdate;
    v107 = [a1 view];
    if (!v107)
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v108 = v107;
    v109 = [v107 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v110 = [v109 centerXAnchor];
    v111 = [v106 constraintEqualToAnchor:v110];

    *(v105 + 32) = v111;
    v112 = [v95 centerYAnchor];
    v113 = [a1 view];
    if (!v113)
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v114 = v113;
    v115 = [v113 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v116 = [v115 centerYAnchor];
    v117 = [v112 constraintEqualToAnchor:v116];

    *(v105 + 40) = v117;
    v118 = v199;
    v119 = [v199 centerXAnchor];
    v120 = [a1 view];
    if (!v120)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v121 = v120;
    v122 = [v120 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v123 = [v122 centerXAnchor];
    v124 = [v119 constraintEqualToAnchor:v123];

    *(v105 + 48) = v124;
    v125 = [v118 centerYAnchor];
    v126 = [a1 view];
    if (!v126)
    {
LABEL_185:
      __break(1u);
      return;
    }

    v127 = v126;
    v128 = [v126 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v129 = [v128 centerYAnchor];
    v51 = [v125 constraintEqualToAnchor:v129];

    *(v105 + 56) = v51;
    v130 = (*((swift_isaMask & *a1) + 0x408))(v105);
    v131 = (v203)(v130);
    v132 = v131;
    if (v131 >> 62)
    {
      goto LABEL_161;
    }

    v133 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v133)
    {
      goto LABEL_98;
    }

LABEL_162:

    v51 = v202;
    v101 = v203;
LABEL_163:
    v192 = (v101)(v104);
    if (v192 >> 62)
    {
      v196 = v192;
      v197 = _CocoaArrayWrapper.endIndex.getter();
      v192 = v196;
      if (!v197)
      {
        goto LABEL_173;
      }
    }

    else if (!*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_173;
    }

    if ((v192 & 0xC000000000000001) != 0)
    {
      v193 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      v193 = *(v192 + 32);
    }

    v194 = v193;

    v195 = [v194 isActive];

    if ((v195 & 1) == 0)
    {
      v101();
LABEL_170:
      v173.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v51 activateConstraints:{v173.super.isa, v198}];
LABEL_171:
    }

    return;
  }

  if (v28 == 1)
  {
    v33 = (*((swift_isaMask & *a1) + 0x2C8))();
    if (v33 <= 3 || v33 <= 5 || v33 == 6)
    {
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v73 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v74 = sub_1000301D0();
    (*(v10 + 16))(v13, v74, v9);
    v75 = a1;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v207[0] = v80;
      *v78 = 136315394;
      *(v78 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, v207);
      *(v78 + 12) = 2112;
      *(v78 + 14) = v75;
      *v79 = a1;
      v81 = v75;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s self=%@ inactive and recording completed, ending session", v78, 0x16u);
      sub_100011940(v79, &qword_1000697C0, qword_100047CD0);

      sub_1000114A8(v80);
    }

    (*(v10 + 8))(v13, v9);
    v82 = sub_10002B924();
    v83 = *((swift_isaMask & *v75) + 0x238);
    v84 = *v82;
    v85 = v83();
    (*((swift_isaMask & *v84) + 0xF8))(v85);

    goto LABEL_173;
  }

  v29 = v204;
  if (v28 == 2)
  {
    if ((*((swift_isaMask & *a1) + 0x2C8))([v204 setHidden:0]) == 1)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
        if (sub_10001F1E0())
        {
          (*((swift_isaMask & *a1) + 0x4B0))(0);
        }

LABEL_51:
        if (sub_10001F664())
        {
          (*(**(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 528))();
        }

        v47 = objc_opt_self();
        (*((swift_isaMask & *a1) + 0x3D0))();
        v48 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
        v49 = Array._bridgeToObjectiveC()().super.isa;

        [v47 deactivateConstraints:v49];

        (*((swift_isaMask & *a1) + 0x400))();
        v50 = Array._bridgeToObjectiveC()().super.isa;

        [v47 deactivateConstraints:v50];

        v51 = ((swift_isaMask & *a1) + 1048);
        v52 = *((swift_isaMask & *a1) + 0x418);
        v53 = v52();
        if (v53 >> 62)
        {
          goto LABEL_129;
        }

        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v54)
        {
          goto LABEL_55;
        }

        while (1)
        {
LABEL_136:
          v163 = a1;
          v169 = (v52)(v55);
          if (v169 >> 62)
          {
            v163 = v169;
            v174 = _CocoaArrayWrapper.endIndex.getter();
            v169 = v163;
            if (!v174)
            {
              goto LABEL_173;
            }
          }

          else if (!*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_173;
          }

          if ((v169 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v170 = *(v169 + 32);
LABEL_141:
            v171 = v170;

            v172 = [v171 isActive];

            if (v172)
            {
              return;
            }

            v52();
            v173.super.isa = Array._bridgeToObjectiveC()().super.isa;

            [v47 activateConstraints:{v173.super.isa, v198}];
            goto LABEL_171;
          }

          __break(1u);
LABEL_147:
          v164 = _CocoaArrayWrapper.endIndex.getter();
          if (!v164)
          {
LABEL_148:

            v51 = v202;
            v29 = v203;
LABEL_149:
            v175 = (*((swift_isaMask & *a1) + 0x3A0))(v144);
            v176 = [a1 view];
            if (!v176)
            {
              goto LABEL_177;
            }

            v177 = v176;
            v178 = [v176 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

            [v178 layoutFrame];
            v180 = v179;
            v182 = v181;
            v184 = v183;
            v186 = v185;

            v210.origin.x = v180;
            v210.origin.y = v182;
            v210.size.width = v184;
            v210.size.height = v186;
            [v175 setConstant:CGRectGetHeight(v210)];

            v132 = a1;
            v187 = v29();
            if (v187 >> 62)
            {
              v132 = v187;
              v191 = _CocoaArrayWrapper.endIndex.getter();
              v187 = v132;
              if (!v191)
              {
                goto LABEL_173;
              }
            }

            else if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_173;
            }

            if ((v187 & 0xC000000000000001) != 0)
            {
              v188 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_161:
                v133 = _CocoaArrayWrapper.endIndex.getter();
                if (v133)
                {
LABEL_98:
                  v48 = 0;
                  v52 = (v132 & 0xC000000000000001);
                  v17 = &selRef_setElementNeedsUpdate;
                  v47 = 1144750080;
                  while (1)
                  {
                    if (v52)
                    {
                      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v48 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_128;
                      }

                      v134 = *(v132 + 8 * v48 + 32);
                    }

                    v51 = v134;
                    v29 = (v48 + 1);
                    if (__OFADD__(v48, 1))
                    {
                      goto LABEL_127;
                    }

                    LODWORD(v135) = 1144750080;
                    [v134 setPriority:v135];

                    ++v48;
                    if (v29 == v133)
                    {
                      goto LABEL_162;
                    }
                  }
                }

                goto LABEL_162;
              }

              v188 = *(v187 + 32);
            }

            v189 = v188;

            v190 = [v189 isActive];

            if (v190)
            {
              return;
            }

            v29();
            goto LABEL_170;
          }

LABEL_115:
          v17 = 0;
          v48 = v163 & 0xFFFFFFFFFFFFFF8;
          v52 = &selRef_setElementNeedsUpdate;
          v47 = 1144750080;
          while (1)
          {
            if ((v163 & 0xC000000000000001) != 0)
            {
              v165 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v17 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

              v165 = *(v163 + 8 * v17 + 32);
            }

            v51 = v165;
            v29 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              break;
            }

            LODWORD(v166) = 1144750080;
            [v165 setPriority:v166];

            ++v17;
            if (v29 == v164)
            {
              goto LABEL_148;
            }
          }

          while (1)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            v167 = _CocoaArrayWrapper.endIndex.getter();

            if (v167)
            {
              break;
            }

LABEL_55:
            v202 = v52;
            v203 = v51;
            v201 = v48;
            v56 = v17;
            sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
            v57 = swift_allocObject();
            *(v57 + 16) = xmmword_100047E50;
            v58 = [v29 centerXAnchor];
            v59 = [a1 view];
            if (!v59)
            {
              goto LABEL_178;
            }

            v60 = v59;
            v61 = [v59 centerXAnchor];

            v62 = [v58 constraintEqualToAnchor:v61];
            *(v57 + 32) = v62;
            v63 = [v29 centerYAnchor];
            v64 = [a1 view];
            if (!v64)
            {
              goto LABEL_180;
            }

            v65 = v64;
            v204 = v47;
            v51 = [v64 centerYAnchor];

            v66 = [v63 constraintEqualToAnchor:v51];
            *(v57 + 40) = v66;
            v67 = (*((*v56 & *a1) + 0x420))(v57);
            v68 = (v202)(v67);
            v69 = v68;
            if (v68 >> 62)
            {
              v70 = _CocoaArrayWrapper.endIndex.getter();
              if (!v70)
              {
LABEL_135:

                v51 = v203;
                v47 = v204;
                v52 = v202;
                goto LABEL_136;
              }
            }

            else
            {
              v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v70)
              {
                goto LABEL_135;
              }
            }

            v17 = 0;
            v52 = (v69 & 0xC000000000000001);
            v48 = &selRef_setElementNeedsUpdate;
            v47 = 1144750080;
            while (1)
            {
              if (v52)
              {
                v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v17 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_125;
                }

                v71 = *(v69 + 8 * v17 + 32);
              }

              v51 = v71;
              v29 = (v17 + 1);
              if (__OFADD__(v17, 1))
              {
                break;
              }

              LODWORD(v72) = 1144750080;
              [v71 setPriority:v72];

              ++v17;
              if (v29 == v70)
              {
                goto LABEL_135;
              }
            }

            __break(1u);
          }
        }

        v170 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_141;
      }
    }

    sub_10002067C();
    goto LABEL_51;
  }
}

uint64_t sub_10001D7A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001D804(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    v9 = *((swift_isaMask & *a2) + 0x1A8);
    if (v9() == 3 || (result = v9(), result == 2))
    {
      v10 = (*((swift_isaMask & *a2) + 0x2C8))();
      if (v10 <= 3 || v10 > 5 || v10 == 4)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
      }

      v19 = v9;
      v12 = sub_1000301D0();
      (*(v5 + 16))(v7, v12, v4);
      v13 = a2;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v19();

        _os_log_impl(&_mh_execute_header, v14, v15, "resume system session in layout mode=%ld", v16, 0xCu);
      }

      else
      {

        v14 = v13;
      }

      (*(v5 + 8))(v7, v4);
      v17 = [objc_opt_self() sharedInstance];
      [v17 resumeCurrentSystemSession];

      return (*((swift_isaMask & v13->isa) + 0x2D0))(4);
    }
  }

  return result;
}

void sub_10001DC64()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v41 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview);
  v11 = (*(*v10 + 152))(v7);
  if (v11)
  {
    v12 = v11;
    v13 = (*(*v10 + 200))();
    v43 = v12;
    if (v13)
    {

      v14 = sub_1000301D0();
      (*(v3 + 16))(v6, v14, v2);
      v15 = v12;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v42 = v15;
        v19 = v18;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v44 = v21;
        *v19 = 136315394;
        *(v19 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004D500, &v44);
        *(v19 + 12) = 2112;
        *(v19 + 14) = v42;
        *v20 = v12;
        v22 = v42;
        _os_log_impl(&_mh_execute_header, v16, v17, "%s adding cameraView=%@ to customView", v19, 0x16u);
        sub_100011940(v20, &qword_1000697C0, qword_100047CD0);

        sub_1000114A8(v21);

        v15 = v42;
      }

      (*(v3 + 8))(v6, v2);
      v23 = objc_opt_self();
      (*((swift_isaMask & *v1) + 0x448))();
      sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v23 activateConstraints:isa];

      (*((swift_isaMask & *v1) + 0x3E8))();
      v25 = Array._bridgeToObjectiveC()().super.isa;

      [v23 activateConstraints:v25];

      [v15 setHidden:0];
      v26 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
      sub_100036B4C();

      v27 = String._bridgeToObjectiveC()();

      [v26 setText:v27];
    }

    else
    {
      v28 = sub_1000301D0();
      (*(v3 + 16))(v9, v28, v2);
      v29 = v12;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v42 = v29;
        v33 = v32;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v33 = 136315394;
        *(v33 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004D500, &v44);
        *(v33 + 12) = 2112;
        *(v33 + 14) = v42;
        *v34 = v12;
        v36 = v42;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s removing cameraView=%@ from customView", v33, 0x16u);
        sub_100011940(v34, &qword_1000697C0, qword_100047CD0);

        sub_1000114A8(v35);

        v29 = v42;
      }

      (*(v3 + 8))(v9, v2);
      [v29 setHidden:1];
      v37 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
      sub_100036B4C();

      v38 = String._bridgeToObjectiveC()();

      [v37 setText:v38];

      v39 = objc_opt_self();
      (*((swift_isaMask & *v1) + 0x448))();
      sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      v40 = Array._bridgeToObjectiveC()().super.isa;

      [v39 deactivateConstraints:v40];

      (*((swift_isaMask & *v1) + 0x3E8))();
      v27 = Array._bridgeToObjectiveC()().super.isa;

      [v39 deactivateConstraints:v27];
    }
  }
}

void sub_10001E370(uint64_t a1)
{
  v2 = v1;
  if (sub_10001F57C())
  {
    v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
    sub_100036A08();

    v4 = String._bridgeToObjectiveC()();

    [v3 setText:v4];
  }

  if (sub_10001F664())
  {
    (*((swift_isaMask & *v2) + 0x2E0))();
    sub_100029E74();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v10 == v8 && v11 == v9)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
LABEL_9:
        sub_100020AD4();
        v6 = *(v2 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
        sub_100036B4C();

        v7 = String._bridgeToObjectiveC()();

        [v6 setText:v7];

        return;
      }
    }

    sub_10001EC98();
    goto LABEL_9;
  }
}

uint64_t sub_10001E534(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10002B17C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005E0C0;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10001E800(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*((swift_isaMask & *a1) + 0x2E0))(v6);
  v21 = a2;
  sub_10002B188();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v10 = sub_1000301D0();
    (*(v5 + 16))(v8, v10, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v13 = 136315394;
      *(v13 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D650, &v20);
      *(v13 + 12) = 2080;
      v14 = SessionType.rawValue.getter(a2);
      v16 = sub_100010E34(v14, v15, &v20);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s with session type %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v8, v4);
    v17 = (*((swift_isaMask & *a1) + 0x2E8))(a2);
    return (*((swift_isaMask & *a1) + 0x538))(v17);
  }

  return result;
}

uint64_t sub_10001EB00(uint64_t a1)
{
  if (sub_10001F664())
  {
    if ((*((swift_isaMask & *v1) + 0x2C8))() == 4)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return (sub_10001F57C() | v2) & 1;
}

void sub_10001EC98()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A820();
  v6 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview);
  v7.n128_f64[0] = sub_10002B0CC();
  v8 = (*(*v6 + 536))(v7);
  v9 = (*(*v6 + 152))(v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000301D0();
    (*(v3 + 16))(v5, v11, v2);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = v3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v24 = v2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v26 = v19;
      *v16 = 136315394;
      *(v16 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004D630, &v26);
      *(v16 + 12) = 2112;
      *(v16 + 14) = v12;
      *v18 = v10;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s adding cameraView=%@ to customView", v16, 0x16u);
      sub_100011940(v18, &qword_1000697C0, qword_100047CD0);

      sub_1000114A8(v19);

      v21 = (*(v25 + 8))(v5, v24);
    }

    else
    {

      v21 = (*(v3 + 8))(v5, v2);
    }

    v22 = (*((swift_isaMask & *v1) + 0x3B8))(v21);
    [v22 addSubview:v12];

    sub_10001A17C();
    (*(*v6 + 520))();
  }
}

uint64_t sub_10001EFF8()
{
  v1 = objc_opt_self();
  (*((swift_isaMask & *v0) + 0x448))();
  sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints:isa];

  (*((swift_isaMask & *v0) + 0x3E8))();
  v3 = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints:v3];

  v4 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview);
  v5 = (*(*v4 + 528))();
  v6 = (*(*v4 + 152))(v5);
  if (v6)
  {
    v7 = v6;
    [v6 removeFromSuperview];
  }

  return (*(*v4 + 544))();
}

uint64_t sub_10001F1E0()
{
  v1 = *((swift_isaMask & *v0) + 0x2C8);
  if (v1() == 1)
  {
    v2 = 1;
LABEL_11:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if ((v1)(v4) == 2)
    {
      v2 = 1;
      goto LABEL_11;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      if ((v1)(v6) == 3)
      {
        v2 = 1;
      }

      else
      {
        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_11;
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_10001F57C()
{
  (*((swift_isaMask & *v0) + 0x2E0))();
  v1 = 1;
  sub_100029E74();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 != v4 || v7 != v5)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t sub_10001F664()
{
  v1 = *((swift_isaMask & *v0) + 0x2E0);
  v1();
  sub_100029E74();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v9 == v7 && v10 == v8)
  {

    v5 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      v5 = 1;
    }

    else
    {
      (v1)(v4);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v9 == v7 && v10 == v8)
      {
        v5 = 1;
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return v5 & 1;
}

void sub_10001F814()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - v10;
  v12 = (*((swift_isaMask & *v0) + 0x298))(v9);
  if (v12)
  {
    v13 = v12;
    v14 = sub_10001F1E0();
    v15 = sub_1000301D0();
    v16 = *(v2 + 16);
    if (v14)
    {
      v16(v11, v15, v1);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v34 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D4E0, &v34);
        _os_log_impl(&_mh_execute_header, v17, v18, "%s cancel countdown", v19, 0xCu);
        sub_1000114A8(v20);
      }

      (*(v2 + 8))(v11, v1);
      v21 = [objc_opt_self() sharedInstance];
    }

    else
    {
      v16(v8, v15, v1);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D4E0, &v34);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s stop recording", v29, 0xCu);
        sub_1000114A8(v30);
      }

      (*(v2 + 8))(v8, v1);
      sub_100037760();

      v31 = String._bridgeToObjectiveC()();

      [v13 setState:v31 animated:1];

      sub_10001FD60();
      v21 = [objc_opt_self() sharedInstance];
    }

    v32 = v21;
    [v32 stopCurrentSession];
  }

  else
  {
    v22 = sub_1000301D0();
    (*(v2 + 16))(v5, v22, v1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D4E0, &v34);
      _os_log_impl(&_mh_execute_header, v23, v24, "%s error loading views", v25, 0xCu);
      sub_1000114A8(v26);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_10001FD60()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((swift_isaMask & *v0) + 0x298))(v9);
  if (v12)
  {
    v13 = v12;
    v14 = (*((swift_isaMask & *v0) + 0x2B0))();
    if (v14)
    {
      v15 = v14;
      sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
      v16 = static OS_dispatch_queue.main.getter();
      v17 = swift_allocObject();
      v17[2] = v0;
      v17[3] = v15;
      v17[4] = v13;
      aBlock[4] = sub_10002AEA4;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F174;
      aBlock[3] = &unk_10005DF80;
      v18 = _Block_copy(aBlock);
      v19 = v0;
      v20 = v15;
      v21 = v13;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000B62C(&qword_100068D00, &unk_100047DD0);
      sub_100011AD0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);

      (*(v32 + 8))(v7, v5);
      return (*(v30 + 8))(v11, v31);
    }
  }

  v23 = sub_1000301D0();
  v24 = v1;
  (*(v2 + 16))(v4, v23, v1);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100010E34(0xD000000000000019, 0x800000010004D560, aBlock);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s error loading views", v27, 0xCu);
    sub_1000114A8(v28);
  }

  return (*(v2 + 8))(v4, v24);
}

void sub_100020258(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001F664())
  {
    v10 = sub_1000301D0();
    (*(v7 + 16))(v9, v10, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "stopping camera for transition to save state", v13, 2u);
    }

    (*(v7 + 8))(v9, v6);
    sub_10001EFF8();
  }

  v14 = [a2 layer];
  [v14 removeAllAnimations];

  v15 = (*((swift_isaMask & *a1) + 0x280))();
  v16 = [v15 layer];

  [v16 removeAllAnimations];
  v17 = (*((swift_isaMask & *a1) + 0x2D0))(6);
  v18 = *((swift_isaMask & *a1) + 0x388);
  v19 = (v18)(v17);
  [v19 setEnabled:0];

  v20 = v18();
  [v20 setUserInteractionEnabled:0];

  v21 = v18();
  v22 = [v21 layer];

  [v22 setAllowsHitTesting:0];
  sub_100037788();

  v23 = String._bridgeToObjectiveC()();

  [a3 setState:v23 animated:1];

  [a3 setUserInteractionEnabled:0];
  v24 = *(a1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
  if (sub_10001F57C())
  {
    sub_100036F18();
  }

  else
  {
    sub_100036C5C();
  }

  v25 = String._bridgeToObjectiveC()();

  [v24 setText:v25];

  sub_100020D10();
  v26 = [a1 view];
  if (v26)
  {
    v27 = v26;
    [v26 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002067C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000301D0();
  (*(v10 + 16))(v12, v13, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = v5;
    v19 = v2;
    v20 = v1;
    v21 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100010E34(0xD00000000000001ALL, 0x800000010004D4C0, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v17, 0xCu);
    sub_1000114A8(v21);
    v1 = v20;
    v2 = v19;
    v5 = v27;

    v3 = v28;
  }

  (*(v10 + 8))(v12, v9);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  aBlock[4] = sub_10002AE2C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DF30;
  v24 = _Block_copy(aBlock);
  v25 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v3 + 8))(v5, v2);
  return (*(v29 + 8))(v8, v30);
}

void sub_100020AD4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Expanding custom view to include camera preview", v9, 2u);
  }

  v10 = (*(v3 + 8))(v5, v2);
  v11 = (*(**(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 152))(v10);
  if (v11)
  {
    v12 = v11;
    if ([v11 isHidden])
    {
      [v12 setHidden:0];
      (*((swift_isaMask & *v1) + 0x1E0))(4);
      [objc_msgSend(v1 "systemApertureElementContext")];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100020D10()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v74 - v7;
  v9 = sub_1000301D0();
  v79 = *(v3 + 16);
  v80 = v9;
  v79(v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v81 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v81);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v13, 0xCu);
    sub_1000114A8(v14);

    v1 = v12;
  }

  v15 = *(v3 + 8);
  v15(v8, v2);
  v78 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView);
  if (v16)
  {
    type metadata accessor for RPSessionAccessoryView();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = *(v78 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView);
      if (v18)
      {
        v19 = v17;
        v77 = swift_dynamicCastClass();
        if (v77)
        {
          v20 = *(v78 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView);
          if (v20)
          {
            v75 = swift_dynamicCastClass();
            if (v75)
            {
              v76 = *(v78 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView);
              if (v76)
              {
                v74 = swift_dynamicCastClass();
                if (v74)
                {
                  if (*(v78 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView))
                  {
                    v21 = *(v78 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView);
                    v22 = swift_dynamicCastClass();
                    if (v22)
                    {
                      v23 = v21;
                      v24 = v22;
                      v25 = v78;
                      v26 = *((swift_isaMask & *v78) + 0x2C8);
                      v80 = v23;
                      v79 = v76;
                      v76 = v20;
                      v27 = v25;
                      v28 = v18;
                      v29 = v16;
                      v30 = v26();
                      if (v30 <= 3)
                      {
                        if (v30 > 1)
                        {
                          v31 = v19;
                          if (v30 == 2)
                          {
                            v32 = sub_10003724C();
                          }

                          else
                          {
                            v32 = sub_100037264();
                          }
                        }

                        else
                        {
                          v31 = v19;
                          if (v30)
                          {
                            v32 = sub_100037234();
                          }

                          else
                          {
                            v32 = sub_10003720C();
                          }
                        }

                        v64 = v32;
                        v65 = *v32;
                        v66 = v32[1];

                        v67 = v65;
                        v27 = v78;
                        sub_1000214C8(v31, v67, v66);

                        v68 = *v64;
                        v69 = v64[1];

                        sub_1000214C8(v74, v68, v69);

                        v70 = *v64;
                        v71 = v64[1];

                        v46 = v77;
                        sub_1000214C8(v77, v70, v71);

                        v72 = *v64;
                        v73 = v64[1];

                        sub_1000214C8(v24, v72, v73);

                        v62 = *v64;
                        v63 = v64[1];

                        v51 = v75;
                        goto LABEL_29;
                      }

                      if ((v30 - 4) >= 2)
                      {
                        v31 = v19;
                        v46 = v77;
                        v51 = v75;
                        if (v30 == 6)
                        {
                          v56 = sub_1000372C0();
                          v57 = *v56;
                          v58 = v56[1];

                          sub_1000214C8(v31, v57, v58);

                          v59 = sub_100037304();
                          v60 = *v59;
                          v61 = v59[1];

                          sub_1000214C8(v46, v60, v61);

                          v62 = *v59;
                          v63 = v59[1];

LABEL_29:
                          sub_1000214C8(v51, v62, v63);
                        }
                      }

                      else
                      {
                        v38 = sub_10003729C();
                        v39 = *v38;
                        v40 = v38[1];

                        v31 = v19;
                        sub_1000214C8(v19, v39, v40);

                        v41 = *v38;
                        v42 = v38[1];

                        sub_1000214C8(v74, v41, v42);

                        v43 = sub_10003727C();
                        v44 = *v43;
                        v45 = v43[1];

                        v46 = v77;
                        sub_1000214C8(v77, v44, v45);

                        v47 = *v38;
                        v48 = v38[1];

                        sub_1000214C8(v24, v47, v48);

                        v50 = *v38;
                        v49 = v38[1];
                        v27 = v78;

                        v51 = v75;
                        sub_1000214C8(v75, v50, v49);

                        v52 = *sub_100037700();
                        v53 = *sub_100037718();
                        v54 = *sub_100037730();
                        v55 = [objc_allocWithZone(UIColor) initWithRed:v52 green:v53 blue:v54 alpha:*sub_100037748()];
                        (*((swift_isaMask & *v27) + 0x468))(v55);
                      }

                      [v31 layoutSubviews];
                      [v46 layoutSubviews];
                      [v51 layoutSubviews];
                      [objc_msgSend(v27 "systemApertureElementContext")];

                      return swift_unknownObjectRelease();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  (v79)(v6, v80, v2);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v81 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v81);
    _os_log_impl(&_mh_execute_header, v33, v34, "%s cannot get leading, trailing, and minimal views", v35, 0xCu);
    sub_1000114A8(v36);
  }

  return (v15)(v6, v2);
}

void sub_1000214C8(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000301D0();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v29 = v4;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v15 = 136315650;
    *(v15 + 4) = sub_100010E34(0xD00000000000001ELL, 0x800000010004D4A0, &v31);
    *(v15 + 12) = 2080;
    v16 = *(v12 + OBJC_IVAR____TtC14ReplayKitAngel22RPSessionAccessoryView_role);
    v28 = v7;
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = 0x676E696C69617274;
      }

      else
      {
        v17 = 0x6C616D696E696DLL;
      }

      if (v16 == 1)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
      v17 = 0x676E696461656CLL;
    }

    v20 = sub_100010E34(v17, v18, &v31);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v19 = v30;
    *(v15 + 24) = sub_100010E34(v30, a3, &v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s role=%s viewState=%s", v15, 0x20u);
    swift_arrayDestroy();

    (*(v8 + 8))(v10, v28);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v19 = v30;
  }

  v21 = *((swift_isaMask & *v12) + 0x88);

  v22 = v21(v19, a3);
  v23 = (*((swift_isaMask & *v12) + 0x68))(v22);
  if (v23)
  {
    v24 = v23;
    v25 = String._bridgeToObjectiveC()();
    [v24 setState:v25];
  }

  sub_1000287E0(v12, v19, a3);
}

uint64_t sub_10002184C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((swift_isaMask & *v2) + 0x2C8);
  if (v11(v8) == 4)
  {
LABEL_8:

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    v14 = v11(v13);
    if (v14 <= 3 || v14 > 5 || v14 == 4)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v19 = v24;
  v20 = v25;
  v18[2] = v3;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_100029EC8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005D9E0;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v28 + 8))(v6, v4);
  return (*(v26 + 8))(v10, v27);
}

uint64_t sub_100021DBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_1000301D0();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v9;
    v16 = v10;
    v17 = v6;
    v18 = v3;
    v19 = v15;
    v29 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100010E34(0xD000000000000013, 0x800000010004CA70, &v29);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v14, 0xCu);
    sub_1000114A8(v19);
    v3 = v18;
    v6 = v17;
    v10 = v16;
    v9 = v27;

    v1 = v28;
  }

  v20 = *(v3 + 8);
  v20(v8, v2);
  result = sub_10001F664();
  if (result)
  {
    v10(v6, v9, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Stopping camera preview due to app entering background", v24, 2u);
    }

    v25 = (v20)(v6, v2);
    return (*(**(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview) + 528))(v25);
  }

  return result;
}

void sub_100022104(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*((swift_isaMask & *v2) + 0x298))(v7);
  if (v10)
  {
    v31 = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    v12 = objc_opt_self();
    sub_10000B62C(&qword_100068EA8, &qword_100047EA8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100047E60;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v12 fetchAssetsWithLocalIdentifiers:isa options:0];

    v16 = [v15 firstObject];
    if (v16)
    {
      v17 = [objc_allocWithZone(PHImageRequestOptions) init];
      [v17 setVersion:2];
      [v17 setSynchronous:0];
      v18 = [objc_opt_self() defaultManager];
      v19 = swift_allocObject();
      v19[2] = v11;
      v19[3] = v2;
      v19[4] = v31;
      aBlock[4] = sub_10002A034;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100022580;
      aBlock[3] = &unk_10005DA58;
      v20 = _Block_copy(aBlock);
      v21 = v17;

      v22 = v2;
      v23 = v31;

      [v18 requestImageForAsset:v16 targetSize:0 contentMode:v21 options:v20 resultHandler:{0.0, 0.0}];

      _Block_release(v20);
    }

    else
    {

      v29 = v31;
    }
  }

  else
  {
    v24 = sub_1000301D0();
    (*(v6 + 16))(v9, v24, v5);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100010E34(0xD000000000000024, 0x800000010004CA90, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s error loading views", v27, 0xCu);
      sub_1000114A8(v28);
    }

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100022580(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_10002262C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((swift_isaMask & *v0) + 0x298))(v3);
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    sub_1000371E4();

    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 _applicationIconImageForBundleIdentifier:v9 format:0];

    v11 = sub_100037138();
    v12 = *v11;
    v13 = v11[1];
    v14 = *((swift_isaMask & *v0) + 0x5C8);

    v14(v10, v7, v12, v13);
  }

  else
  {
    v16 = sub_1000301D0();
    (*(v2 + 16))(v5, v16, v1);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004CAF0, &v22);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s error loading views", v19, 0xCu);
      sub_1000114A8(v20);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

void sub_10002292C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = String._bridgeToObjectiveC()();
  v10 = [a2 publishedObjectWithName:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v27 = v32;
  v28 = v33;
  if (*(&v33 + 1))
  {
    sub_1000119A0(0, &qword_100068EB8, CALayer_ptr);
    if (swift_dynamicCast())
    {
      v11 = v31;
      if (a1)
      {
        v12 = [a1 CGImage];
        if (v12)
        {
          *&v27 = v12;
          type metadata accessor for CGImage(0);
          a1 = _bridgeAnythingToObjectiveC<A>(_:)();
        }

        else
        {
          a1 = 0;
        }
      }

      [v31 setContents:{a1, v27}];
      swift_unknownObjectRelease();
      [v31 setContentsGravity:kCAGravityResizeAspectFill];
      v13 = [objc_opt_self() clearColor];
      v14 = [v13 CGColor];

      [v31 setBackgroundColor:v14];
      sub_100020D10();
      sub_100037794();

      v15 = String._bridgeToObjectiveC()();

      [a2 setState:v15];

      v16 = objc_opt_self();
      v17 = *sub_100036734();
      v18 = swift_allocObject();
      v18[2] = v4;
      v18[3] = a3;
      v18[4] = a4;
      v29 = sub_10002A128;
      v30 = v18;
      *&v27 = _NSConcreteStackBlock;
      *(&v27 + 1) = 1107296256;
      *&v28 = sub_10000F174;
      *(&v28 + 1) = &unk_10005DAA8;
      v19 = _Block_copy(&v27);
      v20 = v4;

      [v16 animateWithDuration:v19 animations:v17];
      _Block_release(v19);
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v21 = UIAccessibilityAnnouncementNotification;
        type metadata accessor for RPSystemApertureElementViewController(0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v24 = String._bridgeToObjectiveC()();
        v25 = String._bridgeToObjectiveC()();
        v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

        if (!v26)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = String._bridgeToObjectiveC()();
        }

        UIAccessibilityPostNotification(v21, v26);
      }
    }
  }

  else
  {
    sub_100011940(&v27, &qword_100068EB0, &qword_100047EB0);
  }
}

uint64_t sub_100022D48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v72 = a5;
  v77 = a4;
  v66 = a3;
  v76 = a2;
  v79 = type metadata accessor for DispatchTime();
  v75 = *(v79 - 8);
  v8 = __chkstk_darwin(v79);
  v67 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v59 - v10;
  v73 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v69 = *(v78 - 8);
  __chkstk_darwin(v78);
  v68 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for URL();
  v13 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = v14;
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  __chkstk_darwin(v15 - 8);
  v17 = &v59 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000301D0();
  (*(v19 + 16))(v21, v22, v18);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "showBanner(with:identifier:sessionID:)", v25, 2u);
  }

  (*(v19 + 8))(v21, v18);
  v26 = URL.scheme.getter();
  if (v27)
  {
    if (v26 == 0x736F746F6870 && v27 == 0xE600000000000000)
    {
      v62 = 1;
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v62 = 0;
  }

  URL.scheme.getter();
  if (v28)
  {
  }

  (*((swift_isaMask & *v6) + 0x2D0))(7);
  v29 = v13;
  v30 = *(v13 + 16);
  v59 = a1;
  v31 = v65;
  v30(v17, a1, v65);
  (*(v29 + 56))(v17, 0, 1, v31);
  (*((swift_isaMask & *v6) + 0x360))(v17);
  v32 = *((swift_isaMask & *v6) + 0x378);
  v33 = v66;

  v34 = v32(v76, v33);
  v35 = (*((swift_isaMask & *v6) + 0x310))(v34);
  [v35 setHidden:0];

  v36 = (*((swift_isaMask & *v6) + 0x328))();
  [v36 setHidden:0];

  v61 = sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v37 = v33;
  v60 = static OS_dispatch_queue.main.getter();
  v38 = v64;
  v30(v64, v59, v31);
  v39 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v40 = v39 + v63;
  v41 = (v39 + v63) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v77;
  *(v42 + 2) = v6;
  *(v42 + 3) = v43;
  v44 = v72;
  *(v42 + 4) = v72;
  (*(v29 + 32))(&v42[v39], v38, v31);
  v42[v40] = v62 & 1;
  v45 = &v42[v41];
  *(v45 + 1) = v76;
  *(v45 + 2) = v37;
  v84 = sub_10002A288;
  v85 = v42;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_10000F174;
  v83 = &unk_10005DAF8;
  v46 = _Block_copy(&aBlock);

  v47 = v6;
  v48 = v44;

  v49 = v68;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  v66 = sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v65 = sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  v76 = sub_100011AD0();
  v50 = v70;
  v51 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = v60;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);

  v71 = *(v71 + 8);
  (v71)(v50, v51);
  v69 = *(v69 + 8);
  (v69)(v49, v78);
  v64 = static OS_dispatch_queue.main.getter();
  v53 = v67;
  static DispatchTime.now()();
  sub_100036734();
  v54 = v74;
  + infix(_:_:)();
  v75 = *(v75 + 8);
  (v75)(v53, v79);
  v55 = swift_allocObject();
  *(v55 + 16) = v77;
  *(v55 + 24) = v48;
  v84 = sub_10002A358;
  v85 = v55;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_10000F174;
  v83 = &unk_10005DB48;
  v56 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v57 = v64;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v56);

  (v71)(v50, v51);
  (v69)(v49, v78);
  return (v75)(v54, v79);
}

id sub_1000237B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a2;
  v45 = a5;
  v43 = a3;
  v44 = a4;
  v9 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10001F664())
  {
    sub_10001EFF8();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;

  sub_100017164(0xD000000000000011, 0x800000010004D580, v16);
  swift_beginAccess();
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = sub_1000301D0();
    (*(v13 + 16))(v15, v18, v12);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = a7;
      v23 = v22;
      v46 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100010E34(0xD000000000000026, 0x800000010004D5E0, &v46);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s unhide system aperture to show saved to photos banner", v21, 0xCu);
      sub_1000114A8(v23);
      a7 = v40;
    }

    (*(v13 + 8))(v15, v12);
    (*((swift_isaMask & *a1) + 0x1E0))(3);
    v24 = (*((swift_isaMask & *a1) + 0x1F8))(4);
    v25 = (*((swift_isaMask & *a1) + 0x280))(v24);
    v26 = String._bridgeToObjectiveC()();
    [v25 setText:v26];
  }

  v27 = objc_opt_self();
  v28 = *sub_100036740();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v27 scheduledTimerWithTimeInterval:a1 target:"handleCompletionTimeout" selector:v29 userInfo:0 repeats:v28];

  v31 = (*((swift_isaMask & *a1) + 0x4C8))(v30);
  v32 = (*((swift_isaMask & *a1) + 0x2B0))(v31);
  if (v32)
  {
    v33 = v32;
    [v32 setAlpha:*sub_100036714()];
  }

  v34 = (*((swift_isaMask & *a1) + 0x280))();
  [v34 setAlpha:*sub_100036714()];

  (*((swift_isaMask & *a1) + 0x258))(682);
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  (*(v36 + 16))(v11, v44, v35);
  (*(v36 + 56))(v11, 0, 1, v35);
  (*((swift_isaMask & *a1) + 0x498))(v11);
  [objc_msgSend(a1 "systemApertureElementContext")];
  v37 = swift_unknownObjectRelease();
  if ((v45 & 1) != 0 && a7)
  {
    return (*((swift_isaMask & *a1) + 0x5B8))(v41, a7);
  }

  (*((swift_isaMask & *a1) + 0x5C0))(v37);
  return sub_100026A74();
}

void sub_100023E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v42 = sub_10002B924();
  v11 = *((swift_isaMask & **v42) + 0xA0);
  v12 = *v42;
  v13 = v11();
  v15 = v14;

  if (!v15)
  {
LABEL_7:
    v18 = sub_1000301D0();
    v19 = v4;
    (*(v5 + 16))(v8, v18, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "dropping previous session alert request", v22, 2u);
    }

    (*(v5 + 8))(v8, v19);
    return;
  }

  if (v13 == a1 && v15 == a2)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v23 = sub_1000301D0();
  (*(v5 + 16))(v10, v23, v4);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v41 = v4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v43 = v28;
    *v27 = 136315138;
    v29 = v42;
    v30 = *((swift_isaMask & **v42) + 0xA0);
    v31 = *v42;
    v32 = v30();
    v34 = v33;

    if (v34)
    {
      v35 = v32;
    }

    else
    {
      v35 = 1819047246;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE400000000000000;
    }

    v37 = sub_100010E34(v35, v36, &v43);

    *(v27 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, "alert request for session=%s", v27, 0xCu);
    sub_1000114A8(v28);

    (*(v5 + 8))(v10, v41);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    v29 = v42;
  }

  v38 = *((swift_isaMask & **v29) + 0xF0);
  v39 = *v29;
  v38();
}

uint64_t sub_1000243D4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - v14;
  v16 = (*((swift_isaMask & *v0) + 0x2B0))(v13);
  if (v16)
  {
    v17 = v16;
    v34 = v2;
    v18 = sub_1000301D0();
    (*(v9 + 16))(v15, v18, v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "startRecording()", v21, 2u);
    }

    (*(v9 + 8))(v15, v8);
    sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    *(v23 + 24) = v17;
    aBlock[4] = sub_10002A360;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F174;
    aBlock[3] = &unk_10005DB98;
    v24 = _Block_copy(aBlock);
    v25 = v1;
    v26 = v17;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000B62C(&qword_100068D00, &unk_100047DD0);
    sub_100011AD0();
    v27 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v37 + 8))(v4, v27);
    return (*(v35 + 8))(v7, v36);
  }

  else
  {
    v29 = sub_1000301D0();
    (*(v9 + 16))(v12, v29, v8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004CB30, aBlock);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s error loading views", v32, 0xCu);
      sub_1000114A8(v33);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

void sub_100024948(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;

  sub_100017164(0xD000000000000011, 0x800000010004D580, v8);
  swift_beginAccess();
  v9 = *(v8 + 16);

  if (v9 == 1)
  {
    v10 = sub_1000301D0();
    (*(v5 + 16))(v7, v10, v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004CB30, aBlock);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s hide system aperture screen recording element", v13, 0xCu);
      sub_1000114A8(v14);
    }

    (*(v5 + 8))(v7, v4);
    v15 = 1;
    v16 = 1;
  }

  else
  {
    v16 = 4;
    v15 = 3;
  }

  (*((swift_isaMask & *a1) + 0x1E0))(v15);
  (*((swift_isaMask & *a1) + 0x1F8))(v16);
  [objc_msgSend(a1 "systemApertureElementContext")];
  swift_unknownObjectRelease();
  v17 = objc_opt_self();
  v18 = *sub_100036898();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a1;
  aBlock[4] = sub_10002AEF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DFD0;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = a1;

  [v17 animateWithDuration:24 delay:v20 options:0 animations:v18 completion:0.0];
  _Block_release(v20);
}

uint64_t sub_100024D6C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000301D0();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "didTapStopButton()", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_10001FD60();
}

uint64_t sub_100024F18(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_10002A3A8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DBE8;
  v14 = _Block_copy(aBlock);

  v15 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_1000251F0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000301D0();
  (*(v7 + 16))(v9, v10, v6);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100010E34(0xD000000000000015, 0x800000010004D540, &v21);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100010E34(a1, a2, &v21);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
  v14 = sub_100036758();
  if (*v14 == a1 && *(v14 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = 1;
LABEL_7:
    (*((swift_isaMask & *a3) + 0x2D0))(v15);
    return sub_100020D10();
  }

  v17 = sub_100036780();
  if (*v17 == a1 && *(v17 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = 2;
    goto LABEL_7;
  }

  v18 = sub_1000367A8();
  if (*v18 == a1 && *(v18 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = 3;
    goto LABEL_7;
  }

  v19 = sub_1000367D0();
  if (*v19 == a1 && v19[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = 4;
    goto LABEL_7;
  }

  return sub_100020D10();
}

uint64_t sub_100025540(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1000255AC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000301D0();
  (*(v9 + 16))(v11, v12, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v1;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "handleCompletionTimeout()", v15, 2u);
    v1 = v28;
  }

  v16 = (*(v9 + 8))(v11, v8);
  v17 = (*((swift_isaMask & *v1) + 0x4C0))(v16);
  if (!v17)
  {
    aBlock = 0u;
    v32 = 0u;
    return sub_100011940(&aBlock, &qword_100068EB0, &qword_100047EB0);
  }

  v18 = v17;
  v19 = [v17 userInfo];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  aBlock = v35;
  v32 = v36;
  if (!*(&v36 + 1))
  {
    return sub_100011940(&aBlock, &qword_100068EB0, &qword_100047EB0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v21 = v35;
    sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    *(v23 + 24) = v21;
    v33 = sub_10002A3B4;
    v34 = v23;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v32 = sub_10000F174;
    *(&v32 + 1) = &unk_10005DC38;
    v24 = _Block_copy(&aBlock);
    v25 = v1;

    v26 = v29;
    static DispatchQoS.unspecified.getter();
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000B62C(&qword_100068D00, &unk_100047DD0);
    sub_100011AD0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v3 + 8))(v5, v2);
    return (*(v30 + 8))(v26, v6);
  }

  return result;
}

void sub_100025AC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v49[-v12];
  if (((*((swift_isaMask & *a1) + 0x4D8))(v11) & 1) != 0 || (v54 = sub_10002B924(), v14 = *v54, v15 = *((swift_isaMask & **v54) + 0xA0), v55 = a3, v16 = v14, v17 = v15(), v18 = v55, v19 = v17, v21 = v20, v16, !v21))
  {
LABEL_8:
    v24 = sub_1000301D0();
    (*(v7 + 16))(v10, v24, v6);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "dropping previous session finish request", v27, 2u);
    }

    (*(v7 + 8))(v10, v6);
    return;
  }

  if (v19 == a2 && v21 == v18)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v28 = sub_1000301D0();
  (*(v7 + 16))(v13, v28, v6);
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v52 = v33;
    v53 = swift_slowAlloc();
    v56 = v53;
    *v32 = 138412546;
    *(v32 + 4) = v29;
    *v33 = a1;
    *(v32 + 12) = 2080;
    v34 = v54;
    v51 = v30;
    v35 = *v54;
    v36 = swift_isaMask & **v54;
    v50 = v31;
    v37 = *(v36 + 160);
    v38 = v29;
    v39 = v35;
    v40 = v37();
    v42 = v41;

    if (v42)
    {
      v43 = v40;
    }

    else
    {
      v43 = 1819047246;
    }

    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0xE400000000000000;
    }

    v45 = sub_100010E34(v43, v44, &v56);

    *(v32 + 14) = v45;
    v46 = v51;
    _os_log_impl(&_mh_execute_header, v51, v50, "self=%@ finish request for session=%s", v32, 0x16u);
    sub_100011940(v52, &qword_1000697C0, qword_100047CD0);

    sub_1000114A8(v53);

    (*(v7 + 8))(v13, v6);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
    v34 = v54;
  }

  v47 = *((swift_isaMask & **v34) + 0xF8);
  v48 = *v34;
  v47(a2, v55);
}

id sub_100025FD8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchQoS();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000301D0();
  (*(v10 + 16))(v12, v13, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v69 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v68 = v5;
    v19 = v2;
    v20 = v1;
    v21 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100010E34(0x74747542776F6873, 0xED00002928736E6FLL, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v17, 0xCu);
    sub_1000114A8(v21);
    v1 = v20;
    v2 = v19;
    v5 = v68;

    v3 = v69;
  }

  (*(v10 + 8))(v12, v9);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  aBlock[4] = sub_10002B0E0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005E070;
  v24 = _Block_copy(aBlock);
  v25 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v3 + 8))(v5, v2);
  (*(v70 + 8))(v8, v71);
  v26 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v26 notificationOccurred:0];

  v27 = (swift_isaMask & *v25) + 928;
  v28 = *((swift_isaMask & *v25) + 0x3A0);
  v29 = v28();
  v30 = sub_1000368C4();
  [v29 setConstant:*v30];

  result = [v25 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = result;
  v68 = v28;
  v69 = v27;
  [result layoutIfNeeded];

  v33 = objc_opt_self();
  v34 = swift_isaMask & *v25;
  v70 = *(v34 + 0x3D0);
  v71 = v34 + 976;
  (v70)();
  v66 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v67 = v33;
  [v33 deactivateConstraints:isa];

  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100047E70;
  result = [v25 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = result;
  v38 = [result widthAnchor];

  v39 = *((swift_isaMask & *v25) + 0x3B8);
  v40 = v39();
  v41 = [v40 widthAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v36 + 32) = v42;
  result = [v25 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v43 = result;
  v44 = [result heightAnchor];

  v45 = [v44 constraintEqualToConstant:*v30];
  *(v36 + 40) = v45;
  v46 = v39();
  v47 = [v46 heightAnchor];

  v48 = [v47 constraintEqualToConstant:*v30];
  *(v36 + 48) = v48;
  v49 = v39();
  v50 = [v49 widthAnchor];

  v51 = [v50 constraintEqualToConstant:*sub_1000366B0()];
  *(v36 + 56) = v51;
  *(v36 + 64) = v68();
  v52 = (*((swift_isaMask & *v25) + 0x3D8))(v36);
  v53 = (v70)(v52);
  v54 = v53;
  if (v53 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v56 = 0;
    while (1)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v57 = *(v54 + 8 * v56 + 32);
      }

      v59 = v57;
      v60 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      LODWORD(v58) = 1144750080;
      [v57 setPriority:v58];

      ++v56;
      if (v60 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  (v70)(v61);
  v62 = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:v62];

  v63 = (*((swift_isaMask & *v25) + 0x2F8))();
  [v63 setHidden:0];

  v64 = (*((swift_isaMask & *v25) + 0x328))();
  [v64 setEnabled:1];

  v65 = (*((swift_isaMask & *v25) + 0x310))();
  [v65 setEnabled:1];

  [objc_msgSend(v25 "systemApertureElementContext")];
  return swift_unknownObjectRelease();
}

id sub_100026A74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000301D0();
  (*(v10 + 16))(v12, v13, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v69 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v68 = v5;
    v19 = v2;
    v20 = v1;
    v21 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004D480, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v17, 0xCu);
    sub_1000114A8(v21);
    v1 = v20;
    v2 = v19;
    v5 = v68;

    v3 = v69;
  }

  (*(v10 + 8))(v12, v9);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  aBlock[4] = sub_10002B270;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DEE0;
  v24 = _Block_copy(aBlock);
  v25 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v3 + 1))(v5, v2);
  (*(v70 + 8))(v8, v71);
  v26 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v26 notificationOccurred:0];

  v27 = (*((swift_isaMask & *v25) + 0x3A0))();
  v28 = sub_1000368C4();
  [v27 setConstant:*v28];

  v29 = objc_opt_self();
  v30 = *((swift_isaMask & *v25) + 0x3D0);
  v70 = (swift_isaMask & *v25) + 976;
  v71 = v30;
  v30();
  v68 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v69 = v29;
  [v29 deactivateConstraints:isa];

  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100047E30;
  result = [v25 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v34 = result;
  v35 = [result widthAnchor];

  v36 = *((swift_isaMask & *v25) + 0x3B8);
  v37 = v36();
  v38 = [v37 widthAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v32 + 32) = v39;
  result = [v25 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = result;
  v41 = [result heightAnchor];

  v42 = [v41 constraintEqualToConstant:*v28];
  *(v32 + 40) = v42;
  v43 = v36();
  v44 = [v43 heightAnchor];

  v45 = [v44 constraintEqualToConstant:*v28];
  *(v32 + 48) = v45;
  v46 = v36();
  v47 = [v46 widthAnchor];

  v48 = [v47 constraintEqualToConstant:*sub_1000366B0()];
  *(v32 + 56) = v48;
  v49 = (*((swift_isaMask & *v25) + 0x3D8))(v32);
  v67 = v25;
  v50 = v71(v49);
  v51 = v50;
  if (v50 >> 62)
  {
    goto LABEL_17;
  }

  v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &selRef_setElementNeedsUpdate; v52; i = &selRef_setElementNeedsUpdate)
  {
    v54 = 0;
    while (1)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v54 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v55 = *(v51 + 8 * v54 + 32);
      }

      v57 = v55;
      v58 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      LODWORD(v56) = 1144750080;
      [v55 setPriority:v56];

      ++v54;
      i = &selRef_setElementNeedsUpdate;
      if (v58 == v52)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_18:

  v60 = v67;
  v71(v59);
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [v69 activateConstraints:v61];

  v62 = *((swift_isaMask & *v60) + 0x340);
  v63 = v62();
  [v63 setHidden:0];

  v64 = v62();
  [v64 setEnabled:1];

  result = [v60 i[228]];
  if (result)
  {
    v65 = result;
    [result layoutIfNeeded];

    [objc_msgSend(v60 "systemApertureElementContext")];
    return swift_unknownObjectRelease();
  }

LABEL_22:
  __break(1u);
  return result;
}