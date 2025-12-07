void sub_10059D914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a66);
  _Unwind_Resume(a1);
}

NSDictionary *sub_10059DA64(uint64_t a1)
{
  v2[1] = @"numInGroup";
  v3[0] = @"discard";
  v2[0] = @"groupResult";
  v3[1] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

NSDictionary *sub_10059DAFC(uint64_t a1)
{
  v2[1] = @"numInGroup";
  v3[0] = @"discard:badcb";
  v2[0] = @"groupResult";
  v3[1] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

NSDictionary *sub_10059DB94(uint64_t a1)
{
  v4[0] = @"aps";
  v5[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[1] = @"delta";
  v5[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v4[2] = @"active";
  v2 = [NSString stringWithUTF8String:*(a1 + 32)];
  v4[3] = @"daily";
  v5[2] = v2;
  v5[3] = &off_10254EB70;
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
}

uint64_t sub_10059DC70(_BYTE *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = a1 + 832;
  v28 = a1 + 832;
  (*(*(a1 + 104) + 16))(a1 + 832, a2, a3);
  v29 = 256;
  v7 = _os_activity_create(dword_100000000, "CL: onWiFiManagerBackgroundScanCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerBackgroundScanCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_100063E40(a1);
  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v9 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 31);
    *buf = 134218240;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Got background scan callback, networks, %p, Exit / Entry notification, gfNetworks, %ld", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(buf);
    v16 = *(a1 + 31);
    *v30 = 134218240;
    *&v30[4] = a4;
    v31 = 2048;
    v32 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Got background scan callback, networks, %p, Exit / Entry notification, gfNetworks, %ld", v30, 22);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  CFShow(a4);
  sub_10014E54C(a1 + 60);
  *(a1 + 59) = CFAbsoluteTimeGetCurrent();
  if (a4)
  {
    *buf = 0xBFF0000000000000;
    sub_10014E54C(a1 + 60);
    sub_1002E0A48(a1, a4, buf, a1 + 60, "get");
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 61) - *(a1 + 60)) >> 3);
      *buf = 134217984;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%ld background scan entry results", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v19 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 61) - *(a1 + 60)) >> 3);
      *v30 = 134217984;
      *&v30[4] = v19;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "%ld background scan entry results", v30);
      v21 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v13 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "issue kNotificationBackgroundEntry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      *v30 = 0;
      LODWORD(v26) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "issue kNotificationBackgroundEntry", v30, v26);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    *buf = -256;
    buf[8] = 0;
    v35 = 0;
    memset(v36, 0, sizeof(v36));
    v37 = 0;
    (*(*a1 + 232))(a1, &v36[8], v36);
    *v30 = 8;
    (*(*a1 + 152))(a1, v30, buf, 0, 0xFFFFFFFFLL, 0);
    *v30 = &v36[8];
    sub_1000B96B4(v30);
    if (v35 == 1 && v34 < 0)
    {
      operator delete(*&buf[16]);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "issue kNotificationBackgroundExit", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      *v30 = 0;
      LODWORD(v26) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "issue kNotificationBackgroundExit", v30, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerBackgroundScanCallback(WiFiManagerClientRef, WiFiDeviceClientRef, CFArrayRef)", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    *buf = 9;
    (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
  }

  if (sub_1005983D8(a1, a4))
  {
    a1[246] = 0;
    sub_100597514(a1, 1);
  }

  if (sub_100071CA0())
  {
    sub_10004FD18();
    v30[0] = a4 != 0;
    sub_100043360(buf, "ePNOEnter", v30);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4();
  }

  os_activity_scope_leave(&state);
  return (*(*v6 + 24))(v6);
}

void sub_10059E418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  os_activity_scope_leave(&state);
  sub_1017EC98C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10059E490(uint64_t a1)
{
  v2 = a1 + 832;
  v29 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v30 = 256;
  v3 = _os_activity_create(dword_100000000, "CL: onWiFiManagerRestartCallback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    v38 = 2082;
    v39 = "activity";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWiFiManagerRestartCallback, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018CD6B8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiNotify, WifiManagerRestart", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD6E0(buf);
    LOWORD(v20) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiNotify, WifiManagerRestart", &v20, 2);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerRestartCallback(WiFiManagerClientRef)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  sub_100599BF8(a1, &v27);
  v20 = qword_102637AD0;
  if (byte_102637AD8[23] < 0)
  {
    sub_100007244(&__p, *byte_102637AD8, *&byte_102637AD8[8]);
  }

  else
  {
    __p = *byte_102637AD8;
    v22 = *&byte_102637AD8[16];
  }

  v23 = xmmword_102637AF0;
  v24 = xmmword_102637B00;
  v25 = xmmword_102637B10;
  v26 = qword_102637B20;
  if ((sub_1005954EC(a1, &v20) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Failed to query associated network", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      LOWORD(v31[0]) = 0;
      LODWORD(v19) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Failed to query associated network", v31, v19, v20);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerRestartCallback(WiFiManagerClientRef)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  sub_1005915A8(a1);
  sub_10059EA50(a1);
  if (qword_1025D4620 != -1)
  {
    sub_1018CD58C();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 284);
    v9 = *(a1 + 720);
    *buf = 67240448;
    v35 = v8;
    v36 = 2050;
    v37 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WsbReg, wifirestart, clients, %{public}d, %{public}ld", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD5B4(buf);
    v13 = *(a1 + 284);
    v14 = *(a1 + 720);
    v31[0] = 67240448;
    v31[1] = v13;
    v32 = 2050;
    v33 = v14;
    LODWORD(v19) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WsbReg, wifirestart, clients, %{public}d, %{public}ld", v31, v19);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::onWiFiManagerRestartCallback(WiFiManagerClientRef)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if (*(a1 + 284) >= 1)
  {
    *(a1 + 236) = 0;
    sub_100592C18(a1, 1, 1);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  return (*(*v2 + 24))(v2);
}

void sub_10059E9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  os_activity_scope_leave(&state);
  sub_1017EC98C(&a28);
  _Unwind_Resume(a1);
}

void sub_10059EA50(uint64_t a1)
{
  if (*(a1 + 296) && *(a1 + 304))
  {
    v2 = *(a1 + 536);
    if (v2)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v2);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    }

    v7 = MutableCopy;
    v8 = *(a1 + 544);
    if (v8)
    {
      v35.length = CFArrayGetCount(*(a1 + 544));
      v35.location = 0;
      CFArrayAppendArray(v7, v8, v35);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      Count = CFArrayGetCount(v7);
      v12 = *(a1 + 296);
      v11 = *(a1 + 304);
      *buf = 134218496;
      v30 = Count;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Setting %ld background scan networks, fWifiManager, %p, fDpcSource, %p", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v17 = qword_1025D48A8;
      v18 = CFArrayGetCount(v7);
      v20 = *(a1 + 296);
      v19 = *(a1 + 304);
      v23 = 134218496;
      v24 = v18;
      v25 = 2048;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v17, 2, "Setting %ld background scan networks, fWifiManager, %p, fDpcSource, %p", &v23, 32);
      v22 = v21;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::setBackgroundScanNetworksInternal()", "%s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    if (*(a1 + 304))
    {
      v13 = (*(**(a1 + 848) + 16))(*(a1 + 848), v7);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v14 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 296);
        v15 = *(a1 + 304);
        *buf = 134349312;
        v30 = v15;
        v31 = 2050;
        v32 = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "WifiService, fWifiManager is NULL, %{public}p, fDpcSource, %{public}p", buf, 0x16u);
      }

      v13 = sub_10000A100(121, 0);
      if (v13)
      {
        sub_1018CFA50();
      }
    }

    sub_1005A2114(v13, v7);
    CFRelease(v7);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 296);
      v5 = *(a1 + 304);
      *buf = 134218240;
      v30 = v5;
      v31 = 2048;
      v32 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning avoid setBackgroundScanNetworksInternal, fWifiManager is NULL, %p, fDpcSource, %p, shutdown?", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFB60();
    }
  }
}

uint64_t sub_10059EE74(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v6 = a2;
  v8 = sub_10059F2B4(a1, a2, a3, a4);
  if (*a3 == 12)
  {
    v10 = sub_10001A3E8(v8, v9);
    if (sub_10071A480(v10, v11))
    {
      *buf = *a3;
      v12 = sub_10000608C(a1, buf, 1);
      if (v12 == *(a1 + 284))
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v13 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a4 + 1);
          v15 = *a4;
          v16 = *(a4 + 4);
          v17 = *(a4 + 5);
          *buf = 67241474;
          v49 = v12;
          v50 = 1026;
          v51 = v6;
          v52 = 2082;
          v53 = v14;
          v54 = 1026;
          v55 = v15;
          v56 = 1026;
          v57 = v16;
          v58 = 1026;
          v59 = v17;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@WsbReg, clients, %{public}d, same, idname, %{public}d, %{public}s, rate, %{public}d, active, %{public}d, rollover, %{public}d", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4630 != -1)
          {
            sub_1018CD6B8();
          }

          v18 = *(a4 + 1);
          v19 = *a4;
          v20 = *(a4 + 4);
          v21 = *(a4 + 5);
          v36 = 67241474;
          v37 = v12;
          v38 = 1026;
          v39 = v6;
          v40 = 2082;
          v41 = v18;
          v42 = 1026;
          v43 = v19;
          v44 = 1026;
          v45 = v20;
          v46 = 1026;
          v47 = v21;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbReg, clients, %{public}d, same, idname, %{public}d, %{public}s, rate, %{public}d, active, %{public}d, rollover, %{public}d", &v36, 42);
          v23 = v22;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::registerForNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::RegInfo &)", "%s\n", v22);
          if (v23 != buf)
          {
            free(v23);
          }
        }
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v24 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a4 + 1);
          v26 = *a4;
          v27 = *(a4 + 4);
          v28 = *(a4 + 5);
          *buf = 67241474;
          v49 = v12;
          v50 = 1026;
          v51 = v6;
          v52 = 2082;
          v53 = v25;
          v54 = 1026;
          v55 = v26;
          v56 = 1026;
          v57 = v27;
          v58 = 1026;
          v59 = v28;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "@WsbReg, clients, %{public}d, plus, idname, %{public}d, %{public}s, rate, %{public}d, active, %{public}d, rollover, %{public}d", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4630 != -1)
          {
            sub_1018CD6B8();
          }

          v30 = *(a4 + 1);
          v31 = *a4;
          v32 = *(a4 + 4);
          v33 = *(a4 + 5);
          v36 = 67241474;
          v37 = v12;
          v38 = 1026;
          v39 = v6;
          v40 = 2082;
          v41 = v30;
          v42 = 1026;
          v43 = v31;
          v44 = 1026;
          v45 = v32;
          v46 = 1026;
          v47 = v33;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WsbReg, clients, %{public}d, plus, idname, %{public}d, %{public}s, rate, %{public}d, active, %{public}d, rollover, %{public}d", &v36, 42);
          v35 = v34;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiService::registerForNotification(int, const CLWifiService_Type::Notification &, const CLWifiService_Type::RegInfo &)", "%s\n", v34);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        sub_10059F6DC(a1, *(a4 + 1), v6, 0);
        sub_100592C18(a1, 1, 0);
        *(a1 + 284) = v12;
      }

      sub_10004E764(a1, "reg");
    }
  }

  return 1;
}

uint64_t sub_10059F2B4(uint64_t a1, uint64_t a2, int *a3, _OWORD *a4)
{
  v27 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v5 = a2;
  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v26 = v10;
      v13 = *a3;
      v16 = *(v10 + 48);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 28) >= v13)
        {
          v17 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v13));
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 28))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 64);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 32) >= v13)
        {
          v19 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v13));
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 32))
      {
        v25 = *(v19 + 56);
        *buf = &v27;
        *(sub_1002E3414(v19 + 40, &v27, &unk_101C66300, buf) + 5) = *a4;
        *buf = -256;
        buf[8] = 0;
        v33 = 0;
        memset(v34, 0, sizeof(v34));
        v35 = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1005A4B64(buf);
        }

        v28 = &v34[8];
        sub_1000B96B4(&v28);
        if (v33 == 1 && v32 < 0)
        {
          operator delete(*(__p + 2));
        }

        if (v25)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = a1 + 56;
        v21 = byte_1025D70C0;
        LODWORD(v28) = *a3;
        *buf = &v28;
        *(sub_100024014(a1 + 56, &v28, &unk_101C66300, buf) + 80) = v21;
        LODWORD(v28) = *a3;
        *buf = &v28;
        v22 = sub_100024014(a1 + 56, &v28, &unk_101C66300, buf);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        LODWORD(v28) = *a3;
        *buf = &v28;
        v24 = sub_100024014(v20, &v28, &unk_101C66300, buf);
        *buf = &v27;
        *(sub_1002E3414((v24 + 5), &v27, &unk_101C66300, buf) + 5) = *a4;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410(v26 + 40, buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018CD8DC();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v30 = 1026;
    __p[0] = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018CFC70();
    return 0;
  }

  return result;
}

void sub_10059F6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100318B88(va);
  _Unwind_Resume(a1);
}

void sub_10059F6DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a1;
  v112 = a3;
  if (*(a1 + 688) == 0.0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CEDA0();
    }

    v12 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v4 + 284);
      v14 = *(v4 + 246);
      *buf = 67240448;
      *&buf[4] = v13;
      *&buf[8] = 1026;
      *&buf[10] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "WsbClients, status, holdoff, clients, %{public}d, samplescan, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFD7C(v4);
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(v4 + 688);
    v7 = *(v4 + 696);
    v8 = *(v4 + 720);
    sub_1004C01C8(&v108);
    std::ostream::operator<<();
    sub_10003DD04(&v109, &v106);
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v9 = qword_1025D4638;
    v10 = (Current - v6) / 60.0;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v11 = &v106;
      if (v107 < 0)
      {
        v11 = v106;
      }

      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      v121 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WsbMetric, clients, %{public}s, delta, %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD6E0(buf);
      v61 = &v106;
      if (v107 < 0)
      {
        v61 = v106;
      }

      *v117 = 136446466;
      *&v117[4] = v61;
      *&v117[12] = 2050;
      *&v117[14] = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, clients, %{public}s, delta, %{public}.1f", v117, 22);
      v63 = v62;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v62);
      if (v63 != buf)
      {
        free(v63);
      }
    }

    v99 = _NSConcreteStackBlock;
    v100 = 3321888768;
    v101 = sub_1005A09C4;
    v102 = &unk_102460C48;
    if (SHIBYTE(v107) < 0)
    {
      sub_100007244(&v103, v106, *(&v106 + 1));
    }

    else
    {
      v103 = v106;
      v104 = v107;
    }

    v105 = v10;
    AnalyticsSendEventLazy();
    if (v8 >= 1)
    {
      v75 = v4;
      if ((Current - v7) / 60.0 >= 1.0)
      {
        v15 = *(v4 + 728);
        v16 = "active:off";
        if (v15 == 1)
        {
          v16 = "active:fences";
        }

        if (v15 == 2)
        {
          v17 = "active:fake";
        }

        else
        {
          v17 = v16;
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v18 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = v17;
          *&buf[12] = 2050;
          v121 = (Current - v7) / 60.0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v117 = 136446466;
          *&v117[4] = v17;
          *&v117[12] = 2050;
          *&v117[14] = (Current - v7) / 60.0;
          LODWORD(v72) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", v117, v72);
          v65 = v64;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v64);
          if (v65 != buf)
          {
            free(v65);
          }
        }

        v93 = _NSConcreteStackBlock;
        v94 = 3221225472;
        v95 = sub_1005A0AB8;
        v96 = &unk_102451C38;
        v97 = v17;
        v98 = (Current - v7) / 60.0;
        AnalyticsSendEventLazy();
      }

      if (v10 >= 1.0)
      {
        v22 = *(v4 + 732);
        v23 = "rollover:off";
        if (v22 == 1)
        {
          v23 = "rollover:partial";
        }

        if (v22 == 2)
        {
          v24 = "rollover:all";
        }

        else
        {
          v24 = v23;
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v25 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = v24;
          *&buf[12] = 2050;
          v121 = v10;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v117 = 136446466;
          *&v117[4] = v24;
          *&v117[12] = 2050;
          *&v117[14] = v10;
          LODWORD(v72) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", v117, v72);
          v67 = v66;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v66);
          if (v67 != buf)
          {
            free(v67);
          }
        }

        v87 = _NSConcreteStackBlock;
        v88 = 3221225472;
        v89 = sub_1005A0B78;
        v90 = &unk_102451C38;
        v91 = v24;
        v92 = v10;
        AnalyticsSendEventLazy();
        if (*(v4 + 736))
        {
          v26 = "profile:dynamic";
        }

        else
        {
          v26 = "profile:standard";
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v27 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = v26;
          *&buf[12] = 2050;
          v121 = v10;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v117 = 136446466;
          *&v117[4] = v26;
          *&v117[12] = 2050;
          *&v117[14] = v10;
          LODWORD(v72) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", v117, v72);
          v69 = v68;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v68);
          if (v69 != buf)
          {
            free(v69);
          }
        }

        v81 = _NSConcreteStackBlock;
        v82 = 3221225472;
        v83 = sub_1005A0C38;
        v84 = &unk_102451C38;
        v85 = v26;
        v86 = v10;
        AnalyticsSendEventLazy();
        v28 = *(v4 + 704);
        v29 = (v4 + 712);
        if (v28 != (v4 + 712))
        {
          do
          {
            sub_1004C01C8(v117);
            v32 = sub_100038730(v117, "client:", 7);
            v33 = strlen(v28[5]);
            sub_100038730(v32, v28[5], v33);
            sub_10003DD04(&v117[8], v79);
            v4 = v75;
            if (qword_1025D4630 != -1)
            {
              sub_1018CD6B8();
            }

            v34 = qword_1025D4638;
            if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
            {
              v35 = v79;
              if (v80 < 0)
              {
                v35 = v79[0];
              }

              *buf = 136446466;
              *&buf[4] = v35;
              *&buf[12] = 2050;
              v121 = v10;
              _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018CD6E0(buf);
              v39 = v79;
              if (v80 < 0)
              {
                v39 = v79[0];
              }

              v113 = 136446466;
              v114 = v39;
              v115 = 2050;
              v116 = v10;
              LODWORD(v72) = 22;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, regmode, %{public}s, duration, %{public}.1f", &v113, v72);
              v41 = v40;
              sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v40);
              if (v41 != buf)
              {
                free(v41);
              }
            }

            if (SHIBYTE(v80) < 0)
            {
              sub_100007244(&__p, v79[0], v79[1]);
            }

            else
            {
              __p = *v79;
              v77 = v80;
            }

            v78 = v10;
            AnalyticsSendEventLazy();
            if (SHIBYTE(v77) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v80) < 0)
            {
              operator delete(v79[0]);
            }

            *v117 = v30;
            *&v117[*(v30 - 24)] = v31;
            if (v119 < 0)
            {
              operator delete(v118);
            }

            std::locale::~locale(&v117[16]);
            std::ostream::~ostream();
            std::ios::~ios();
            v36 = v28[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v28[2];
                v38 = *v37 == v28;
                v28 = v37;
              }

              while (!v38);
            }

            v28 = v37;
          }

          while (v37 != v29);
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v42 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = v10;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, total, duration, %{public}.1f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v117 = 134349056;
          *&v117[4] = v10;
          LODWORD(v72) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, regmode, total, duration, %{public}.1f", v117, v72);
          v71 = v70;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v70);
          if (v71 != buf)
          {
            free(v71);
          }

          v4 = v75;
        }

        AnalyticsSendEventLazy();
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018CD6B8();
        }

        v19 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WsbMetric, regmode, subminute", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018CD6E0(buf);
          *v117 = 0;
          LODWORD(v72) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "WsbMetric, regmode, subminute", v117, v72);
          v21 = v20;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::wsbReportClientMetrics(const char *, int, BOOL)", "%s\n", v20);
          if (v21 != buf)
          {
            free(v21);
          }
        }
      }
    }

    *(v4 + 688) = Current;
    *(v4 + 696) = Current;
    if (SHIBYTE(v104) < 0)
    {
      operator delete(v103);
    }

    if (SHIBYTE(v107) < 0)
    {
      operator delete(v106);
    }

    if (v111 < 0)
    {
      operator delete(v110[7].__locale_);
    }

    std::locale::~locale(v110);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (a4)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018CD6B8();
    }

    v43 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(v4 + 284);
      v45 = *(v4 + 246);
      *buf = 67240448;
      *&buf[4] = v44;
      *&buf[8] = 1026;
      *&buf[10] = v45;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "WsbClients, status, reportonly, clients, %{public}d, dummyscan, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CFE98(v4);
    }
  }

  else
  {
    v46 = *(v4 + 64);
    if (!v46)
    {
      goto LABEL_133;
    }

    v47 = v4 + 64;
    do
    {
      if (*(v46 + 32) >= 12)
      {
        v47 = v46;
      }

      v46 = *(v46 + 8 * (*(v46 + 32) < 12));
    }

    while (v46);
    if (v47 != v4 + 64 && *(v47 + 32) <= 12 && (v48 = *(v47 + 56)) != 0)
    {
      v49 = *(v47 + 40);
      v50 = (v47 + 48);
      if (v49 == (v47 + 48))
      {
        v60 = 0;
        *(v4 + 732) = 0;
      }

      else
      {
        v51 = 0;
        v52 = 0;
        v53 = *(v4 + 736);
        do
        {
          v54 = v49[1];
          v55 = v49;
          if (v54)
          {
            do
            {
              v56 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v56 = v55[2];
              v38 = *v56 == v55;
              v55 = v56;
            }

            while (!v38);
          }

          v51 += *(v49 + 45);
          v57 = *(v49 + 44) | v52 & 1;
          v52 = *(v49 + 44) & 1 | v52 & 1;
          v53 |= *(v49 + 10) < 3600;
          v49 = v56;
        }

        while (v56 != v50);
        *(v4 + 736) = v53;
        if (v48 == v51)
        {
          v58 = 2;
        }

        else
        {
          v58 = 1;
        }

        if (v51)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        *(v4 + 732) = v59;
        if (v57)
        {
          if (*(v4 + 246))
          {
            v60 = 2;
          }

          else
          {
            v60 = 1;
          }
        }

        else
        {
          v60 = 0;
        }
      }

      *(v4 + 728) = v60;
    }

    else
    {
LABEL_133:
      sub_1003C93BC(v4 + 704, *(v4 + 712));
      *(v4 + 704) = v4 + 712;
      *(v4 + 712) = 0u;
      *(v4 + 728) = 0;
      *(v4 + 736) = 0;
    }

    if (a2)
    {
      *buf = &v112;
      sub_1005A4D14(v4 + 704, &v112, &unk_101C66300, buf)[5] = a2;
    }

    else
    {
      sub_10011753C(v4 + 704, &v112);
    }
  }
}

void sub_1005A08D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

NSDictionary *sub_1005A09C4(uint64_t a1)
{
  v4[0] = @"clients";
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  v4[1] = @"duration";
  v5[0] = [NSString stringWithUTF8String:v2];
  v5[1] = [NSNumber numberWithDouble:*(a1 + 56)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

_BYTE *sub_1005A0A78(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_1005A0AA4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

NSDictionary *sub_1005A0AB8(uint64_t a1)
{
  v4[0] = @"active";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_1005A0B78(uint64_t a1)
{
  v4[0] = @"rollover";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_1005A0C38(uint64_t a1)
{
  v4[0] = @"profile";
  v3[0] = @"mode";
  v3[1] = @"submode";
  v4[1] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[2] = @"duration";
  v4[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_1005A0CF8(uint64_t a1)
{
  v5[0] = @"client";
  v4[0] = @"mode";
  v4[1] = @"submode";
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  v5[1] = [NSString stringWithUTF8String:v2];
  v4[2] = @"duration";
  v5[2] = [NSNumber numberWithDouble:*(a1 + 56)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

NSDictionary *sub_1005A0DC4(uint64_t a1)
{
  v2[0] = @"mode";
  v2[1] = @"submode";
  v3[0] = @"total";
  v3[1] = @"total";
  v2[2] = @"duration";
  v3[2] = [NSNumber numberWithDouble:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:3];
}

uint64_t sub_1005A0E68(void *a1, uint64_t a2)
{
  v4 = a1 + 104;
  v15 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v16 = 256;
  if (!a1[39] || !a1[38])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(theArray[0]) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning no device / manager", theArray, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(theArray);
      v14 = 0;
      _os_log_send_and_compose_impl(2, 0, theArray, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning no device / manager", &v14, 2);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::getHostedNetwork(CLWifiService_Type::AccessPoint &) const", "%s\n", v12);
      if (v13 != theArray)
      {
        free(v13);
      }
    }

    goto LABEL_15;
  }

  theArray[0] = 0;
  if (WiFiDeviceClientCopyHostedNetworks())
  {
    v5 = 1;
  }

  else
  {
    v5 = theArray[0] == 0;
  }

  if (v5)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (CFArrayGetCount(0) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0), v7 = CFGetTypeID(ValueAtIndex), TypeID = WiFiNetworkGetTypeID(), v7 == TypeID))
  {
    v9 = sub_1002DEC54(TypeID, ValueAtIndex, a2, 1);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(theArray[0]);
LABEL_16:
  (*(*v4 + 24))(v4);
  return v9;
}

void sub_1005A10B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A10F4()
{
  v4 = 0;
  sub_10001CAF4(&v2);
  v0 = sub_10005BBE4(v2, "WifiScanIterations", &v4);
  if (v3)
  {
    sub_100008080(v3);
  }

  if (v0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

void sub_1005A1158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A1170()
{
  v4 = 0;
  sub_10001CAF4(&v2);
  v0 = sub_10005BBE4(v2, "WifiScanDwellTime", &v4);
  if (v3)
  {
    sub_100008080(v3);
  }

  if (v0)
  {
    return v4;
  }

  else
  {
    return 110;
  }
}

void sub_1005A11D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

__CFDictionary *sub_1005A11F0(uint64_t a1, int a2, int a3, int a4, int **a5, int **a6, uint64_t a7, int a8, char a9)
{
  v41 = a3;
  v42 = a2;
  v39 = a7;
  valuePtr = a4;
  v38 = a8;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v41);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v39);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v42);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F784);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v38);
  v17 = v16;
  if (v11)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v13 == 0 || v14 == 0 || v15 == 0 || v16 == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350336;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      *&buf[22] = 2050;
      *&buf[24] = v13;
      *v54 = 2050;
      *&v54[2] = v14;
      *&v54[10] = 2050;
      *&v54[12] = v15;
      *&v54[20] = 2050;
      *&v54[22] = v17;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v43 = 134350336;
      *v44 = v11;
      *&v44[8] = 2050;
      v45 = v12;
      *v46 = 2050;
      *&v46[2] = v13;
      v47 = 2050;
      v48 = v14;
      v49 = 2050;
      v50 = v15;
      v51 = 2050;
      v52 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", &v43, 62);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 0, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = const int *]", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    Mutable = 0;
  }

  else
  {
    v34 = a5;
    v35 = a6;
    *buf = kCFBooleanFalse;
    *&buf[8] = kCFBooleanTrue;
    *&buf[16] = v11;
    *&buf[24] = v12;
    *v54 = v13;
    *&v54[8] = v14;
    if (a9)
    {
      v25 = kCFBooleanTrue;
    }

    else
    {
      v25 = kCFBooleanFalse;
    }

    *&v54[16] = v16;
    *&v54[24] = v25;
    v55 = kCFBooleanFalse;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    for (i = 0; i != 9; ++i)
    {
      CFDictionarySetValue(Mutable, off_102460F28[i], *&buf[i * 8]);
    }

    if (*a5 != *v35)
    {
      sub_1005A4DE8(a1, a5, v35, v15, Mutable);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v27 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v42;
      *&buf[8] = 1024;
      *&buf[10] = v41;
      *&buf[14] = 1024;
      *&buf[16] = valuePtr;
      *&buf[20] = 2048;
      *&buf[22] = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v43 = 67109888;
      *v44 = v42;
      *&v44[4] = 1024;
      *&v44[6] = v41;
      LOWORD(v45) = 1024;
      *(&v45 + 2) = valuePtr;
      HIWORD(v45) = 2048;
      *v46 = a7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", &v43, 30, v33, v34);
      v32 = v31;
      sub_100152C7C("Generic", 1, 0, 2, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = const int *]", "%s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  return Mutable;
}

__CFDictionary *sub_1005A171C(uint64_t a1, int a2, int a3, int a4, int **a5, int **a6, uint64_t a7, int a8, char a9)
{
  v41 = a3;
  v42 = a2;
  v39 = a7;
  valuePtr = a4;
  v38 = a8;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v41);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v39);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v42);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F788);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v38);
  v17 = v16;
  if (v11)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v13 == 0 || v14 == 0 || v15 == 0 || v16 == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350336;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      *&buf[22] = 2050;
      *&buf[24] = v13;
      *v54 = 2050;
      *&v54[2] = v14;
      *&v54[10] = 2050;
      *&v54[12] = v15;
      *&v54[20] = 2050;
      *&v54[22] = v17;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v43 = 134350336;
      *v44 = v11;
      *&v44[8] = 2050;
      v45 = v12;
      *v46 = 2050;
      *&v46[2] = v13;
      v47 = 2050;
      v48 = v14;
      v49 = 2050;
      v50 = v15;
      v51 = 2050;
      v52 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", &v43, 62);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 0, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = int *]", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    Mutable = 0;
  }

  else
  {
    v34 = a5;
    v35 = a6;
    *buf = kCFBooleanFalse;
    *&buf[8] = kCFBooleanTrue;
    *&buf[16] = v11;
    *&buf[24] = v12;
    *v54 = v13;
    *&v54[8] = v14;
    if (a9)
    {
      v25 = kCFBooleanTrue;
    }

    else
    {
      v25 = kCFBooleanFalse;
    }

    *&v54[16] = v16;
    *&v54[24] = v25;
    v55 = kCFBooleanFalse;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    for (i = 0; i != 9; ++i)
    {
      CFDictionarySetValue(Mutable, off_102460F28[i], *&buf[i * 8]);
    }

    if (*a5 != *v35)
    {
      sub_1005A50CC(a1, a5, v35, v15, Mutable);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v27 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v42;
      *&buf[8] = 1024;
      *&buf[10] = v41;
      *&buf[14] = 1024;
      *&buf[16] = valuePtr;
      *&buf[20] = 2048;
      *&buf[22] = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v43 = 67109888;
      *v44 = v42;
      *&v44[4] = 1024;
      *&v44[6] = v41;
      LOWORD(v45) = 1024;
      *(&v45 + 2) = valuePtr;
      HIWORD(v45) = 2048;
      *v46 = a7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", &v43, 30, v33, v34);
      v32 = v31;
      sub_100152C7C("Generic", 1, 0, 2, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = int *]", "%s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  return Mutable;
}

uint64_t sub_1005A1C48(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1 + 104;
  v23 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  v24 = 256;
  v7 = a1[60];
  v8 = a1[61];
  if (v7 != v8)
  {
    v9 = (v7 + 8);
    do
    {
      v10 = v9 - 8;
      v16 = *(v9 - 1);
      if (*(v9 + 23) < 0)
      {
        sub_100007244(&__p, *v9, *(v9 + 1));
      }

      else
      {
        v11 = *v9;
        v18 = *(v9 + 2);
        __p = v11;
      }

      v12 = *(v9 + 24);
      v13 = *(v9 + 40);
      v14 = *(v9 + 56);
      v22 = *(v9 + 9);
      v20 = v13;
      v21 = v14;
      v19 = v12;
      sub_1002E1AB4(a2, &v16);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p);
      }

      v9 = (v9 + 88);
    }

    while (v10 + 88 != v8);
  }

  *a3 = a1[59];
  return (*(a1[104] + 24))(v6);
}

uint64_t sub_1005A1DB4(void *a1, uint64_t *a2, void *a3)
{
  v6 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  if (a1 + 64 != a2)
  {
    sub_100288978(a2, a1[64], a1[65], 0x2E8BA2E8BA2E8BA3 * ((a1[65] - a1[64]) >> 3));
  }

  *a3 = a1[63];
  return (*(a1[104] + 24))(v6);
}

void sub_1005A1E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A1EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    sub_100007244(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v14 = *(a5 + 16);
  }

  LOBYTE(__p[0]) = 0;
  v12 = 0;
  v9 = (*(*a1 + 256))(a1, a2, a3, 0, a4, __dst, __p);
  if (v12 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return v9;
}

void sub_1005A1F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12 == 1)
  {
    sub_1018CD5F8(&a9);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A1FBC(uint64_t a1, uint64_t *a2, CFTypeRef *a3, int a4)
{
  result = CFArrayCreateMutable(kCFAllocatorDefault, 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3), &kCFTypeArrayCallBacks);
  *a3 = result;
  if (result)
  {
    v8 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
      return 1;
    }

    else
    {
      v10 = result;
      while (1)
      {
        value = 0;
        if (!sub_1005A2518(result, v8, &value, a4))
        {
          break;
        }

        v11 = value;
        if (!value)
        {
          break;
        }

        CFArrayAppendValue(v10, value);
        CFRelease(v11);
        v8 += 88;
        if (v8 == v9)
        {
          return 1;
        }
      }

      if (qword_1025D4620 != -1)
      {
        sub_1018CD624();
      }

      v12 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "WifiService, create background network failed", v13, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D01AC();
      }

      CFRelease(*a3);
      result = 0;
      *a3 = 0;
    }
  }

  return result;
}

void sub_1005A2114(uint64_t a1, void *a2)
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:14];
  if ([a2 count])
  {
    v4 = 0;
    v5 = 0;
    v14 = 67109120;
    do
    {
      [a2 objectAtIndexedSubscript:v4];
      IntProperty = WiFiNetworkGetIntProperty();
      v7 = IntProperty;
      if ((IntProperty - 1) > 0xC)
      {
        v5 |= IntProperty > 14;
      }

      else
      {
        [(NSMutableDictionary *)v3 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], [NSNumber numberWithInt:IntProperty]];
      }

      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v21 = v7;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "gfmetrics, channel, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D0290(&v28, v7, v29);
      }

      ++v4;
    }

    while ([a2 count] > v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = [-[NSMutableDictionary allKeys](v3 "allKeys")];
  v10 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:&off_10254EB70]&& [(NSMutableDictionary *)v3 objectForKeyedSubscript:&off_10254EB88]&& [(NSMutableDictionary *)v3 objectForKeyedSubscript:&off_10254EBA0]!= 0;
  if ((v9 > 0) | v5 & 1)
  {
    v26[0] = @"Channels";
    v27[0] = [NSNumber numberWithInt:v9];
    v26[1] = @"1_6_11";
    v27[1] = [NSNumber numberWithBool:v10];
    v26[2] = @"Non24GHz";
    v27[2] = [NSNumber numberWithBool:v5 & 1];
    [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    AnalyticsSendEvent();
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v5 & 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "gfmetrics, Channels, %d, 1_6_11, %d, Non24GHz, %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v15[0] = 67109632;
      v15[1] = v9;
      v16 = 1024;
      v17 = v10;
      v18 = 1024;
      v19 = v5 & 1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "gfmetrics, Channels, %d, 1_6_11, %d, Non24GHz, %d", v15, 20, v14);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::collectChannelMetrics(NSArray *)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

BOOL sub_1005A2518(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  sub_10004FD18();
  v23.__r_.__value_.__r.__words[0] = *a2;
  sub_1000ECD9C(__p);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0].__r_.__value_.__r.__words[0];
  }

  sub_1002DC480(v21, @"BSSID", v7);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if ((*(a2 + 40) & 0x80000000) == 0)
  {
    LODWORD(__p[0].__r_.__value_.__l.__data_) = *(a2 + 40);
    sub_1000F2D48(v21, @"CHANNEL", __p);
  }

  __p[0].__r_.__value_.__s.__data_[0] = 1;
  if (a4)
  {
    sub_1000434C8(v21, @"ENTRY_NETWORK", __p);
  }

  else
  {
    sub_1000434C8(v21, @"EXIT_NETWORK", __p);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v20.__r_.__value_.__r.__words[0] = *a2;
    sub_1000ECD9C(&v23);
    v9 = (v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v23 : v23.__r_.__value_.__r.__words[0];
    v10 = *(a2 + 40);
    LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315650;
    *(__p[0].__r_.__value_.__r.__words + 4) = v9;
    WORD2(__p[0].__r_.__value_.__r.__words[1]) = 1024;
    *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v10;
    WORD1(__p[0].__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(__p[0].__r_.__value_.__r.__words[2]) = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "network mac, %s, channel, %d, entry, %d", __p, 0x18u);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(__p);
    v14 = qword_1025D48A8;
    v19 = *a2;
    sub_1000ECD9C(&v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v20;
    }

    else
    {
      v15 = v20.__r_.__value_.__r.__words[0];
    }

    v16 = *(a2 + 40);
    LODWORD(v23.__r_.__value_.__l.__data_) = 136315650;
    *(v23.__r_.__value_.__r.__words + 4) = v15;
    WORD2(v23.__r_.__value_.__r.__words[1]) = 1024;
    *(&v23.__r_.__value_.__r.__words[1] + 6) = v16;
    WORD1(v23.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(v23.__r_.__value_.__r.__words[2]) = a4;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v14, 2, "network mac, %s, channel, %d, entry, %d", &v23, 24, v19);
    v18 = v17;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::createBackgroundNetwork(const CLWifiService_Type::AccessPoint &, WiFiNetworkRef &, BOOL)", "%s\n", v18);
    if (v18 != __p)
    {
      free(v18);
    }
  }

  sub_10007005C(v21);
  v11 = WiFiNetworkCreate();
  *a3 = v11;
  v12 = v11 != 0;
  sub_100005DA4();
  return v12;
}

void sub_1005A2874(uint64_t a1, int **a2, int **a3, __CFDictionary *a4)
{
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F78C);
  if (v8)
  {
    v9 = v8;
    sub_1005A5584(a1, a2, a3, v8, a4);

    CFRelease(v9);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v11 = 134349056;
      v12 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "setScanOptionsChannels could not create scan params flag %{public}p", &v11, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D03A8();
    }
  }
}

__CFDictionary *sub_1005A29D8(uint64_t a1, int a2, int a3, int a4, int **a5, int **a6, uint64_t a7, int a8, char a9)
{
  v41 = a3;
  v42 = a2;
  v39 = a7;
  valuePtr = a4;
  v38 = a8;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v41);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v39);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v42);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F790);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v38);
  v17 = v16;
  if (v11)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v13 == 0 || v14 == 0 || v15 == 0 || v16 == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350336;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      *&buf[22] = 2050;
      *&buf[24] = v13;
      *v54 = 2050;
      *&v54[2] = v14;
      *&v54[10] = 2050;
      *&v54[12] = v15;
      *&v54[20] = 2050;
      *&v54[22] = v17;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v43 = 134350336;
      *v44 = v11;
      *&v44[8] = 2050;
      v45 = v12;
      *v46 = 2050;
      *&v46[2] = v13;
      v47 = 2050;
      v48 = v14;
      v49 = 2050;
      v50 = v15;
      v51 = 2050;
      v52 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", &v43, 62);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 0, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = std::__wrap_iter<const int *>]", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    Mutable = 0;
  }

  else
  {
    v34 = a5;
    v35 = a6;
    *buf = kCFBooleanFalse;
    *&buf[8] = kCFBooleanTrue;
    *&buf[16] = v11;
    *&buf[24] = v12;
    *v54 = v13;
    *&v54[8] = v14;
    if (a9)
    {
      v25 = kCFBooleanTrue;
    }

    else
    {
      v25 = kCFBooleanFalse;
    }

    *&v54[16] = v16;
    *&v54[24] = v25;
    v55 = kCFBooleanFalse;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    for (i = 0; i != 9; ++i)
    {
      CFDictionarySetValue(Mutable, off_102460F28[i], *&buf[i * 8]);
    }

    if (*a5 != *v35)
    {
      sub_1005A5868(a1, a5, v35, v15, Mutable);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v27 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v42;
      *&buf[8] = 1024;
      *&buf[10] = v41;
      *&buf[14] = 1024;
      *&buf[16] = valuePtr;
      *&buf[20] = 2048;
      *&buf[22] = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v43 = 67109888;
      *v44 = v42;
      *&v44[4] = 1024;
      *&v44[6] = v41;
      LOWORD(v45) = 1024;
      *(&v45 + 2) = valuePtr;
      HIWORD(v45) = 2048;
      *v46 = a7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", &v43, 30, v33, v34);
      v32 = v31;
      sub_100152C7C("Generic", 1, 0, 2, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = std::__wrap_iter<const int *>]", "%s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  return Mutable;
}

uint64_t sub_1005A2F04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = v1 + 104;
  (*(v1[104] + 16))(v1 + 104);
  v5 = 256;
  v3 = 4;
  (*(*v1 + 144))(v1, &v3, 0, 0xFFFFFFFFLL);
  return (*(v1[104] + 24))(v1 + 104);
}

void sub_1005A2FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A2FF0(void *a1, int a2)
{
  v4 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  if (a1[38] && a1[37])
  {
    WiFiManagerClientQuiesceWiFi();
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v11 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "IMD: doQuiesceWifi, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "IMD: doQuiesceWifi, %d", v9);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::doQuiesceWifi(BOOL)", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005A31E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A3214@<X0>(void *a2@<X8>)
{
  sub_10003848C(v12);
  sub_100038730(&v13, "scanStats, numOfScan, S1, ", 26);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ", S2, ", 6);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ", 5GHz S1, ", 11);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, ", Fast, ", 8);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, ", Cached, ", 10);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, ", numOfScanErrors, ", 19);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, ", numOfScanBusies, ", 19);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, ", numOfReceivedScans, ", 22);
  std::ostream::operator<<();
  sub_10003DD04(&v14, a2);
  v13 = v10;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1005A345C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1005A354C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1005A3588(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_1005A5B4C(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

BOOL sub_1005A36F8(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018CD8DC();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018D05A8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005A388C(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3)
  {
    return 0;
  }

  if (v7 < *(v8 + 32))
  {
    return 0;
  }

  v9 = *(v8 + 64);
  if (!v9)
  {
    return 0;
  }

  *a3 = *v9;
  sub_1000F8F80(a3 + 8, v9 + 8);
  *(a3 + 104) = *(v9 + 104);
  if (v9 != a3)
  {
    sub_100288978((a3 + 112), *(v9 + 112), *(v9 + 120), 0x2E8BA2E8BA2E8BA3 * ((*(v9 + 120) - *(v9 + 112)) >> 3));
  }

  *(a3 + 136) = *(v9 + 136);
  return 1;
}

void sub_1005A39F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A3A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -256;
  v5 = 0;
  v8 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 152))(a1, a2, &v4, a3, a4, 0);
  v11 = v9 + 1;
  sub_1000B96B4(&v11);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_1005A3AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100318B88(va);
  _Unwind_Resume(a1);
}

void sub_1005A3AC0(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018CD8DC();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D07CC(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018CD8DC();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D06AC(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1002E9770();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1002E9770();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLWifiService_Type::Notification, CLWifiService_Type::NotificationData, char, CLWifiService_Type::RegInfo>::listClients() [Notification_T = CLWifiService_Type::Notification, NotificationData_T = CLWifiService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLWifiService_Type::RegInfo]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

uint64_t sub_1005A3F9C(uint64_t *a1, uint64_t *a2, __int128 *a3, int *a4, int *a5, int *a6, uint64_t *a7, uint64_t *a8, char *a9, char *a10, int *a11)
{
  v11 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v12 = v11 + 1;
  if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v12)
  {
    v12 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v15 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v15 = v12;
  }

  v25 = a1;
  if (v15)
  {
    sub_10014E350(a1, v15);
  }

  v22 = 0;
  v23 = 88 * v11;
  v24 = (88 * v11);
  sub_1005A4144(88 * v11, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *&v24 = v24 + 88;
  v16 = a1[1];
  v17 = v23 + *a1 - v16;
  sub_10014E3E4(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_10014E3AC(&v22);
  return v21;
}

void sub_1005A4130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10014E3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A4144(uint64_t a1, uint64_t *a2, __int128 *a3, int *a4, int *a5, int *a6, uint64_t *a7, uint64_t *a8, char *a9, char *a10, int *a11)
{
  v17 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(&v27, *a3, *(a3 + 1));
  }

  else
  {
    v27 = *a3;
    v28 = *(a3 + 2);
  }

  v18 = *a4;
  v19 = *a5;
  v20 = *a6;
  v21 = *a7;
  v22 = *a8;
  v23 = *a9;
  v24 = *a10;
  v25 = *a11;
  *a1 = v17;
  *(a1 + 8) = v27;
  *(a1 + 24) = v28;
  *(a1 + 32) = v18;
  *(a1 + 36) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v23;
  *(a1 + 65) = v24;
  *(a1 + 68) = v25;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_1005A423C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10014E350(a1, v6);
  }

  v7 = 88 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v10 = *(a2 + 48);
  v9 = *(a2 + 64);
  v11 = *(a2 + 80);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v10;
  *(v7 + 80) = v11;
  *(v7 + 64) = v9;
  *&v20 = 88 * v2 + 88;
  v12 = a1[1];
  v13 = 88 * v2 + *a1 - v12;
  sub_10014E3E4(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_10014E3AC(&v18);
  return v17;
}

void sub_1005A4398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10014E3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A43AC(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t *sub_1005A43FC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002886D8(result, a4);
  }

  return result;
}

void sub_1005A4464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000B96B4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1001005C4(v4, v6);
      v6 += 88;
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10014E4B8(v8);
  return v4;
}

uint64_t *sub_1005A4528(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1005A4578(a1, a2);
  return a1;
}

void sub_1005A4558(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018D08DC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005A4578(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10038EB38(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

__n128 sub_1005A45CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1005A45E0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_1002DDC9C(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1005A4740(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_1005A4798((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void *sub_1005A4798(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005A47F0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1005A47F0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005A4878(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1005A4878(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v4 = *sub_1005A4918(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1005A4918(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1005A4AE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102460EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005A4C68(_Unwind_Exception *a1)
{
  if (*(v1 + 96) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete();
}

uint64_t sub_1005A4CA4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = (v1 + 112);
    sub_1000B96B4(&v2);
    if (*(v1 + 96) == 1 && *(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1005A4D14(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_1005A4DE8(uint64_t a1, int **a2, int **a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  for (i = *a2; i != *a3; ++i)
  {
    valuePtr = *i;
    if (valuePtr != -1)
    {
      v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v14 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240704;
          v26 = valuePtr;
          v27 = 2050;
          v28 = v10;
          v29 = 2050;
          v30 = v12;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v20[0] = 67240704;
          v20[1] = valuePtr;
          v21 = 2050;
          v22 = v10;
          v23 = 2050;
          v24 = v12;
          LODWORD(v17) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", v20, v17);
          v16 = v15;
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = const int *]", "%s\n", v15);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v10, @"CHANNEL", v11);
        CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        CFRelease(v12);
      }
    }
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

void sub_1005A50CC(uint64_t a1, int **a2, int **a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  for (i = *a2; i != *a3; ++i)
  {
    valuePtr = *i;
    if (valuePtr != -1)
    {
      v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v14 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240704;
          v26 = valuePtr;
          v27 = 2050;
          v28 = v10;
          v29 = 2050;
          v30 = v12;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v20[0] = 67240704;
          v20[1] = valuePtr;
          v21 = 2050;
          v22 = v10;
          v23 = 2050;
          v24 = v12;
          LODWORD(v17) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", v20, v17);
          v16 = v15;
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = int *]", "%s\n", v15);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v10, @"CHANNEL", v11);
        CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        CFRelease(v12);
      }
    }
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

void sub_1005A53B0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1005A5538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005A5584(uint64_t a1, int **a2, int **a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  for (i = *a2; i != *a3; ++i)
  {
    valuePtr = *i;
    if (valuePtr != -1)
    {
      v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v14 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240704;
          v26 = valuePtr;
          v27 = 2050;
          v28 = v10;
          v29 = 2050;
          v30 = v12;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v20[0] = 67240704;
          v20[1] = valuePtr;
          v21 = 2050;
          v22 = v10;
          v23 = 2050;
          v24 = v12;
          LODWORD(v17) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", v20, v17);
          v16 = v15;
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = std::__wrap_iter<int *>]", "%s\n", v15);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v10, @"CHANNEL", v11);
        CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        CFRelease(v12);
      }
    }
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

void sub_1005A5868(uint64_t a1, int **a2, int **a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  for (i = *a2; i != *a3; ++i)
  {
    valuePtr = *i;
    if (valuePtr != -1)
    {
      v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v14 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240704;
          v26 = valuePtr;
          v27 = 2050;
          v28 = v10;
          v29 = 2050;
          v30 = v12;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v20[0] = 67240704;
          v20[1] = valuePtr;
          v21 = 2050;
          v22 = v10;
          v23 = 2050;
          v24 = v12;
          LODWORD(v17) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 16, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", v20, v17);
          v16 = v15;
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = std::__wrap_iter<const int *>]", "%s\n", v15);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v10, @"CHANNEL", v11);
        CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        CFRelease(v12);
      }
    }
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

id sub_1005A5B4C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005A5BAC(a1);
}

id sub_1005A5BAC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F794 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0AF8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F794 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0BF0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_1005A5DC4()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_1005A617C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v43) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v43) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v43 & 0x7F) << v23;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v25;
            }

LABEL_70:
            v39 = 44;
            break;
          case 2:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            while (1)
            {
              LOBYTE(v43) = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v43 & 0x7F) << v34;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_76;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v36;
            }

LABEL_76:
            v39 = 40;
            break;
          case 3:
            v43 = 0;
            v15 = [a2 position] + 8;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v43;
            v41 = 8;
            goto LABEL_86;
          default:
            goto LABEL_50;
        }

        *(a1 + v39) = v28;
      }

      else
      {
        if (v12 <= 5)
        {
          if (v12 == 4)
          {
            v43 = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v43;
            v41 = 16;
          }

          else
          {
            if (v12 != 5)
            {
              goto LABEL_50;
            }

            v43 = 0;
            v13 = [a2 position] + 8;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v43;
            v41 = 24;
          }

          goto LABEL_86;
        }

        if (v12 == 6)
        {
          *(a1 + 52) |= 1u;
          v43 = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v43;
          v41 = 32;
LABEL_86:
          *(a1 + v41) = v40;
          goto LABEL_87;
        }

        if (v12 != 7)
        {
LABEL_50:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_87;
        }

        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 52) |= 4u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v43 & 0x7F) << v17;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v10 = v18++ >= 9;
          if (v10)
          {
            LOBYTE(v22) = 0;
            goto LABEL_72;
          }
        }

        v22 = (v19 != 0) & ~[a2 hasError];
LABEL_72:
        *(a1 + 48) = v22;
      }

LABEL_87:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1005A704C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005A7080(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = &off_102461038;
  sub_10183A3AC((a1 + 8), "NatalimetryMaxDelay", &qword_101C7F808, 0);
  *a1 = off_102460FC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = *a2;
  v6 = a2[1];
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0u;
  *(a1 + 201) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  LOBYTE(v11) = 0;
  sub_100126E84((a1 + 217), "LogBinaryNatalimetryOutputs", &v11, 0);
  LODWORD(v11) = -1082130432;
  sub_1004F8200((a1 + 220), "OverrideUserMetsWithMets", &v11, 0);
  LODWORD(v11) = -1082130432;
  sub_1004F8200((a1 + 232), "OverrideRawTruthMetsWithMets", &v11, 0);
  *(a1 + 248) = off_1024556A0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = a1 + 320;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0x10000000000000;
  *(a1 + 256) = 3;
  *(a1 + 344) = off_1024556A0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0x10000000000000;
  *(a1 + 352) = 3;
  *(a1 + 440) = a3;
  sub_100AF35B4(a1 + 448, a3);
  v8 = sub_100F23640(a1 + 520, v7);
  *(a1 + 592) = 0;
  v10 = sub_1000D7E48(v8, v9);
  sub_100F29EC4(v10);
}

uint64_t sub_1005A7424(uint64_t a1)
{
  *a1 = off_102460FC8;

  sub_1005A842C((a1 + 520));
  sub_100AF3610(a1 + 448);
  *(a1 + 344) = off_1024556A0;
  sub_1003C93BC(a1 + 408, *(a1 + 416));
  sub_10045E1B0((a1 + 360));
  *(a1 + 248) = off_1024556A0;
  sub_1003C93BC(a1 + 312, *(a1 + 320));
  sub_10045E1B0((a1 + 264));
  sub_100102BC8((a1 + 168));
  sub_100102BC8((a1 + 120));
  sub_10045E1B0((a1 + 72));
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

void sub_1005A7570(uint64_t a1)
{
  sub_1005A7424(a1);

  operator delete();
}

void sub_1005A75B0(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018D0CE8();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Pausing calorimetry processing", v9, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D0CFC();
  }

  *(a1 + 216) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 218) == 1)
  {
    v6 = Current;
    v13[0] = off_1024916D0;
    v14 = 1;
    *&v13[1] = Current;
    v7 = sub_10015ADF4(v3, v4);
    sub_1010CF5BC(v7, v13);
    sub_10152D354(v9);
    sub_101556064(v9);
    v12 |= 1u;
    v11 = v6;
    v8 = v10;
    *(v10 + 12) |= 1u;
    *(v8 + 8) = 1;
    if (qword_102637F48 != -1)
    {
      sub_1018D0DFC();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, v9);
    }

    sub_101532FA8(v9);
  }
}

void sub_1005A7734(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018D0CE8();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Resuming calorimetry processing", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D0E24();
  }

  *(a1 + 216) = 0;
  if (*(a1 + 218) == 1)
  {
    v11 = off_1024916D0;
    v13 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v5 = sub_10015ADF4(v3, v4);
    sub_1010CF5BC(v5, &v11);
    sub_10152D354(v7);
    sub_101556064(v7);
    v10 |= 1u;
    v9 = Current;
    v6 = v8;
    *(v8 + 12) |= 1u;
    *(v6 + 8) = 0;
    if (qword_102637F48 != -1)
    {
      sub_1018D0DFC();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, v7);
    }

    sub_101532FA8(v7);
  }
}

uint64_t sub_1005A78A8(uint64_t a1, uint64_t a2)
{
  sub_100F24964(a1 + 520, a2);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(*result + 24);

    return v4();
  }

  return result;
}

void sub_1005A791C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1000D7E48(a1, a2);
  if (v7 == 1 || *(a3 + 248) != 1)
  {
    v14 = sub_1000D7E48(v7, v8);
    v15 = *(a2 + 24);
    v16 = *(a2 + 16);
    *a4 = *a2;
    *(a4 + 16) = v16;
    *(a4 + 32) = *(a2 + 32);
    if (v14 == 1 && v15 == 5)
    {
      *(a4 + 24) = 3;
    }
  }

  else if (*(a2 + 24) == 5)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v10 = *(a3 + 48);
    v9 = (a3 + 48);
    v11 = sub_1010D0044(v10);
    *(a4 + 20) = v11;
    *(a4 + 24) = 0x4006666600000005;
    *(a4 + 32) = 3;
    if (qword_1025D4230 != -1)
    {
      sub_1018D0CE8();
    }

    v12 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v13 = *v9;
      v23 = 134218240;
      v24 = v11;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Calories, set book value, mets, %f, activity, %d", &v23, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D13B0(v9, v11);
    }
  }

  else
  {
    v17 = *(a2 + 16);
    *a4 = *a2;
    *(a4 + 16) = v17;
    *(a4 + 32) = *(a2 + 32);
    v18 = *(a2 + 20);
    if (v18 < 2.1)
    {
      v18 = 2.1;
    }

    *(a4 + 20) = v18;
    v19 = *(a2 + 28);
    if (v19 < 2.1)
    {
      v19 = 2.1;
    }

    *(a4 + 28) = v19;
    if (qword_1025D4230 != -1)
    {
      sub_1018D0CE8();
    }

    v20 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v21 = *(a2 + 20);
      v22 = *(a3 + 48);
      v23 = 134218240;
      v24 = v21;
      v25 = 1024;
      v26 = v22;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Calories, standing floor applied, %f, activity, %d", &v23, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D1284((a2 + 20), a3);
    }
  }
}

uint64_t sub_1005A7B84(uint64_t a1, __int128 *a2, double a3)
{
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v8 = sub_1005A875C(*(a1 + 8), &v20, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018D1104();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v41 = v10;
      v42 = 2048;
      v43 = a3;
      v44 = 1024;
      v45 = v7;
      v46 = 2048;
      v47 = *(&v25 + 1);
      v48 = 1024;
      v49 = v8;
      v50 = 2048;
      v51 = *(&v22 + 1);
      v52 = 1024;
      v53 = *(&v25 + 1) == *(&v22 + 1);
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018D1104();
      }

      v16 = *(a1 + 48);
      v27[0] = 67110656;
      v27[1] = v16;
      v28 = 2048;
      v29 = a3;
      v30 = 1024;
      v31 = v7;
      v32 = 2048;
      v33 = *(&v25 + 1);
      v34 = 1024;
      v35 = v8;
      v36 = 2048;
      v37 = *(&v22 + 1);
      v38 = 1024;
      v39 = *(&v25 + 1) == *(&v22 + 1);
      LODWORD(v19) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v27, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCatherineData>, T = CLCatherineData, LegacyT = CLCatherineData, ConverterT = void]", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = v24;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = &v20;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
    v14 = v12[3];
    a2[2] = v12[2];
    a2[3] = v14;
  }

  return v7 & 1;
}

void sub_1005A7EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, double a6)
{
  sub_10001A3E8(a1, a2);
  if (!sub_10001CF3C())
  {
    return;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v12 setTimestamp:*(a4 + 16)];
  [(ALActivityLog *)v12 setCalorieData:objc_alloc_init(ALCMCalorieData)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setActivityType:*(a4 + 24)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setIsStanding:*(a4 + 29)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setUserMets:*(a4 + 32)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setTruthMets:*(a4 + 40)];
  if (*(a3 + 208) == 1)
  {
    [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setUserMetsSource:a5[6]];
    [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setTruthMetsSource:a5[8]];
    v13 = *a5;
    v14 = [(ALActivityLog *)v12 calorieData];
    LODWORD(v15) = v13;
    [(ALCMCalorieData *)v14 setMetsHR:v15];
    v16 = a5[1];
    v17 = [(ALActivityLog *)v12 calorieData];
    LODWORD(v18) = v16;
    [(ALCMCalorieData *)v17 setMetsWR:v18];
    v19 = a5[2];
    v20 = [(ALActivityLog *)v12 calorieData];
    LODWORD(v21) = v19;
    [(ALCMCalorieData *)v20 setMetsFM:v21];
  }

  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v11);
  v22 = *(a2 + 3392);
  if (v22 == 1)
  {
    v23 = (a2 + 3432);
LABEL_8:
    if (*v23 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v22)
  {
    v23 = (*(a2 + 3368) + 80);
    goto LABEL_8;
  }

LABEL_9:
  v24 = objc_autoreleasePoolPush();
  v25 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v25 setTimestamp:a6];
  [(ALActivityLog *)v25 setOdometer:objc_alloc_init(ALCLOdometer)];
  v26 = *(a2 + 432);
  v27 = [(ALActivityLog *)v25 odometer];
  *&v28 = v26;
  [(ALCLOdometer *)v27 setDistance:v28];
  v29 = *(a2 + 456);
  v30 = [(ALActivityLog *)v25 odometer];
  *&v31 = v29;
  [(ALCLOdometer *)v30 setAccuracy:v31];
  v32 = *(a2 + 448);
  v33 = [(ALActivityLog *)v25 odometer];
  *&v34 = v32;
  [(ALCLOdometer *)v33 setGpsAltitude:v34];
  v35 = *(a2 + 416);
  v36 = [(ALActivityLog *)v25 odometer];
  *&v37 = v35;
  [(ALCLOdometer *)v36 setSpeed:v37];
  v38 = *(a2 + 424);
  v39 = [(ALActivityLog *)v25 odometer];
  *&v40 = v38;
  [(ALCLOdometer *)v39 setRawSpeed:v40];
  v41 = *(a2 + 440);
  v42 = [(ALActivityLog *)v25 odometer];
  *&v43 = v41;
  [(ALCLOdometer *)v42 setOdometer:v43];
  v44 = *(a2 + 464);
  v45 = [(ALActivityLog *)v25 odometer];
  *&v46 = v44;
  [(ALCLOdometer *)v45 setGpsSpeedAccuracy:v46];
  [(ALCLOdometer *)[(ALActivityLog *)v25 odometer] setTimestampGps:*(a2 + 472)];
  [(ALCLOdometer *)[(ALActivityLog *)v25 odometer] setQuality:*(a2 + 480)];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v24);
LABEL_10:
  v47 = *(a2 + 3464);
  if (v47 == 1)
  {
    v48 = (a2 + 3504);
LABEL_14:
    if (*v48 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!v47)
  {
    v48 = (*(a2 + 3440) + 80);
    goto LABEL_14;
  }

LABEL_15:
  v49 = objc_autoreleasePoolPush();
  v50 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v50 setTimestamp:a6];
  [(ALActivityLog *)v50 setElevation:objc_alloc_init(ALCMElevation)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setElevationAscended:*(a2 + 504)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setElevationDescended:*(a2 + 508)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setGradeType:*(a2 + 512)];
  v51 = *(a2 + 520);
  v52 = [(ALActivityLog *)v50 elevation];
  *&v53 = v51;
  [(ALCMElevation *)v52 setVerticalSpeed:v53];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setRawGradeType:*(a2 + 512)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setSource:*(a2 + 528)];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v49);
LABEL_16:
  v54 = *(a2 + 3320);
  if (v54 == 1)
  {
    v55 = (a2 + 3360);
LABEL_20:
    if (*v55 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v54)
  {
    v55 = (*(a2 + 3296) + 80);
    goto LABEL_20;
  }

LABEL_21:
  v56 = objc_autoreleasePoolPush();
  v57 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v57 setTimestamp:a6];
  [(ALActivityLog *)v57 setStairClimbingModel:objc_alloc_init(ALCLStairClimbingModel)];
  v58 = *(a2 + 200);
  v59 = [(ALActivityLog *)v57 stairClimbingModel];
  LODWORD(v60) = v58;
  [(ALCLStairClimbingModel *)v59 setMachineFrequency:v60];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v56);
  v54 = *(a2 + 3320);
LABEL_22:
  if (v54 == 1)
  {
    v61 = (a2 + 3360);
LABEL_26:
    if (*v61 != 1)
    {
      return;
    }

    goto LABEL_27;
  }

  if (!v54)
  {
    v61 = (*(a2 + 3296) + 80);
    goto LABEL_26;
  }

LABEL_27:
  v62 = objc_autoreleasePoolPush();
  v63 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v63 setTimestamp:a6];
  [(ALActivityLog *)v63 setRowingModel:objc_alloc_init(ALCLRowingModel)];
  v64 = *(a2 + 212);
  v65 = [(ALActivityLog *)v63 rowingModel];
  LODWORD(v66) = v64;
  [(ALCLRowingModel *)v65 setStrokePower:v66];
  v67 = *(a2 + 208);
  v68 = [(ALActivityLog *)v63 rowingModel];
  LODWORD(v69) = v67;
  [(ALCLRowingModel *)v68 setStrokeAmp:v69];
  v70 = *(a2 + 204);
  v71 = [(ALActivityLog *)v63 rowingModel];
  LODWORD(v72) = v70;
  [(ALCLRowingModel *)v71 setStrokeFrequency:v72];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];

  objc_autoreleasePoolPop(v62);
}

uint64_t sub_1005A842C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 36;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 73;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_1005A84D8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 512;
  }

  a1[4] = v6;
}

void sub_1005A8588(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1003EE744(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1003112A0(a1, &v9);
}

void sub_1005A8710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A875C(uint64_t *a1, _OWORD *a2, double a3, double a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_1011FE628(a1, &v14, a3 - a4, a3 + a4);
  v6 = v14;
  if (v14 != v15)
  {
    v7 = v14 + 8;
    v8 = v14;
    if (v14 + 8 != v15)
    {
      v8 = v14;
      do
      {
        if (vabdd_f64(a3, v7[5]) < vabdd_f64(a3, v8[5]))
        {
          v8 = v7;
        }

        v7 += 8;
      }

      while (v7 != v15);
    }

    if (v8 != v15)
    {
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(v8 + 3);
      a2[2] = *(v8 + 2);
      a2[3] = v11;
      *a2 = v9;
      a2[1] = v10;
      v12 = 1;
      if (!v6)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  v12 = 0;
  if (v14)
  {
LABEL_11:
    v15 = v6;
    operator delete(v6);
  }

  return v12;
}

void sub_1005A8824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A8840(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_1005A89C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A8A14()
{
  __cxa_atexit(sub_1005A704C, aAcc800fp, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp, dword_100000000);
}

uint64_t sub_1005A8AEC(uint64_t result)
{
  if (!qword_102636F38)
  {
    sub_1005A8A7C(*(result + 32));
  }

  return result;
}

void sub_1005A9204(_Unwind_Exception *a1)
{
  sub_100506B88((v1 + v6));
  sub_1005AF7EC((v1 + 13872), 0);
  sub_100F2227C(v1 + v5);
  nullsub_34();
  sub_100C572F8(v1 + v4);
  sub_100ADEE24(v1 + v3);
  sub_1005AF190(v1 + 12848);
  v8 = *(v1 + 1968);
  *(v1 + 1968) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(v1 + 1960);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(v1 + 1944);
  if (v10)
  {
    sub_100008080(v10);
  }

  sub_1004F0990(v2, 0);
  sub_100F57E68(v1, v11);
  _Unwind_Resume(a1);
}

void sub_1005A935C(void *a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  v4 = sub_10018D3EC();
  if (Current != v4)
  {
    v6 = sub_100011660(v4, v5);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1005AB764;
    v19[3] = &unk_102449A78;
    v19[4] = a1;
    sub_10017A794(v6, v19);
    return;
  }

  if (a1[242])
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v7 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Close hid driver interface", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D1874();
    }

    v8 = a1 + 239;
    v9 = a1[239];
    v10 = a1[240];
    if (v10)
    {
      (*(*v10 + 72))(a1[240], 0);
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else if (!v9)
    {
      *(a1[242] + 8) = 0;
      *v8 = 0;
      a1[240] = 0;
      return;
    }

    ((*v9)->Release)(v9);
    IODestroyPlugInInterface(v9);
LABEL_15:
    *(a1[242] + 8) = 0;
    *v8 = 0;
    a1[240] = 0;
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v11 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[239];
      v13 = a1[240];
      *buf = 134218752;
      v29 = v9;
      v30 = 2048;
      v31 = v10;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      v35 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Closed hid driver interface, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4210 != -1)
      {
        sub_1018D1768();
      }

      v14 = a1[239];
      v15 = a1[240];
      v20 = 134218752;
      v21 = v9;
      v22 = 2048;
      v23 = v10;
      v24 = 2048;
      v25 = v14;
      v26 = 2048;
      v27 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4218, 0, "Closed hid driver interface, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", &v20, 42, v18, v19[0]);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::closeHidDriverInterface()", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

void sub_1005A967C(uint64_t a1, void *a2)
{
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *v66 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Open hid driver interface,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D1958(a2);
  }

  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v6);
  if (Current != sub_10018D3EC())
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v7 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "openHidDriverInterface should be called from motion thread", buf, 2u);
    }

    v8 = sub_10000A100(121, 0);
    if (v8)
    {
      sub_1018D1A54();
    }

    v10 = sub_100011660(v8, v9);
    v45 = _NSConcreteStackBlock;
    v46 = 3221225472;
    v47 = sub_1005AB754;
    v48 = &unk_102460CC8;
    v49 = a1;
    v50 = a2;
    sub_10017A794(v10, &v45);
    return;
  }

  v11 = *(a1 + 1936);
  if (!v11)
  {
    return;
  }

  theInterface = 0;
  valuePtr = 0;
  v52 = 0;
  v12 = sub_10026E634(v11);
  if (v12)
  {
    v13 = v12;
    RegistryID = IOHIDServiceClientGetRegistryID(v12);
    if (RegistryID)
    {
      CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        theScore = 0;
        v15 = IORegistryEntryIDMatching(valuePtr);
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v15);
        if (MatchingService)
        {
          v17 = MatchingService;
          v18 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x3Bu, 0xC5u, 0xCCu, 0x87u, 0x84u, 0x5Eu, 0x48u, 0xABu, 0xA9u, 0xC2u, 0x94u, 0x36u, 0, 0x1Bu, 0xA6u, 0x8Au);
          v19 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
          v20 = IOCreatePlugInInterfaceForService(v17, v18, v19, &theInterface, &theScore);
          if (v20)
          {
            v21 = v20;
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v22 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
            {
              *buf = 67240192;
              *v66 = v21;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "Unable to create plugin interface: 0x%{public}x", buf, 8u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018D1B38(v21);
            }

            return;
          }

          IOObjectRelease(v17);
          v27 = theInterface;
          QueryInterface = (*theInterface)->QueryInterface;
          v29 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Eu, 0xBEu, 0xBAu, 0x6Eu, 9u, 0x1Eu, 0x45u, 0x2Eu, 0x82u, 0xEAu, 0x29u, 0x79u, 0x81u, 0x6Fu, 0xB1u, 0xB5u);
          v30 = CFUUIDGetUUIDBytes(v29);
          if ((QueryInterface)(v27, *&v30.byte0, *&v30.byte8, &v52))
          {
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v31 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "Unable to set up query interface", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018D1C30();
            }

LABEL_60:
            if (theInterface)
            {
              ((*theInterface)->Release)(theInterface);
              IODestroyPlugInInterface(theInterface);
            }

            return;
          }

          if ((*(*v52 + 64))(v52, a2))
          {
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v32 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
            {
              *buf = 67240450;
              *v66 = 0;
              *&v66[4] = 2114;
              *&v66[6] = v13;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "Unable to create plugin interface: kr:%{public}x service:%{public}@", buf, 0x12u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018D1D14();
            }

            if (v52)
            {
              (*(*v52 + 72))(v52, 0);
            }

            goto LABEL_60;
          }

          if (qword_1025D4210 != -1)
          {
            sub_1018D1768();
          }

          v33 = qword_1025D4218;
          if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 1912);
            v35 = *(a1 + 1920);
            *buf = 134219008;
            *v66 = valuePtr;
            *&v66[8] = 2048;
            *&v66[10] = v34;
            v67 = 2048;
            v68 = v35;
            v69 = 2048;
            v70 = theInterface;
            v71 = 2048;
            v72 = v52;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v39 = *(a1 + 1912);
            v40 = *(a1 + 1920);
            v55 = 134219008;
            v56 = valuePtr;
            v57 = 2048;
            v58 = v39;
            v59 = 2048;
            v60 = v40;
            v61 = 2048;
            v62 = theInterface;
            v63 = 2048;
            v64 = v52;
            LODWORD(byte15) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4218, 0, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", &v55, byte15, v44, v45, v46);
            v42 = v41;
            sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::openHidDriverInterface(BOOL)", "%s\n", v41);
            if (v42 != buf)
            {
              free(v42);
            }
          }

          v36 = theInterface;
          *(*(a1 + 1936) + 8) = valuePtr;
          *(a1 + 1912) = v36;
          v37 = v52;
          *(a1 + 1920) = v52;
          sub_1005AB660((a1 + 192), v37);
          if (*(a1 + 1920))
          {
            if (a2)
            {
              sub_1005AB6D4(a1, v38);
            }

            else
            {
              sub_1005AB714(a1, v38);
            }
          }
        }

        else
        {
          if (qword_1025D4210 != -1)
          {
            sub_1018D1768();
          }

          v26 = qword_1025D4218;
          if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "Service doesn't exist", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018D1E1C();
          }
        }
      }

      else
      {
        if (qword_1025D4210 != -1)
        {
          sub_1018D1768();
        }

        v25 = qword_1025D4218;
        if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "Can't get cma registry ID", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D1F00();
        }
      }
    }

    else
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1768();
      }

      v24 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "IOHIDServiceClientGetRegistryID query for cma service failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D1FE4();
      }
    }
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v23 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "IoHidDevice is not ready", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D20C8();
    }

    *(a1 + 12845) = 1;
  }
}

uint64_t sub_1005A9F04(void *a1, uint64_t a2)
{
  sub_100011660(a1, a2);
  sub_10001160C();
  v3 = a1[241];
  sub_1010FA2B0(v3);
  sub_1010FA55C(v3);
  v4 = *(*a1 + 568);

  return v4(a1);
}

void sub_1005A9F88(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100011660(a1, a2);
  sub_100185AC0(v4, &v55);
  v54 = 1;
  sub_10005BBE4(v55, "OscarLogLevel", &v54);
  if (qword_1025D4210 != -1)
  {
    sub_1018D1768();
  }

  v5 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v59 = v54;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "spuLogLevel,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D1724(buf);
    v57[0] = 67109120;
    v57[1] = v54;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4218, 0, "spuLogLevel,%d", v57);
    v45 = v44;
    sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::sendInitialConfig(BOOL)", "%s\n", v44);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  v6 = (*(*a1 + 192))(a1);
  v53 = 0;
  sub_10001CB4C(v55, "OscarActivityForceCodeTransition", &v53 + 1, 0xFFFFFFFFLL);
  sub_10001CB4C(v55, "OscarStepCountingForceCodeTransition", &v53, 0xFFFFFFFFLL);
  sub_1004FB1EC(v55, "UserConfig", a1 + 172, 0xFFFFFFFFLL);
  buf[0] = 0;
  sub_100126E84(v52, "LogCompassCalibration", buf, 0);
  buf[0] = 0;
  sub_100126E84(v51, "LogCompass", buf, 0);
  *(a1 + 12844) = (v51[1] | v52[1]) & 1;
  buf[0] = 0;
  v7 = sub_100126E84(v50, "IgnoreDynamicGyroBiasEstimator", buf, 0);
  v49 = sub_1000F42C0(v7, v8) ^ 1;
  sub_10001CB4C(v55, "ConsumeBasebandSpeedInActivity", &v49, 0xFFFFFFFFLL);
  v57[0] = 1114636288;
  sub_1004F8200(buf, "ViewObstructedReplyIntervalSecs", v57, 0);
  v47 = v2;
  v48 = v6;
  LOBYTE(v57[0]) = 0;
  v9 = sub_10001CB4C(v55, "EnableComputeWhileStatic", v57, 0xFFFFFFFFLL);
  v11 = sub_100F53BC8(v9, v10);
  v12 = v11;
  v13 = HIBYTE(v53);
  v14 = v53;
  v15 = v54;
  v46 = v50[1];
  v17 = sub_10001A3E8(v11, v16);
  v18 = sub_10071CB28(v17);
  v19 = v18;
  v20 = v49;
  v22 = sub_10001A3E8(v18, v21);
  v23 = sub_10071C6F4(v22);
  v24 = v23;
  v26 = sub_10001A3E8(v23, v25);
  v27 = sub_10071C750(v26);
  v28 = v27;
  v30 = sub_10001A3E8(v27, v29);
  v31 = sub_10071C7A4(v30);
  v32 = v31;
  v34 = sub_10001A3E8(v31, v33);
  v35 = sub_10071C814(v34);
  v36 = v59;
  v37 = v57[0];
  *(a1 + 217) = 6;
  *(a1 + 218) = v12;
  *(a1 + 219) = v48;
  *(a1 + 220) = v13;
  *(a1 + 221) = v14;
  *(a1 + 222) = 0;
  *(a1 + 226) = 0;
  *(a1 + 227) = v15;
  *(a1 + 228) = 0;
  *(a1 + 235) = 0;
  *(a1 + 243) = v46;
  *(a1 + 244) = v19;
  *(a1 + 253) = 0;
  *(a1 + 245) = 0;
  *(a1 + 263) = v20;
  *(a1 + 132) = 0;
  *(a1 + 266) = v24;
  *(a1 + 267) = 0;
  *(a1 + 269) = v28;
  *(a1 + 270) = 0;
  *(a1 + 271) = v32;
  *(a1 + 136) = v35;
  *(a1 + 274) = v36;
  *(a1 + 278) = 0;
  *(a1 + 282) = v37;
  v39 = sub_100023B30(v35, v38);
  v40 = v39;
  v41 = sub_100177B18(v39);
  if ((v40 & 0x40000000) != 0)
  {
    v42 = 34;
  }

  else
  {
    v42 = 32;
  }

  if ((v40 & 0x40000008) != 0)
  {
    v42 |= 0x40u;
  }

  sub_100F53C1C(a1, (v40 >> 10) & 8 | v40 & 0x10 | (v41 >> 2) & 4 | v42, v47);
  if ((v47 & 1) == 0)
  {
    sub_1005AA4D4(a1);
    (*(*a1 + 552))(a1, 1);
    sub_1005AA544(a1);
  }

  sub_1005AA6F0(a1, v43);
  if (v56)
  {
    sub_100008080(v56);
  }
}

void sub_1005AA45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005AA4D4(void *result)
{
  v1 = result[73];
  if (v1)
  {
    v2 = result;
    [*(v1 + 16) register:*(v1 + 8) forNotification:1 registrationInfo:0];
    [*(v2[73] + 16) register:*(v2[73] + 8) forNotification:2 registrationInfo:0];
    v3 = v2[73];
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);

    return [v4 register:v5 forNotification:3 registrationInfo:0];
  }

  return result;
}

void sub_1005AA6F0(uint64_t a1, uint64_t a2)
{
  v64 = 0;
  v3 = sub_1000206B4(a1, a2);
  if (sub_1003045C8(v3, @"CompassCalibration", &v64))
  {
    [objc_msgSend(v64 objectForKeyedSubscript:{@"Time", "floatValue"}];
    v5 = v4;
    v6 = [v64 objectForKeyedSubscript:@"Bias"];
    v7 = [v64 objectForKeyedSubscript:@"Scale"];
    v8 = v5;
    if (*(a1 + 12844) == 1)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_1018D239C();
      }

      v9 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
        v11 = v10;
        [objc_msgSend(v6 objectAtIndexedSubscript:{1), "floatValue"}];
        v13 = v12;
        [objc_msgSend(v6 objectAtIndexedSubscript:{2), "floatValue"}];
        v15 = v14;
        [objc_msgSend(v7 objectAtIndexedSubscript:{0), "floatValue"}];
        *buf = 134219520;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        *&buf[22] = 2048;
        *&buf[24] = v15;
        v66 = 2048;
        v67 = (1.0 / v16);
        v68 = 1024;
        v69 = 4;
        v70 = 2048;
        v71 = 0x3FD1EB8520000000;
        v72 = 2048;
        v73 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] logging initial persisted calibration: bias.x,%.2f,.y,%.2f,.z,%.2f,radius,%.2f,level,%d,quality,%.2f,cftime,%.3f", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          sub_1018D239C();
        }

        v52 = qword_1025D42E8;
        [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
        v54 = v53;
        [objc_msgSend(v6 objectAtIndexedSubscript:{1), "floatValue"}];
        v56 = v55;
        [objc_msgSend(v6 objectAtIndexedSubscript:{2), "floatValue"}];
        v58 = v57;
        [objc_msgSend(v7 objectAtIndexedSubscript:{0), "floatValue"}];
        v77 = 134219520;
        v78 = v54;
        v79 = 2048;
        v80 = v56;
        v81 = 2048;
        v82 = v58;
        v83 = 2048;
        v84 = (1.0 / v59);
        v85 = 1024;
        v86 = 4;
        v87 = 2048;
        v88 = 0x3FD1EB8520000000;
        v89 = 2048;
        v90 = v8;
        LODWORD(v62) = 68;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v52, 0, "[CompassCalibration] logging initial persisted calibration: bias.x,%.2f,.y,%.2f,.z,%.2f,radius,%.2f,level,%d,quality,%.2f,cftime,%.3f", COERCE_DOUBLE(&v77), v62, v63, *&v64);
        v61 = v60;
        sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::retrieveCachedCompassCalibration()", "%s\n", v60);
        if (v61 != buf)
        {
          free(v61);
        }
      }

      sub_10152D354(buf);
      sub_1015555B4(buf);
      Current = CFAbsoluteTimeGetCurrent();
      v76 |= 1u;
      v74 = Current;
      v18 = v75;
      v19 = *(a1 + 352);
      *(v75 + 80) |= 1u;
      *(v18 + 8) = v19;
      v20 = v75;
      [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
      *(v20 + 80) |= 2u;
      *(v20 + 16) = v21;
      v22 = v75;
      [objc_msgSend(v6 objectAtIndexedSubscript:{1), "floatValue"}];
      *(v22 + 80) |= 4u;
      *(v22 + 20) = v23;
      v24 = v75;
      [objc_msgSend(v6 objectAtIndexedSubscript:{2), "floatValue"}];
      *(v24 + 80) |= 8u;
      *(v24 + 24) = v25;
      v26 = v75;
      [objc_msgSend(v7 objectAtIndexedSubscript:{0), "floatValue"}];
      *(v26 + 80) |= 0x2000u;
      *(v26 + 64) = v27;
      v28 = v75;
      [objc_msgSend(v7 objectAtIndexedSubscript:{1), "floatValue"}];
      *(v28 + 80) |= 0x4000u;
      *(v28 + 68) = v29;
      v30 = v75;
      [objc_msgSend(v7 objectAtIndexedSubscript:{2), "floatValue"}];
      *(v30 + 80) |= 0x8000u;
      *(v30 + 72) = v31;
      v32 = v75;
      *(v75 + 80) |= 0x1000u;
      *(v32 + 60) = 1049582633;
      v33 = v75;
      *(v75 + 80) |= 0x20u;
      *(v33 + 32) = 2139095039;
      v34 = v75;
      *(v75 + 80) |= 0x40u;
      *(v34 + 36) = 0;
      v35 = v75;
      *(v75 + 80) |= 0x80u;
      *(v35 + 40) = 0;
      v36 = v75;
      *(v75 + 80) |= 0x200u;
      *(v36 + 48) = 0;
      v37 = v75;
      *(v75 + 80) |= 0x400u;
      *(v37 + 52) = 0;
      v38 = v75;
      *(v75 + 80) |= 0x800u;
      *(v38 + 56) = 0;
      v39 = v75;
      *(v75 + 80) |= 0x10u;
      *(v39 + 28) = 4;
      v40 = v75;
      *(v75 + 80) |= 0x20000u;
      *(v40 + 77) = 0;
      v41 = v75;
      *(v75 + 80) |= 0x10000u;
      *(v41 + 76) = 1;
      v42 = v75;
      *(v75 + 80) |= 0x100u;
      *(v42 + 44) = 0;
      if (qword_102637F48 != -1)
      {
        sub_1018D24B0();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, buf);
      }

      sub_101532FA8(buf);
    }

    if (CFAbsoluteTimeGetCurrent() + -3600.0 <= v8)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_1018D239C();
      }

      v45 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v64;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] restoring calibration,%@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D24D8();
      }

      [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
      *&buf[1] = v46;
      [objc_msgSend(v6 objectAtIndexedSubscript:{1), "floatValue"}];
      *&buf[5] = v47;
      [objc_msgSend(v6 objectAtIndexedSubscript:{2), "floatValue"}];
      *&buf[9] = v48;
      [objc_msgSend(v7 objectAtIndexedSubscript:{0), "floatValue"}];
      *&buf[13] = v49;
      [objc_msgSend(v7 objectAtIndexedSubscript:{1), "floatValue"}];
      *&buf[17] = v50;
      [objc_msgSend(v7 objectAtIndexedSubscript:{2), "floatValue"}];
      *&buf[21] = v51;
      *&buf[25] = 1049582633;
      sub_1005AFB7C(a1 + 192, buf, 0);
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_1018D239C();
      }

      v43 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v64;
        _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] stale persistent calibration,%@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D25D4();
      }
    }
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v44 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] no persistent calibration found", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D23C4();
    }
  }
}

void sub_1005AAEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AAEE4(uint64_t a1)
{
  *a1 = off_1024610E0;
  *(a1 + 32) = off_1024615C0;
  *(a1 + 40) = off_102461608;
  *(a1 + 48) = off_102461640;
  *(a1 + 56) = off_102461668;
  *(a1 + 64) = off_1024616B8;
  *(a1 + 72) = off_1024616F0;
  *(a1 + 80) = off_102461730;
  *(a1 + 88) = off_102461768;
  *(a1 + 96) = off_102461798;
  *(a1 + 104) = off_1024617E8;
  *(a1 + 112) = off_102461810;
  *(a1 + 120) = off_102461878;
  *(a1 + 128) = off_1024618A0;
  *(a1 + 136) = off_1024618C8;
  *(a1 + 152) = off_1024618F0;
  v2 = *(a1 + 1944);
  v3 = 0uLL;
  *(a1 + 1936) = 0u;
  if (v2)
  {
    sub_100008080(v2);
    v3 = 0uLL;
  }

  v4 = *(a1 + 1960);
  *(a1 + 1952) = v3;
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_1004F0990((a1 + 1928), 0);

  sub_100506B88((a1 + 13880));
  sub_1005AF7EC((a1 + 13872), 0);
  sub_100F2227C(a1 + 13800);
  nullsub_34();
  sub_100C572F8(a1 + 13272);
  sub_100ADEE24(a1 + 13040);
  if (*(a1 + 12959) < 0)
  {
    operator delete(*(a1 + 12936));
  }

  if (*(a1 + 12887) < 0)
  {
    operator delete(*(a1 + 12864));
  }

  v5 = *(a1 + 1968);
  *(a1 + 1968) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 1960);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 1944);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1004F0990((a1 + 1928), 0);

  return sub_100F57E68(a1, v8);
}

void sub_1005AB2A4(uint64_t a1)
{
  sub_1005AAEE4(a1);

  operator delete();
}

void sub_1005AB2DC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 32);

  operator delete();
}

void sub_1005AB318(uint64_t a1)
{
  sub_1005AAEE4(a1 - 40);

  operator delete();
}

void sub_1005AB354(uint64_t a1)
{
  sub_1005AAEE4(a1 - 48);

  operator delete();
}

void sub_1005AB390(uint64_t a1)
{
  sub_1005AAEE4(a1 - 56);

  operator delete();
}

void sub_1005AB3CC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 64);

  operator delete();
}

void sub_1005AB408(uint64_t a1)
{
  sub_1005AAEE4(a1 - 72);

  operator delete();
}

void sub_1005AB444(uint64_t a1)
{
  sub_1005AAEE4(a1 - 80);

  operator delete();
}

void sub_1005AB480(uint64_t a1)
{
  sub_1005AAEE4(a1 - 88);

  operator delete();
}

void sub_1005AB4BC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 96);

  operator delete();
}

void sub_1005AB4F8(uint64_t a1)
{
  sub_1005AAEE4(a1 - 104);

  operator delete();
}

void sub_1005AB534(uint64_t a1)
{
  sub_1005AAEE4(a1 - 112);

  operator delete();
}

void sub_1005AB570(uint64_t a1)
{
  sub_1005AAEE4(a1 - 120);

  operator delete();
}

void sub_1005AB5AC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 128);

  operator delete();
}

void sub_1005AB5E8(uint64_t a1)
{
  sub_1005AAEE4(a1 - 136);

  operator delete();
}

void sub_1005AB624(uint64_t a1)
{
  sub_1005AAEE4(a1 - 152);

  operator delete();
}

void sub_1005AB660(NSObject **a1, uint64_t a2)
{
  v2 = *a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005AF1D4;
  v3[3] = &unk_10245D2A8;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_1005AB6D4(uint64_t a1, uint64_t a2)
{
  sub_100011660(a1, a2);
  sub_10001160C();

  return sub_10026C8E8(a1, 1);
}

uint64_t sub_1005AB714(uint64_t a1, uint64_t a2)
{
  sub_100011660(a1, a2);
  sub_10001160C();

  return sub_10026C8E8(a1, 0);
}

uint64_t sub_1005AB76C(_BYTE *a1, uint64_t a2)
{
  sub_100011660(a1, a2);
  sub_10001160C();
  a1[216] = 1;
  v3 = *(*a1 + 552);

  return v3(a1, 1);
}

void sub_1005AB7DC(uint64_t a1, uint64_t a2)
{
  sub_100011660(a1, a2);
  sub_10001160C();
  if (*(a1 + 12845) == 1 && sub_10026E634(*(a1 + 1936)))
  {
    *(a1 + 12845) = 0;
    sub_1005A935C(a1);

    sub_1005A967C(a1, 0);
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v3 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      v4 = sub_10026E634(*(a1 + 1936));
      v5 = 134283521;
      v6 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "cma reopening HID driver interface for service %{private}p, this is not expected", &v5, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D2898(a1);
    }
  }
}

void sub_1005AB928(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v5 = sub_100011660(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005AB9B0;
  v6[3] = &unk_102449BC0;
  v6[4] = v3;
  v6[5] = a1;
  sub_100042800(v5, v6);
}

void sub_1005AB9B0(uint64_t a1)
{
  v2 = *(a1 + 40);

  *(v2 + 1976) = [*(a1 + 32) copy];
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void sub_1005AB9FC(uint64_t a1, char *a2)
{
  v5 = 18;
  v6 = a2;
  v7 = -1;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[CLSPU] Setting BufferedAccelSampleRate,%lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D29A4(a2);
  }

  sub_1005AF9B0(a1 + 192, &v5, 0);
}

void sub_1005ABB04(uint64_t a1, char *a2)
{
  v5 = 18;
  v6 = -1;
  v7 = a2;
  v8 = -1;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[CLSPU] Setting BufferedGyroSampleRate,%lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D2A9C(a2);
  }

  sub_1005AF9B0(a1 + 192, &v5, 0);
}

void sub_1005ABC0C(uint64_t a1, char *a2)
{
  v5 = 18;
  v6 = -1;
  v7 = a2;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[CLSPU] Setting BufferedPressureSampleRate,%lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D2B94(a2);
  }

  sub_1005AF9B0(a1 + 192, &v5, 0);
}

void sub_1005ABD14(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v5 = sub_100011660(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005ABD9C;
  v6[3] = &unk_102449BC0;
  v6[4] = v3;
  v6[5] = a1;
  sub_100042800(v5, v6);
}

void sub_1005ABD9C(uint64_t a1)
{
  v2 = *(a1 + 40);

  *(v2 + 1984) = [*(a1 + 32) copy];
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void sub_1005ABDE8(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v5 = sub_100011660(v3, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005ABE70;
  v6[3] = &unk_102449BC0;
  v6[4] = v3;
  v6[5] = a1;
  sub_100042800(v5, v6);
}

void sub_1005ABE70(uint64_t a1)
{
  v2 = *(a1 + 40);

  *(v2 + 12832) = [*(a1 + 32) copy];
  v3 = *(a1 + 32);

  _Block_release(v3);
}

BOOL sub_1005ABEBC(uint64_t a1)
{
  v1 = *(a1 + 1928);
  if (v1)
  {
    Current = CFRunLoopGetCurrent();
    sub_100011660(Current, v4);
    v5 = sub_10018D3EC();
    if (Current == v5)
    {
      v8 = 0.005;
      if (!*(a1 + 225))
      {
        v8 = 0.0;
      }

      sub_10017A1F4(*(a1 + 1952), v8);
      v19 = 3;
      v9 = *(a1 + 226);
      HIBYTE(v19) = *(a1 + 226);
      if (qword_1025D42C0 != -1)
      {
        sub_1018D2C8C();
      }

      v10 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v21) = v9;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[CLSPU] Sending CameraDebug command %hhu", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D2CA0(v9);
      }

      v18 = 0;
      v17 = 4;
      v11 = sub_1010FAC50(*(a1 + 1928), &v19, 2, &v18, &v17);
      if (v11)
      {
        v12 = v11;
        if (qword_1025D42C0 != -1)
        {
          sub_1018D2D9C();
        }

        v13 = qword_1025D42C8;
        if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_ERROR))
        {
          v14 = mach_error_string(v12);
          *buf = 136315138;
          v21 = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[CLSPU] Send command failed %s", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D2DC4(v12);
        }
      }
    }

    else
    {
      v7 = sub_100011660(v5, v6);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1005AC0FC;
      v16[3] = &unk_102449A78;
      v16[4] = a1;
      sub_10017A794(v7, v16);
    }
  }

  return v1 != 0;
}

void sub_1005AC164(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);
}

uint64_t sub_1005AC1AC(uint64_t a1)
{
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v2 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "SPU rejected configuration. resending.", v4, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018D3304();
  }

  return (*(*a1 + 552))(a1, 0);
}

uint64_t sub_1005AC280(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D42E0 != -1)
  {
    sub_1018D33E8();
  }

  v6 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v2 + 5);
    v8 = *(v2 + 9);
    v9 = *(v2 + 13);
    v10 = *(v2 + 17);
    v11 = *(v2 + 21);
    v12 = *(v2 + 25);
    v13 = *(v2 + 53);
    v14 = *(v2 + 1);
    v15 = *(v2 + 2);
    v16 = *(v2 + 4);
    v17 = *(v2 + 73);
    v18 = *(v2 + 77);
    v19 = *(v2 + 81);
    v20 = *(v2 + 85);
    *buf = 134221312;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    *&buf[24] = v9;
    *v74 = 2048;
    *&v74[2] = v10;
    *&v74[10] = 2048;
    *&v74[12] = v11;
    *&v74[20] = 2048;
    *&v74[22] = v12;
    *&v74[30] = 2050;
    *v75 = v13;
    *&v75[8] = 1026;
    *&v75[10] = v14;
    *&v75[14] = 1026;
    *&v75[16] = v15;
    *&v75[20] = 1026;
    *&v75[22] = v16;
    v76 = 2050;
    v77 = v17;
    v78 = 2050;
    v79 = v18;
    v80 = 2050;
    v81 = v19;
    v82 = 2050;
    v83 = v20;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] bias.x,%f,.y,%f,.z,%f,biasEstVar.x,%f,.y,%f,.z,%f,quality,%{public}f,level,%{public}d,saturations,%{public}d,apAwake,%{public}d,temperature,%{public}f,minTemperatureSinceLastCal,%{public}f,maxTemperatureSinceLastCal,%{public}f,avgTemperatureSinceLastCal,%{public}f", buf, 0x82u);
  }

  v21 = sub_10000A100(121, 2);
  if (v21)
  {
    sub_1018D33FC(v2);
  }

  if (*(v2 + 1) < 4)
  {
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v34 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "[CompassCalibration] clearing persistent calibration", buf, 2u);
    }

    v35 = sub_10000A100(121, 2);
    if (v35)
    {
      sub_1018D35E0();
    }

    v37 = sub_1000206B4(v35, v36);
    v21 = sub_1004FA94C(v37);
  }

  else if (*(v2 + 53) > 0.28)
  {
    v89[0] = @"Bias";
    LODWORD(v23) = *(v2 + 5);
    v88[0] = [NSNumber numberWithFloat:v23];
    LODWORD(v24) = *(v2 + 9);
    v88[1] = [NSNumber numberWithFloat:v24];
    LODWORD(v25) = *(v2 + 13);
    v88[2] = [NSNumber numberWithFloat:v25];
    v90[0] = [NSArray arrayWithObjects:v88 count:3];
    v89[1] = @"Scale";
    LODWORD(v26) = *(v2 + 29);
    v87[0] = [NSNumber numberWithFloat:v26];
    LODWORD(v27) = *(v2 + 33);
    v87[1] = [NSNumber numberWithFloat:v27];
    LODWORD(v28) = *(v2 + 37);
    v87[2] = [NSNumber numberWithFloat:v28];
    v90[1] = [NSArray arrayWithObjects:v87 count:3];
    v89[2] = @"Time";
    v90[2] = [NSNumber numberWithDouble:Current];
    v29 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:3];
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v30 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "[CompassCalibration] persisting calibration,%@", buf, 0xCu);
    }

    v31 = sub_10000A100(121, 2);
    if (v31)
    {
      sub_1018D36CC();
    }

    v33 = sub_1000206B4(v31, v32);
    v21 = sub_1003046B4(v33);
  }

  if (*(v4 + 12844) == 1)
  {
    v67[0] = off_1024910A0;
    v38 = *(v4 + 352);
    *&v67[1] = Current;
    v67[3] = v38;
    *&v39 = *(v2 + 33);
    *(&v39 + 1) = *(v2 + 53);
    *&v40 = *(v2 + 61);
    *(&v40 + 1) = *(v2 + 41);
    *&v41 = *(v2 + 5);
    DWORD2(v41) = *(v2 + 13);
    HIDWORD(v41) = *(v2 + 29);
    v68 = v41;
    v69 = v39;
    v70 = v40;
    v71 = *(v2 + 49);
    v72 = *(v2 + 1);
    v42 = sub_10015ADF4(v21, v22);
    sub_1010CF5BC(v42, v67);
    sub_10152D354(buf);
    sub_1015555B4(buf);
    v86 |= 1u;
    v84 = Current;
    v43 = v85;
    v44 = *(v4 + 352);
    *(v85 + 80) |= 1u;
    *(v43 + 8) = v44;
    v45 = v85;
    LODWORD(v44) = *(v2 + 5);
    *(v85 + 80) |= 2u;
    *(v45 + 16) = v44;
    v46 = v85;
    LODWORD(v44) = *(v2 + 9);
    *(v85 + 80) |= 4u;
    *(v46 + 20) = v44;
    v47 = v85;
    LODWORD(v44) = *(v2 + 13);
    *(v85 + 80) |= 8u;
    *(v47 + 24) = v44;
    v48 = v85;
    LODWORD(v44) = *(v2 + 29);
    *(v85 + 80) |= 0x2000u;
    *(v48 + 64) = v44;
    v49 = v85;
    LODWORD(v44) = *(v2 + 33);
    *(v85 + 80) |= 0x4000u;
    *(v49 + 68) = v44;
    v50 = v85;
    LODWORD(v44) = *(v2 + 37);
    *(v85 + 80) |= 0x8000u;
    *(v50 + 72) = v44;
    v51 = v85;
    LODWORD(v44) = *(v2 + 53);
    *(v85 + 80) |= 0x1000u;
    *(v51 + 60) = v44;
    v52 = v85;
    LODWORD(v44) = *(v2 + 57);
    *(v85 + 80) |= 0x20u;
    *(v52 + 32) = v44;
    v53 = v85;
    LODWORD(v44) = *(v2 + 61);
    *(v85 + 80) |= 0x40u;
    *(v53 + 36) = v44;
    v54 = v85;
    LODWORD(v44) = *(v2 + 65);
    *(v85 + 80) |= 0x80u;
    *(v54 + 40) = v44;
    v55 = v85;
    LODWORD(v44) = *(v2 + 41);
    *(v85 + 80) |= 0x200u;
    *(v55 + 48) = v44;
    v56 = v85;
    LODWORD(v44) = *(v2 + 45);
    *(v85 + 80) |= 0x400u;
    *(v56 + 52) = v44;
    v57 = v85;
    LODWORD(v44) = *(v2 + 49);
    *(v85 + 80) |= 0x800u;
    *(v57 + 56) = v44;
    v58 = v85;
    v59 = *(v2 + 1);
    *(v85 + 80) |= 0x10u;
    *(v58 + 28) = v59;
    v60 = v85;
    LOBYTE(v59) = *(v2 + 3) != 0;
    *(v85 + 80) |= 0x20000u;
    *(v60 + 77) = v59;
    v61 = v85;
    LOBYTE(v59) = *(v2 + 4);
    *(v85 + 80) |= 0x10000u;
    *(v61 + 76) = v59;
    v62 = v85;
    LODWORD(v44) = *(v2 + 69);
    *(v85 + 80) |= 0x100u;
    *(v62 + 44) = v44;
    if (qword_102637F48 != -1)
    {
      sub_1018D24B0();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  sub_100ADEE28(v4 + 13040, v2);
  v63 = *(v2 + 32);
  v64 = *(v2 + 64);
  *&v74[16] = *(v2 + 48);
  *v75 = v64;
  *&v75[9] = *(v2 + 73);
  v65 = *(v2 + 16);
  *buf = *v2;
  *&buf[16] = v65;
  *v74 = v63;
  sub_100AB32B0(v4 + 12848, buf);
  return sub_100013B00(v4, 6, v2, 89);
}

void sub_1005AC994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_1005ACA00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 - 1) > 4)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = a1 + 2168 * (v4 - 1) + 1992;
    v6 = *(a1 + qword_101C7FCD0[(v4 - 1)]);
  }

  if (sub_1005ACCA4(v5, a2))
  {
    if (qword_1025D4350 != -1)
    {
      sub_1018D37CC();
    }

    v7 = qword_1025D4358;
    if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67109120;
      v15 = v4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "data type %u,received and reconstructed", &v14, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D37E0(v4);
    }

    v8 = *(a2 + 2);
    v9 = *(a1 + 12840);
    if (v9)
    {
      if (v9 + 1 != v8)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1018D38D8();
        }

        v10 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
        {
          v11 = *(a1 + 12840) + 1;
          v14 = 67109376;
          v15 = v11;
          v16 = 1024;
          v17 = v8;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Sensor Buffer packet drop detected. AP is expecting %u, but got %u", &v14, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D3900((a1 + 12840), v8);
        }
      }
    }

    else
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018D38D8();
      }

      v12 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109120;
        v15 = v8;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Receiving first Sensor Buffer packet since process start, seq %u", &v14, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D3A14(v8);
      }
    }

    *(a1 + 12840) = v8;
    if (v6)
    {
      v13 = sub_100040914(a1, *(a1 + 352));
      (*(v6 + 16))(v6, v4, *(a2 + 8), v5, *(v5 + 2164), v13);
    }
  }
}

BOOL sub_1005ACCA4(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 1);
  v4 = *(a2 + 1);
  if (*(a2 + 1) && *(a1 + 2160) + 1 != v4)
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v12 = (a1 + 2160);
    v13 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      v14 = *v12;
      v15 = *v5;
      v17 = 67240704;
      v18 = 25;
      v19 = 1026;
      v20 = v14;
      v21 = 1026;
      v22 = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Out of order segments,U::kType,%{public}u,fLastSegment,%{public}u,packet->fSegment,%{public}u", &v17, 0x14u);
    }

    v16 = sub_10000A100(121, 0);
    result = 0;
    if (v16)
    {
      sub_1018D3B0C();
      return 0;
    }
  }

  else
  {
    v7 = (a2 + 6);
    v6 = *(a2 + 6);
    if (v6 > 0xC8 || (v8 = 200 * v4, (200 * v4 + v6) >= 0x871))
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1710();
      }

      v10 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
      {
        v11 = *v7;
        v17 = 67240192;
        v18 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Bad size,packet->fSize,%{public}u", &v17, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D3C2C(v7);
      }

      result = 0;
      *(a1 + 2160) = -1;
    }

    else
    {
      memcpy((a1 + v8), (a2 + 18), v6);
      *(a1 + 2160) = *(a2 + 1);
      *(a1 + 2164) = v8 + *(a2 + 6);
      return *(a2 + 17) != 0;
    }
  }

  return result;
}

uint64_t sub_1005ACEC4(uint64_t a1, __int128 *a2)
{
  v6 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  return sub_100013B00(a1, 8, &v6, 40);
}

uint64_t sub_1005ACF18(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 12832);
  if (result)
  {
    return (*(result + 16))(result, *(a2 + 1));
  }

  return result;
}

uint64_t sub_1005ACF34(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 12680);
  if (result)
  {
    return (*(result + 16))(result, *(a2 + 1));
  }

  return result;
}

uint64_t sub_1005ACF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040914(a1, *(a1 + 352) + (*(a2 + 12) - *(a2 + 20)) / 1000000.0);
  v7 = 0;
  *v6 = *a2;
  *&v6[12] = *(a2 + 12);
  v8 = v4;
  return sub_100013B00(a1, 21, v6, 40);
}

uint64_t sub_1005ACFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040914(a1, *(a1 + 352) + (*(a2 + 12) - *(a2 + 20)) / 1000000.0);
  v7 = 0;
  *v6 = *a2;
  *&v6[12] = *(a2 + 12);
  v8 = v4;
  return sub_100013B00(a1, 13, v6, 40);
}

void sub_1005AD068(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011660(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005AD0E4;
  v4[3] = &unk_102449A78;
  v4[4] = a1;
  sub_100042800(v3, v4);
}

void sub_1005AD0E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((sub_100023B30(a1, a2) & 0x10) != 0)
  {
    v3[0] = 0;
    v4 = 0xBFF0000000000000;
    *__p = 0u;
    v6 = 0u;
    v7 = -COERCE_DOUBLE(0x8000000080000000);
    v8 = -1082130432;
    v9 = -1;
    v10 = 0;
    sub_100AB2FA8(v2 + 12848, v3);
    (*(*v2 + 464))(v2);
    if (SBYTE7(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005AD19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AD1B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011660(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005AD234;
  v4[3] = &unk_102449A78;
  v4[4] = a1;
  sub_100042800(v3, v4);
}

void sub_1005AD234(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((sub_100023B30(a1, a2) & 0x80000) != 0)
  {
    v3[0] = 0;
    v4 = 0xBFF0000000000000;
    __p = 0;
    v6 = 0u;
    v7 = -COERCE_DOUBLE(0x8000000080000000);
    v8 = -1;
    sub_100AB321C(v2 + 12848, v3);
    (*(*v2 + 472))(v2);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1005AD2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AD2FC()
{
  if (qword_1025D4200 != -1)
  {
    sub_1018D3D28();
  }

  v0 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "Sending fallModel Command.", v1, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D3D3C();
  }
}

void sub_1005AD390(uint64_t a1, __int128 *a2)
{
  v4 = a2[3];
  v90 = a2[2];
  v91 = v4;
  *v92 = a2[4];
  *&v92[12] = *(a2 + 76);
  v5 = a2[1];
  v88 = *a2;
  v87 = 32;
  v89 = v5;
  if (qword_1025D4330 != -1)
  {
    sub_10015659C();
  }

  v6 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 4);
    v12 = *(a2 + 5);
    v13 = *(a2 + 6);
    v14 = *(a2 + 10);
    v15 = *(a2 + 11);
    v16 = *(a2 + 12);
    v17 = *(a2 + 13);
    v18 = *(a2 + 14);
    v19 = *(a2 + 15);
    v20 = *(a2 + 16);
    v21 = *(a2 + 17);
    v22 = *(a2 + 18);
    v23 = *(a2 + 19);
    v24 = *(a2 + 20);
    v25 = *(a2 + 84);
    v26 = *(a2 + 85);
    v27 = *(a2 + 86);
    v28 = *(a2 + 87);
    v29 = *(a2 + 88);
    v30 = *(a2 + 89);
    v31 = *(a2 + 90);
    v32[0] = 68295683;
    v32[1] = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2049;
    v36 = v7;
    v37 = 2049;
    v38 = v8;
    v39 = 2049;
    v40 = v9;
    v41 = 2049;
    v42 = v10;
    v43 = 2049;
    v44 = v9;
    v45 = 2049;
    v46 = v11;
    v47 = 2049;
    v48 = v12;
    v49 = 2049;
    v50 = v13;
    v51 = 1025;
    v52 = v14;
    v53 = 1025;
    v54 = v15;
    v55 = 2049;
    v56 = v16;
    v57 = 2049;
    v58 = v17;
    v59 = 2049;
    v60 = v18;
    v61 = 2049;
    v62 = v19;
    v63 = 2049;
    v64 = v20;
    v65 = 1025;
    v66 = v21;
    v67 = 1025;
    v68 = v22;
    v69 = 1025;
    v70 = v23;
    v71 = 1025;
    v72 = v24;
    v73 = 1025;
    v74 = v25;
    v75 = 1025;
    v76 = v26;
    v77 = 1025;
    v78 = v27;
    v79 = 1025;
    v80 = v28;
    v81 = 1025;
    v82 = v29;
    v83 = 1025;
    v84 = v30;
    v85 = 1025;
    v86 = v31;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Sending fallThresholds Command, fImpactMaxAccelNormAlertThreshold:%{private}f, fImpactMaxAccelNormLoggingStatsThreshold:%{private}f, fImpactMaxAccelNormLoggingHeartRateThreshold:%{private}f, fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold:%{private}f, fImpactMaxAccelNormLoggingHeartRateThreshold:%{private}f, fTripFallPosteriorRatioDetectionThreshold:%{private}f, fSlipFallPosteriorRatioDetectionThreshold:%{private}f, fOtherFallPosteriorRatioDetectionThreshold:%{private}f, fTotalLongLieThreshold:%{private}d, fConsecutiveLongLieThreshold:%{private}d, fAlertGatingMotionThreshold:%{private}f, fCyclingImpactGravityVarianceThreshold:%{private}f, fCyclingImpactCrownVarianceThreshold:%{private}f, fCyclingImpactMaxAbsYThreshold:%{private}f, fCyclingDistanceTraveledPostImpactThreshold:%{private}f, fCyclingEpochsDetectedPostImpactThreshold:%{private}d, fOtherWorkoutQuiescenceThresholdLow:%{private}d, fOtherWorkoutQuiescenceThresholdHigh:%{private}d, fOtherWorkoutConsecutiveLongLieThreshold:%{private}d, fOtherWorkoutShouldCancelAlertOnStepsThreshold:%{private}d, fOtherWorkoutShouldCancelAlertOnStandThreshold:%{private}d, fOtherWorkoutShouldCancelAlertOnActiveThreshold:%{private}d, fRefereeOperatingModeOverride:%{private}d, fAllDayStateMachineOperatingModeOverride:%{private}d, fCyclingStateMachineEnabledOverride:%{private}d, fAllDayStateMachineEnabledOverride:%{private}d}", v32, 0xE2u);
  }

  sub_1005AFD60(a1 + 192, &v87, 0);
}

void sub_1005AD5FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100011660(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005AD680;
  v5[3] = &unk_102460CC8;
  v5[4] = a1;
  v6 = v2;
  sub_100042800(v4, v5);
}

uint64_t sub_1005AD680(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_1025D42F0 != -1)
  {
    sub_1018D3E20();
  }

  v3 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Configuration sent, shouldGateDynamicBiasOnChargerStatus:%{private}d}", v6, 0x18u);
  }

  v2[267] = *(a1 + 40);
  return (*(*v2 + 552))(v2, 0);
}

void sub_1005AD7A4(uint64_t a1, void *a2, void *a3)
{
  LOBYTE(v6) = 46;
  BYTE1(v6) = a2;
  BYTE2(v6) = a3;
  sub_1005AFFB0(a1 + 192, &v6, 0);
  if (qword_1025D42E0 != -1)
  {
    sub_1018D239C();
  }

  v5 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v8 = a2;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Applying override baseband usage flag, enabled, %d, value, %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D3E34(a2, a3);
  }
}

void sub_1005AD8B4(uint64_t a1, char a2, char a3, float a4)
{
  v4[0] = 71;
  v4[1] = a2;
  v5 = a4;
  v6 = a3;
  sub_1005B0184(a1 + 192, v4, 0);
}

void sub_1005AD8F4(uint64_t a1, char a2)
{
  LOBYTE(v2) = 72;
  HIBYTE(v2) = a2;
  sub_1005B0368(a1 + 192, &v2, 0);
}

float sub_1005AD92C(uint64_t a1, char a2, char a3, double a4)
{
  v6[0] = 74;
  v6[1] = a2;
  v4 = a4;
  v7 = v4;
  v8 = a3;
  sub_1005B053C(a1 + 192, v6, 0);
  return result;
}

void sub_1005AD970(uint64_t a1, char a2, char a3, float a4)
{
  v4[0] = 81;
  v4[1] = a2;
  v5 = a4;
  v6 = a3;
  sub_1005B0720(a1 + 192, v4, 0);
}

void sub_1005AD9B0(uint64_t a1, uint64_t a2, float a3)
{
  if (qword_1025D45D0 != -1)
  {
    sub_1018D3F48();
  }

  v6 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67240448;
    HIDWORD(v14) = a2;
    v15 = 2050;
    v16 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[IMUCal] Triggering stat collection: useSemiStatic,%{public}u,durationUntilMetrics,%{public}f", &v14, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D3F5C(a2, v7, v8, v9, v10, v11, v12, v13, a3);
  }

  LOBYTE(v14) = 83;
  BYTE1(v14) = a2;
  *(&v14 + 2) = a3;
  sub_1005B0904(a1 + 192, &v14, 0);
}

void sub_1005ADAD0(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D4780 != -1)
  {
    sub_1018D4084();
  }

  v6 = qword_1025D4788;
  if (os_log_type_enabled(qword_1025D4788, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240448;
    v7[1] = a2;
    v8 = 1026;
    v9 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "enableGNSSMotion,%{public}d,decimationRate,%{public}u", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4098(a2, a3);
  }

  LOBYTE(v7[0]) = 84;
  BYTE1(v7[0]) = a2;
  BYTE2(v7[0]) = a3;
  sub_1005B0AE8(a1 + 192, v7, 0);
}

void sub_1005ADBE4(uint64_t a1, float a2)
{
  if (qword_1025D45B0 != -1)
  {
    sub_1018D41AC();
  }

  v4 = qword_1025D45B8;
  if (os_log_type_enabled(qword_1025D45B8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 134349056;
    *&v13[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "minAccelThreshold,%{public}.2f", v13, 0xCu);
  }

  v5 = sub_10000A100(121, 2);
  if (v5)
  {
    sub_1018D41C0(v5, v6, v7, v8, v9, v10, v11, v12, a2);
  }

  v13[0] = 85;
  *&v13[1] = a2;
  sub_1005B0CCC(a1 + 192, v13, 0);
}

void sub_1005ADCE4(uint64_t a1, void *a2)
{
  v2[0] = *a2;
  *(v2 + 6) = *(a2 + 6);
  sub_1005B0EB0(a1 + 192, v2, 0);
}

id sub_1005ADD20(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v3 = [*(a1 + 168) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021850C;
  v5[3] = &unk_102460E48;
  v5[4] = a1;
  return [v3 async:v5];
}

void sub_1005ADDB0(uint64_t a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 168) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018D42D4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLSPU::onBLSData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018D42E8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSPU::onBLSData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (!*a2)
  {
    sub_100726820(a4 + 13728, *a3);
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005ADF9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12844) == 1)
  {
    sub_10152D354(&v26);
    sub_101552EE4(&v26);
    Current = CFAbsoluteTimeGetCurrent();
    v44 |= 1u;
    v42 = Current;
    v5 = v43;
    v6 = *(a1 + 352);
    *(v43 + 44) |= 4u;
    *(v5 + 24) = v6;
    v7 = v43;
    v8 = *(a2 + 1);
    *(v43 + 44) |= 2u;
    *(v7 + 16) = v8;
    v9 = v43;
    v10 = *(a2 + 9);
    *(v43 + 44) |= 1u;
    *(v9 + 8) = v10;
    v11 = v43;
    v12 = *(a2 + 17);
    *(v43 + 44) |= 8u;
    *(v11 + 32) = v12;
    v13 = v43;
    LOBYTE(v12) = *(a2 + 25);
    *(v43 + 44) |= 0x10u;
    *(v13 + 40) = v12;
    v14 = v43;
    LOBYTE(v12) = *(a2 + 26);
    *(v43 + 44) |= 0x40u;
    *(v14 + 42) = v12;
    v15 = v43;
    LOBYTE(v12) = *(a2 + 27);
    *(v43 + 44) |= 0x20u;
    *(v15 + 41) = v12;
    if (qword_102637F48 != -1)
    {
      sub_1018D24B0();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, &v26);
    }

    sub_101532FA8(&v26);
  }

  if (qword_1025D42E0 != -1)
  {
    sub_1018D239C();
  }

  v16 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 352);
    v18 = *(a2 + 1);
    v19 = *(a2 + 9);
    v20 = *(a2 + 17);
    v21 = *(a2 + 25);
    v22 = *(a2 + 27);
    v23 = *(a2 + 26);
    v24 = *(a2 + 28);
    v26 = 134350848;
    v27 = v17;
    v28 = 2048;
    v29 = v18;
    v30 = 2048;
    v31 = v19;
    v32 = 2048;
    v33 = v20;
    v34 = 1026;
    v35 = v21;
    v36 = 1026;
    v37 = v22;
    v38 = 1026;
    v39 = v23;
    v40 = 1026;
    v41 = v24;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "MagnetometerReset,timestamp,%{public}f,timeSinceLastRemagTrigger,%llu,timeSinceLastRemag,%llu,triggerCount,%llu,exitingSaturation,%{public}d,extendedSaturation,%{public}d,shiftInSaturation,%{public}d,fSuccessFlag,%{public}d", &v26, 0x42u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4310();
  }

  return sub_10073D6CC(a1 + 13704, a2, *(a1 + 352));
}

uint64_t sub_1005AE27C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = *(v3 + 352);
  *v20 = v5;
  v6 = sub_100040914(v3, v5);
  *&v20[1] = v6;
  v7 = *(v2 + 1);
  v21 = *(v2 + 1);
  v8 = *(v2 + 2);
  v22 = *(v2 + 2);
  v9 = *(v2 + 3);
  v23 = v9;
  if (*(v4 + 12844) == 1)
  {
    sub_10152D354(buf);
    sub_101553634(buf);
    v46 |= 1u;
    v45 = v6;
    v10 = v44;
    *(v44 + 28) |= 1u;
    *(v10 + 8) = v5;
    v11 = v44;
    v12 = *(v2 + 1);
    *(v44 + 28) |= 4u;
    *(v11 + 20) = v12;
    v13 = v44;
    LOBYTE(v12) = *(v2 + 2) != 0;
    *(v44 + 28) |= 8u;
    *(v13 + 24) = v12;
    v14 = v44;
    v15 = *(v2 + 3);
    *(v44 + 28) |= 2u;
    *(v14 + 16) = v15;
    if (qword_102637F48 != -1)
    {
      sub_1018D24B0();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  if (qword_1025D42E0 != -1)
  {
    sub_1018D239C();
  }

  v16 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v35 = v5;
    v36 = 2048;
    v37 = v6;
    v38 = 1024;
    v39 = v7;
    v40 = 1026;
    v41 = v8;
    v42 = 1024;
    v43 = v9;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "BasebandCompassCoex,timestamp,%f,startTime,%f,sub_type,%d,inCoex,%{public}d,reserved,0x%02x", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v24 = 134219008;
    v25 = v5;
    v26 = 2048;
    v27 = v6;
    v28 = 1024;
    v29 = v7;
    v30 = 1026;
    v31 = v8;
    v32 = 1024;
    v33 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 0, "BasebandCompassCoex,timestamp,%f,startTime,%f,sub_type,%d,inCoex,%{public}d,reserved,0x%02x", &v24, 40);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLSPU::visitBasebandCompassCoex(const CMMotionCoprocessorReply::BasebandCompassCoex *)", "%s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  return sub_100013B00(v4, 36, v20, 232);
}

void sub_1005AE5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AE5DC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D42E0 != -1)
  {
    sub_1018D33E8();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a2 + 4);
    v9[0] = 67240704;
    v9[1] = v5;
    v10 = 1026;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "BasebandCompassCoexMetrics,countOfTimesEnteringHeatup,%{public}d,hasActiveMagnetometerClientDuringHeatUp,%{public}d,durationOfNonDefaultState,%llu", v9, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D447C();
  }

  return sub_10073D8F4(a1 + 13704, a2, *(a1 + 352));
}

uint64_t sub_1005AE6FC(uint64_t a1, __int128 *a2)
{
  *&v8[16] = 0;
  v6 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[1];
  v7 = *a2;
  *v8 = v4;
  *&v8[15] = *(a2 + 31);
  return sub_100013B00(a1, 40, &v6, 48);
}

void sub_1005AE768(uint64_t a1, uint64_t a2)
{
  if (qword_1025D41E0 != -1)
  {
    sub_1018D4598();
  }

  v4 = qword_1025D41E8;
  if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 352);
    v6 = *(a2 + 9);
    v7 = *(a2 + 10);
    v8 = *(a2 + 11);
    v9 = *(a2 + 15);
    v10 = *(a2 + 19);
    v11 = *(a2 + 23);
    v12 = *(a2 + 27);
    v13 = *(a2 + 31);
    v14 = *(a2 + 35);
    v15 = *(a2 + 39);
    v16 = *(a2 + 43);
    v17 = *(a2 + 47);
    v18 = *(a2 + 51);
    v19 = *(a2 + 55);
    v20 = *(a2 + 59);
    v21 = *(a2 + 63);
    v22 = *(a2 + 67);
    v23 = *(a2 + 71);
    v24 = *(a2 + 75);
    v25 = *(a2 + 79);
    v26 = 134354176;
    v27 = v5;
    v28 = 1026;
    v29 = v6;
    v30 = 1026;
    v31 = v7;
    v32 = 2050;
    v33 = v8;
    v34 = 2050;
    v35 = v9;
    v36 = 2050;
    v37 = v10;
    v38 = 2050;
    v39 = v11;
    v40 = 2050;
    v41 = v12;
    v42 = 2050;
    v43 = v13;
    v44 = 2050;
    v45 = v14;
    v46 = 2050;
    v47 = v15;
    v48 = 2050;
    v49 = v16;
    v50 = 2050;
    v51 = v17;
    v52 = 2050;
    v53 = v18;
    v54 = 2050;
    v55 = v19;
    v56 = 2050;
    v57 = v20;
    v58 = 2050;
    v59 = v21;
    v60 = 2050;
    v61 = v22;
    v62 = 2050;
    v63 = v23;
    v64 = 2050;
    v65 = v24;
    v66 = 2050;
    v67 = v25;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "ViewObstructedMLFeatures timestamp,%{public}f,currentState,%{public}u,priorState,%{public}u,absMeanGravX,%{public}f,meanGravY,%{public}f,meanGravZ,%{public}f,AccelFFTBin1,%{public}f,AccelFFTBin2,%{public}f,AccelFFTBin3,%{public}f,AccelFFTBin4,%{public}f,AccelFFTBin5,%{public}f,AccelFFTBin6,%{public}f,PressureFFTBin1,%{public}f,PressureFFTBin2,%{public}f,PressureFFTBin3,%{public}f,PressureFFTBin4,%{public}f,PressureFFTBin5,%{public}f,PressureFFTBin6,%{public}fAccelFFTBinDotPressureFFTBin,%{public}f,MedianPocketProb,%{public}f,MedianLux,%{public}f", &v26, 0xCCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4798();
  }
}

uint64_t sub_1005AE99C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018D3D28();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 352);
    v6 = *(a2 + 12);
    *v8 = 134349312;
    *&v8[4] = v5;
    *&v8[12] = 2048;
    *&v8[14] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "ALS,timestamp,%{public}f,value,%f", v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D49E0();
  }

  *v8 = sub_100040914(a1, *(a1 + 352));
  *&v8[8] = *a2;
  return sub_100013B00(a1, 41, v8, 24);
}

uint64_t sub_1005AEACC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5[0] = sub_100040914(a1, *(a1 + 352));
  v5[1] = *a2;
  LOWORD(v6) = *(a2 + 8);
  return sub_100013B00(a1, 43, v5, 24);
}

uint64_t sub_1005AEB34(uint64_t a1, __int128 *a2)
{
  *&v9[16] = 0;
  v6 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  *v9 = a2[2];
  *&v9[15] = *(a2 + 47);
  return sub_100013B00(a1, 44, &v6, 64);
}

uint64_t sub_1005AEBA8(uint64_t a1, void *a2)
{
  v5[0] = sub_100040914(a1, *(a1 + 352));
  v5[1] = *a2;
  return sub_100013B00(a1, 45, v5, 16);
}

uint64_t sub_1005AEC04(uint64_t a1, void *a2)
{
  v5[0] = sub_100040914(a1, *(a1 + 352));
  v5[1] = *a2;
  return sub_100013B00(a1, 46, v5, 16);
}

void sub_1005AEC78(uint64_t a1, uint64_t a2)
{
  v3 = sub_100DA71C8(a1, a2);

  sub_100DA7238(v3, a2);
}

void sub_1005AECB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100DA71C8(a1, a2);

  sub_100DA7238(v3, a2);
}

void sub_1005AED18(uint64_t a1, uint64_t a2)
{
  if (qword_1025D42B0 != -1)
  {
    sub_1018D4AF8();
  }

  v3 = qword_1025D42B8;
  if (os_log_type_enabled(qword_1025D42B8, OS_LOG_TYPE_DEFAULT))
  {
    _H0 = fabsl(*(a2 + 4));
    __asm { FCVT            S0, H0; float }

    _H1 = fabsl(*(a2 + 2));
    __asm { FCVT            S8, H1 }

    v12 = (atan2f(_S0, _S8) * 57.296);
    _H0 = fabsl(*(a2 + 6));
    __asm { FCVT            S0, H0; float }

    v15 = atan2f(_S0, _S8);
    _H1 = *(a2 + 8);
    _H2 = *(a2 + 10);
    __asm
    {
      FCVT            D1, H1
      FCVT            D2, H2
    }

    _H3 = *(a2 + 12);
    __asm { FCVT            D3, H3 }

    _H4 = *(a2 + 14);
    __asm { FCVT            D4, H4 }

    _H5 = *(a2 + 16);
    __asm { FCVT            D5, H5 }

    _H6 = *(a2 + 18);
    __asm { FCVT            D6, H6 }

    v28 = *(a2 + 1);
    v36 = 134351104;
    v37 = v12;
    v38 = 2050;
    v39 = (v15 * 57.296);
    v40 = 2050;
    v41 = _D1;
    v42 = 2050;
    v43 = _D2;
    v44 = 2050;
    v45 = _D3;
    v46 = 2050;
    v47 = _D4;
    v48 = 2050;
    v49 = _D5;
    v50 = 2050;
    v51 = _D6;
    v52 = 1026;
    v53 = v28;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[MagicMount][DebugLogging]rollAngle,%{public}f,landscapeAngle,%{public}f,rotationRate,(%{public}f,%{public}f,%{public}f),userAccel,(%{public}f,%{public}f,%{public}f),isStationary,%{public}u", &v36, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4B0C(a2, v29, v30, v31, v32, v33, v34, v35);
  }
}

uint64_t sub_1005AEEC8(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a1 + 352);
  v5[1] = sub_100040914(a1, v5[0]);
  v6 = *(a2 + 1);
  return sub_100013B00(a1, 50, v5, 232);
}

id sub_1005AEF3C(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  v9[0] = a2[2];
  *(v9 + 12) = *(a2 + 44);
  v4 = [*(a1 + 168) silo];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005AEFD4;
  v6[3] = &unk_102461BF0;
  v6[4] = a1;
  return [v4 async:v6];
}

id sub_1005AEFEC(uint64_t a1, __int128 *a2)
{
  v2 = a1 - 152;
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  v9[0] = a2[2];
  *(v9 + 12) = *(a2 + 44);
  v4 = [*(a1 + 16) silo];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005AEFD4;
  v6[3] = &unk_102461BF0;
  v6[4] = v2;
  return [v4 async:v6];
}

uint64_t sub_1005AF084(uint64_t a1, void *a2)
{
  *(&v6 + 1) = 0;
  v5 = sub_100040914(a1, *(a1 + 352));
  *&v6 = *a2;
  *(&v6 + 5) = *(a2 + 5);
  return sub_100013B00(a1, 52, &v5, 24);
}

uint64_t sub_1005AF0EC(uint64_t a1, __int128 *a2)
{
  *&v12[24] = 0;
  v8 = sub_100040914(a1, *(a1 + 352));
  v4 = *a2;
  v5 = a2[2];
  v6 = a2[3];
  v10 = a2[1];
  v11 = v5;
  *v12 = v6;
  *&v12[10] = *(a2 + 58);
  v9 = v4;
  return sub_100013B00(a1, 53, &v8, 88);
}

uint64_t sub_1005AF190(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

double sub_1005AF480(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1005AF4AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1005AF580(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1005AF5D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AF6B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AF7A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1005AF7EC(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100C4CA7C(result, a2);

    operator delete();
  }

  return result;
}

uint64_t sub_1005AF8A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102461FF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1005AF8E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AF930(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1005AF9B0(uint64_t a1, void *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x4012000000;
    v8[3] = sub_100047458;
    v8[4] = nullsub_41;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 5) = *(a2 + 5);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005AFAFC;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005AFAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005AFAFC(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 18;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 13);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005AFB7C(uint64_t a1, _OWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x5012000000;
    v8[3] = sub_1005AFCC8;
    v8[4] = nullsub_197;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 13) = *(a2 + 13);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005AFCE0;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005AFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1005AFCC8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 48) = result;
  return result;
}

void sub_1005AFCE0(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 37;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 29);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005AFD60(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x9012000000;
    v10[3] = sub_1005AFF08;
    v10[4] = nullsub_198;
    v10[5] = &unk_10238AE8B;
    v4 = a2[3];
    v13 = a2[2];
    v14 = v4;
    v15[0] = a2[4];
    *(v15 + 13) = *(a2 + 77);
    v5 = a2[1];
    v11 = *a2;
    v12 = v5;
    if (aBlock)
    {
      v6 = _Block_copy(aBlock);
    }

    else
    {
      v6 = 0;
    }

    v8 = *a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005AFF30;
    v9[3] = &unk_102462080;
    v9[5] = v10;
    v9[6] = a1;
    v9[4] = v6;
    dispatch_async(v8, v9);
    _Block_object_dispose(v10, 8);
  }

  else if (aBlock)
  {
    v7 = *(aBlock + 2);

    v7(aBlock, 0);
  }
}

void sub_1005AFEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1005AFF08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  result = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  *(a1 + 80) = result;
  return result;
}

void sub_1005AFF30(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 32;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 93);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005AFFB0(uint64_t a1, int *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B00F4;
    v8[4] = nullsub_199;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0104;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B00DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005B0104(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 46;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 4);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0184(uint64_t a1, _DWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B02D0;
    v8[4] = nullsub_200;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 3) = *(a2 + 3);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B02E8;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B02B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B02D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

void sub_1005B02E8(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 71;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 7);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0368(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B04AC;
    v8[4] = nullsub_201;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B04BC;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005B04BC(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 72;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B053C(uint64_t a1, _DWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0688;
    v8[4] = nullsub_202;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 3) = *(a2 + 3);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B06A0;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0688(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

void sub_1005B06A0(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 74;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 7);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0720(uint64_t a1, _DWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B086C;
    v8[4] = nullsub_203;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 3) = *(a2 + 3);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0884;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B086C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0884(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 81;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 7);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0904(uint64_t a1, int *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0A50;
    v8[4] = nullsub_204;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    v10 = *(a2 + 2);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0A68;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0A50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0A68(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 83;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 6);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0AE8(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0C34;
    v8[4] = nullsub_205;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    v10 = *(a2 + 2);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0C4C;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0C34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 50) = *(a2 + 50);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0C4C(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 84;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 3);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0CCC(uint64_t a1, int *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0E18;
    v8[4] = nullsub_206;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    v10 = *(a2 + 4);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0E30;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0E18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0E30(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 85;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 5);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0EB0(uint64_t a1, void *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x4012000000;
    v8[3] = sub_1005B0FFC;
    v8[4] = nullsub_207;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 6) = *(a2 + 6);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005B1014;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0FFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 54) = *(a2 + 54);
  *(result + 48) = v2;
  return result;
}

void sub_1005B1014(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 86;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 14);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B1784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B17C4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    v2 = a2[1];
    v3 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    CLConnection::sendMessage();
    if (v3)
    {
      sub_100008080(v3);
    }
  }
}

void sub_1005B181C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B1B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005B1FE8(uint64_t a1)
{
  result = [*(a1 + 32) poweredOn];
  if (result && *(a1 + 49) == 1)
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v3 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 56) clientname];
      v5[0] = 68289282;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client got scanner powered on status, starting BTFindingScan, client:%{public, location:escape_only}@}", v5, 0x1Cu);
    }

    result = [*(a1 + 32) startBTFindingScan];
    *(a1 + 49) = 0;
  }

  return result;
}

void sub_1005B2158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B21E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B22F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B262C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B26BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B27B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B28BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B32D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B33E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}