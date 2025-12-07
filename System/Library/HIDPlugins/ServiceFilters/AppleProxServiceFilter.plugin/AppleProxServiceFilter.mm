id LoggingProx(uint64_t a1)
{
  if (qword_19AA8 != -1)
  {
    sub_A444();
  }

  v2 = qword_19AA0;

  return v2;
}

uint64_t sub_1768(void *a1, unsigned int (*a2)(void), uint64_t (*a3)(uint64_t, unsigned __int8 *, char *), uint64_t (*a4)(void, unsigned __int8 *, unsigned __int8 *))
{
  v4 = a1[1];
  v5 = a1[2];
  if ((v4 - v5) < 2)
  {
    return 0;
  }

  a1[2] = v5 + 2;
  if ((v4 - (v5 + 2)) < 4)
  {
    return 0;
  }

  v8 = *a1 + v5 + 2;
  v9 = v5 + 6;
  a1[2] = v9;
  v10 = *(v8 + 2);
  if (v4 - v9 < v10)
  {
    return 0;
  }

  a1[2] = v9 + v10;
  if (a2)
  {
    if (!a2(a1[3]))
    {
      return 0;
    }
  }

  return sub_1950(a1, a3, a4, 0);
}

uint64_t sub_1950(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned __int8 *, char *), uint64_t (*a3)(void, unsigned __int8 *, unsigned __int8 *), uint64_t (*a4)(void))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 <= v5)
  {
    return 1;
  }

  while (1)
  {
    v10 = (*a1 + v5);
    v11 = *v10;
    if ((v11 & 0x80000000) == 0)
    {
      if (v4 - v5 < 0x12)
      {
        return 0;
      }

      v12 = *v10;
      *(a1 + 16) = v5 + 18;
      if (v12 == 3)
      {
        if (a4 && (a4(*(a1 + 24)) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v4 - (v5 + 18) < 4)
        {
          return 0;
        }

        v19 = v5 + 22;
        *(a1 + 16) = v19;
        v20 = *(v10 + 10);
        if (v4 - v19 < v20)
        {
          return 0;
        }

        *(a1 + 16) = v19 + v20;
        if (v12 == 2)
        {
          if (a3)
          {
            result = a3(*(a1 + 24), v10, v10 + 22);
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_27;
        }

        if (v12 != 1)
        {
          return 0;
        }

        if (a2)
        {
          v17 = *(a1 + 24);
          v18 = v10 + 22;
LABEL_20:
          if ((a2(v17, v10, v18) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_27;
        }
      }

      goto LABEL_27;
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      return 0;
    }

    v14 = v11 & 0x7F;
    if (v14 >= *(a1 + 32))
    {
      return 0;
    }

    v15 = (v13 + 22 * v14);
    v16 = *(v15 + 10);
    if (v4 - v5 <= v16)
    {
      return 0;
    }

    *(a1 + 16) = v5 + v16 + 1;
    if (*v15 == 1)
    {
      if (!a2)
      {
        goto LABEL_27;
      }

      v17 = *(a1 + 24);
      v18 = v10 + 1;
      v10 = v15;
      goto LABEL_20;
    }

    if (a3 && (a3(*(a1 + 24), v15, v10 + 1) & 1) == 0)
    {
      return 0;
    }

LABEL_27:
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v4 <= v5)
    {
      return 1;
    }
  }
}

id SignpostProx(uint64_t a1)
{
  if (qword_19AB8 != -1)
  {
    sub_A458();
  }

  v2 = qword_19AB0;

  return v2;
}

void sub_1BD0(id a1)
{
  v1 = LoggingProx(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Creating shared instance of AppleProxNotificationTTR", v4, 2u);
  }

  v2 = objc_opt_new();
  v3 = qword_19A90;
  qword_19A90 = v2;
}

void sub_1EF0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21D4(uint64_t a1)
{
  v7[0] = kCFUserNotificationAlertHeaderKey;
  v7[1] = kCFUserNotificationAlertMessageKey;
  v8[0] = @"Lock button press detected while or just after device on head with display off";
  v8[1] = @"Please file a radar to add details about reason for button press";
  v7[2] = kCFUserNotificationDefaultButtonTitleKey;
  v7[3] = kCFUserNotificationAlternateButtonTitleKey;
  v8[2] = @"File Radar";
  v8[3] = @"Not Now";
  v7[4] = kCFUserNotificationOtherButtonTitleKey;
  v7[5] = kCFUserNotificationAlertTopMostKey;
  v8[4] = @"Never bother me again";
  v8[5] = &__kCFBooleanTrue;
  v7[6] = SBUserNotificationDontDismissOnUnlock;
  v8[6] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:7];
  error = 0;
  [*(a1 + 32) setNotification:{CFUserNotificationCreate(0, 0.0, 3uLL, &error, v2)}];
  if ([*(a1 + 32) notification])
  {
    [*(a1 + 32) setSource:{CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, objc_msgSend(*(a1 + 32), "notification"), sub_2418, 0)}];
    if ([*(a1 + 32) source])
    {
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, [*(a1 + 32) source], kCFRunLoopCommonModes);
    }

    else
    {
      v5 = LoggingProx(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_A278();
      }

      [*(a1 + 32) releaseNotification];
    }
  }

  else
  {
    v4 = LoggingProx(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_A2B8();
    }
  }
}

void sub_2418(uint64_t a1, uint64_t a2)
{
  v3 = +[AppleProxNotificationTTR sharedInstance];
  [v3 processNotificationResponse:a2];
}

id sub_2544(uint64_t a1)
{
  if ([*(a1 + 32) notification])
  {
    CFUserNotificationCancel([*(a1 + 32) notification]);
  }

  v2 = *(a1 + 32);

  return [v2 releaseNotification];
}

void sub_26F0(uint64_t a1)
{
  [*(a1 + 32) releaseNotification];
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v16 = objc_opt_class();
    v17 = +[NSDate distantFuture];
    [v16 setNotBefore:v17];

    v3 = LoggingProx(v18);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Save no more notifications", v19, 2u);
    }
  }

  else
  {
    if (v2)
    {
      return;
    }

    v3 = objc_opt_new();
    v4 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:@"725296"];
    [v3 addObject:v4];

    v5 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:@"AppleProxSupport"];
    [v3 addObject:v5];

    v6 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:@"iOS"];
    [v3 addObject:v6];

    v7 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Other Bug"];
    [v3 addObject:v7];

    v8 = [NSURLQueryItem queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
    [v3 addObject:v8];

    v9 = [NSURLQueryItem queryItemWithName:@"Title" value:@"Prox TTR - Forced Release"];
    [v3 addObject:v9];

    v10 = [NSURLQueryItem queryItemWithName:@"Description" value:@"Lock button press detected while or just after device on head with display off.\n\nPlease add details about why you pressed lock button twice:\n"];
    [v3 addObject:v10];

    v11 = [NSURLQueryItem queryItemWithName:@"IncludeDevicePrefixInTitle" value:@"1"];
    [v3 addObject:v11];

    v12 = objc_opt_new();
    [v12 setScheme:@"tap-to-radar"];
    [v12 setHost:@"new"];
    v13 = LoggingProx([v12 setQueryItems:v3]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Launching TTR", buf, 2u);
    }

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    v15 = [v12 URL];
    [v14 openURL:v15 configuration:0 completionHandler:0];
  }
}

void sub_2A04(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_2D00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendDayEvent];
}

void sub_4DC0(id a1)
{
  qword_19AA0 = os_log_create("com.apple.AppleProxSupport", "backboard");

  _objc_release_x1();
}

void sub_4E04(id a1)
{
  qword_19AB0 = os_log_create("com.apple.AppleProxSupport", "ProxSignpost");

  _objc_release_x1();
}

void sub_614C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id sub_6978(uint64_t a1, uint64_t a2)
{
  v3 = MGGetBoolAnswer();
  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 loadCalibrationExclave];
  }

  else
  {

    return [v4 loadCalibration];
  }
}

void sub_6AA4(uint64_t a1)
{
  v2 = LoggingProx(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Calling cancel handler", v5, 2u);
  }

  (*(*(*(a1 + 32) + 32) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
}

uint64_t sub_77AC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *(a2 + 18);
  v6 = *(a2 + 20);
  if (v5 == 32794 && v6 >= 0x84)
  {
    *(a1 + 24) = a3;
    return 1;
  }

  if (v5 == 32817 && v6 >= 0x58)
  {
    *(a1 + 32) = a3;
    return 1;
  }

  if (v5 != 32803)
  {
    return 1;
  }

  v7 = LoggingProx(a1);
  v8 = v7;
  if (v6 == 56)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a3;
      v10 = *(a3 + 1);
      v11 = *(a3 + 4);
      v12 = a3[20];
      v13 = *(a3 + 6);
      v14 = *(a3 + 7);
      v15 = *(a3 + 8);
      v16 = *(a3 + 9);
      v17 = *(a3 + 10);
      v18 = *(a3 + 11);
      v19 = a3[48];
      v22[0] = 67111680;
      v22[1] = v9;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      v29 = 2048;
      v30 = v13;
      v31 = 2048;
      v32 = v14;
      v33 = 2048;
      v34 = v15;
      v35 = 2048;
      v36 = v16;
      v37 = 2048;
      v38 = v17;
      v39 = 1024;
      v40 = v18;
      v41 = 1024;
      v42 = v19;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Received prox event #%u (ts:%llu) prox=%f state=%u signalRate=%fnA baseline=%fnA prob=%f habc=%f pocketBaseline=%f cookie=0x%x mode=%u", v22, 0x60u);
    }

    v20 = (a3[20] & 1) << 6;
    *(a1 + 8) = v20;
    if ((a3[20] & 0x32) != 0)
    {
      *(a1 + 8) = ((a3[20] & 2) << 8) & 0xFAFF | ((((a3[20] & 0x10) >> 4) & 1) << 8) & 0xFFFFFBFF | ((((a3[20] & 0x20) >> 5) & 1) << 10) | v20;
    }

    *(a1 + 16) = *(a3 + 8);
    *a1 = *(a3 + 1);
    *(a1 + 12) = a3[48];
    result = 1;
    *(a1 + 20) = 1;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_A7E0();
    }

    return 0;
  }

  return result;
}

void sub_79EC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_7A0C()
{
  v0 = objc_autoreleasePoolPush();
  v14[0] = @"flag";
  v14[1] = @"string";
  v15[0] = &off_15BD8;
  v15[1] = @"OscTrimFailure";
  v1 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16[0] = v1;
  v12[0] = @"flag";
  v12[1] = @"string";
  v13[0] = &off_15BF0;
  v13[1] = @"StuckInBlanking";
  v2 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v16[1] = v2;
  v10[0] = @"flag";
  v10[1] = @"string";
  v11[0] = &off_15C08;
  v11[1] = @"StuckInRanging";
  v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v16[2] = v3;
  v8[0] = @"flag";
  v8[1] = @"string";
  v9[0] = &off_15C20;
  v9[1] = @"StuckInPearlSession";
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v16[3] = v4;
  v6[0] = @"flag";
  v6[1] = @"string";
  v7[0] = &off_15C38;
  v7[1] = @"StuckInVHVSearch";
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v16[4] = v5;
  qword_19AC0 = [NSArray arrayWithObjects:v16 count:5];

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_7DC8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

Swift::Bool __swiftcall AppleProxExclaveClient.loadCalibration(_:)(NSData a1)
{
  v2 = v1;
  v4 = sub_A850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_A870();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_84E8(a1.super.isa);
  v13 = v12[2];
  if (HIDWORD(v13))
  {
    __break(1u);
  }

  else
  {
    v24 = v9;
    v23[0] = v4;
    v23[1] = OBJC_IVAR____TtC22AppleProxServiceFilter22AppleProxExclaveClient_log;
    v14 = sub_A880();
    v15 = sub_AA00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v13;
      _os_log_impl(&dword_0, v14, v15, "Sending raw data to FDR: %u bytes", v16, 8u);
    }

    (*(v5 + 104))(v7, enum case for EXFDRDecodeClient.kExclaveFDRDecodeClientProxExclave(_:), v23[0]);
    v17 = sub_A860();
    (*&stru_68.segname[(swift_isaMask & *v2) + 8])(v17);
    sub_A820();

    v18 = sub_A880();
    v19 = sub_AA00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Calling AppleProxExclave loadCalibration", v20, 2u);
    }

    (*&stru_68.sectname[swift_isaMask & *v2])();
    v21 = sub_92B0();
    (*(v24 + 8))(v11, v8);

    LOBYTE(v12) = v21 & 1;
  }

  return v12;
}

id AppleProxExclaveClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleProxExclaveClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleProxExclaveClient(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_84E8(void *a1)
{
  v2 = sub_AA10();
  v3 = sub_AA20();
  v4 = sub_AA10();
  result = sub_AA20();
  if (v2 < v4 || result < v2)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_AA10();
  result = sub_AA20();
  if (v3 < v6 || result < v3)
  {
    goto LABEL_12;
  }

  v7 = __OFSUB__(v3, v2);
  v8 = v3 - v2;
  if (!v7)
  {
    if (v8)
    {
      v9 = sub_86AC(v8, 0);
      v10 = a1;
      v11 = sub_85C4(v12, v9 + 32, v8);

      if (v11 == v8)
      {
        return v9;
      }

      __break(1u);
    }

    return &_swiftEmptyArrayStorage;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_85C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_AA10();
  v8 = result;
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    while (1)
    {
      v10 = v8 + v9;
      if (v8 + v9 == sub_AA20())
      {
        v8 += v9;
        a3 = v9;
        goto LABEL_15;
      }

      v11 = sub_AA30();
      v12 = sub_AA10();
      result = sub_AA20();
      if (v10 < v12 || v10 >= result)
      {
        break;
      }

      *(a2 + v9) = v11;
      if (a3 - 1 == v9)
      {
        v8 += v9 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_86AC(uint64_t a1, uint64_t a2)
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

  sub_8E50(&qword_19860, &qword_D318);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id _s22AppleProxServiceFilter0aB13ExclaveClientC8conclaveACSgSb_tcfc_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_A8A0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26[1] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v9 = __chkstk_darwin(v8);
  v11 = v26 - v10;
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = OBJC_IVAR____TtC22AppleProxServiceFilter22AppleProxExclaveClient_log;
  sub_A890();
  v15 = *(v5 + 16);
  v29 = v14;
  v15(v13, &v3[v14], v4);
  v16 = sub_A880();
  v17 = sub_AA00();
  v18 = os_log_type_enabled(v16, v17);
  v28 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v16, v17, "Starting conclave...", v19, 2u);
    v4 = v28;
  }

  v27 = *(v5 + 8);
  v27(v13, v4);
  type metadata accessor for AppleProxExclaveService.Service();
  sub_8FE0(&qword_19868, type metadata accessor for AppleProxExclaveService.Service, &unk_D370);
  sub_A9E0();
  *&v3[OBJC_IVAR____TtC22AppleProxServiceFilter22AppleProxExclaveClient_proxExclaveService] = v31;
  sub_A840();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC22AppleProxServiceFilter22AppleProxExclaveClient_fdrDecodeRawDataStoreService] = sub_A830();
  v20 = v28;
  v15(v11, &v3[v29], v28);
  v21 = sub_A880();
  v22 = sub_AA00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "Created Tightbeam clients", v23, 2u);
  }

  v27(v11, v20);
  v24 = type metadata accessor for AppleProxExclaveClient(0);
  v30.receiver = v3;
  v30.super_class = v24;
  return objc_msgSendSuper2(&v30, "init");
}

uint64_t sub_8DE8(uint64_t a1)
{
  v2 = sub_8E50(&qword_19830, &unk_D2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8E50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for AppleProxExclaveClient(uint64_t a1)
{
  result = qword_19AD0;
  if (!qword_19AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8EEC(uint64_t a1, uint64_t a2)
{
  result = sub_A8A0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for TransportError()
{
  if (!qword_19880)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_19880);
    }
  }
}

uint64_t sub_8FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_9034(uint64_t a1)
{
  v2 = sub_A960();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  sub_A9A0();
  swift_allocObject();
  v7 = sub_A990();
  (*(v3 + 8))(a1, v2);
  *(v6 + 16) = v7;
  return v6;
}

uint64_t sub_9158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_A960();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  sub_A9A0();
  swift_allocObject();
  v7 = sub_A990();
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_9270(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_92B0()
{
  v0 = sub_A8F0();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v21 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_A930();
  __chkstk_darwin(v2 - 8);
  v3 = sub_A950();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = v24;
  sub_A970();
  if (v14)
  {
    v15 = v25;
    type metadata accessor for TransportError();
    v17 = v16;
    sub_A0B8(&qword_19870, 255, type metadata accessor for TransportError, &protocol conformance descriptor for tb_error_t);
    swift_allocError();
    *v18 = v15;
  }

  else
  {
    v24 = *(v4 + 32);
    v24(v11, v13, v3);
    sub_A940();
    sub_A910(0x623D531D1AF33F27uLL);
    sub_A920();
    sub_A980();
    v24(v11, v8, v3);
    v20 = v21;
    sub_A8E0();
    v17 = sub_A8B0();
    (*(v22 + 8))(v20, v23);
  }

  return v17 & 1;
}

uint64_t sub_95FC()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_9634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_A960();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  sub_A9A0();
  swift_allocObject();
  v9 = sub_A990();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_9770(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_97D4(uint64_t a1, void *a2)
{
  v4 = sub_A960();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_9770(a2, v8 + 24);
  (*(v5 + 16))(v7, a1, v4);
  sub_8E50(&qword_19888, &qword_D360);
  swift_allocObject();
  *(v8 + 16) = sub_A9D0();

  sub_A9C0();
  sub_9A78(a2);
  (*(v5 + 8))(a1, v4);
  return v8;
}

uint64_t sub_9930(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_A960();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9770(a2, v3 + 24);
  (*(v7 + 16))(v9, a1, v6);
  sub_8E50(&qword_19888, &qword_D360);
  swift_allocObject();
  *(v3 + 16) = sub_A9D0();

  sub_A9C0();
  sub_9A78(a2);
  (*(v7 + 8))(a1, v6);
  return v3;
}

uint64_t sub_9A78(void *a1)
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

uint64_t sub_9AC4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v4 = v3;
  v6 = sub_8E50(&qword_19890, &qword_D368);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = sub_A930();
  v13 = *(v12 - 8);
  v27 = *(v13 + 56);
  v27(v11, 1, 1, v12);
  v30 = a1;
  v14 = sub_A8C0();
  if (v14 == 0x623D531D1AF33F27)
  {
    v15 = v4[6];
    v16 = v4[7];
    sub_9F54(v4 + 3, v15);
    v17 = (*(v16 + 8))(v15, v16);
    v18 = v31;
    sub_A8D0();
    if (v18)
    {
      v19 = v32;
      result = (*(v13 + 48))(v11, 1, v12);
      if (result != 1)
      {
        result = sub_9F98(v11);
      }

      *v29 = v19;
    }

    else
    {
      v27(v9, 0, 1, v12);
      v21 = *(v13 + 48);
      if (v21(v11, 1, v12) != 1)
      {
        sub_9F98(v11);
      }

      sub_A000(v9, v11);
      if (!v21(v11, 1, v12))
      {
        sub_A900(v17 & 1);
      }

      v22 = (v21)(v11, 1, v12);
      v23 = v22;
      if (v22 == 1)
      {
        v24 = v28;
      }

      else
      {
        v24 = v28;
        if (v22)
        {
          sub_9F98(v11);
          v23 = 1;
        }

        else
        {
          sub_A920();
        }
      }

      v25 = sub_A950();
      return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
    }
  }

  else
  {
    v26 = v14;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_AA40(56);
    v36._object = 0x800000000000E290;
    v36._countAndFlagsBits = 0xD000000000000036;
    sub_A9F0(v36);
    v35 = v26;
    v37._countAndFlagsBits = sub_AA60();
    sub_A9F0(v37);

    result = sub_AA50();
    __break(1u);
  }

  return result;
}

uint64_t sub_9E80()
{

  sub_9A78((v0 + 24));
  return v0;
}

uint64_t sub_9EA8()
{

  sub_9A78((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_9EE8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_9AC4(a1, &v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

void *sub_9F54(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_9F98(uint64_t a1)
{
  v2 = sub_8E50(&qword_19890, &qword_D368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A000(uint64_t a1, uint64_t a2)
{
  v4 = sub_8E50(&qword_19890, &qword_D368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A0B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_A330(unsigned __int8 *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = a2;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "handleFaultsReport: Invalid size %zu for %u errors", &v4, 0x12u);
}

void sub_A3BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Send Analytics %@ = %@", &v3, 0x16u);
}

void sub_A46C(void **a1)
{
  v1 = *a1;
  sub_2AA8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_A4F4(void **a1)
{
  v1 = *a1;
  sub_2AA8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_A644(uint64_t a1, char a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "clientNotification %@ added: %d", &v3, 0x12u);
}